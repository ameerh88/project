package com.ameer.project.util;

import java.io.IOException;

import javax.ws.rs.core.MediaType;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.env.Environment;
import org.springframework.stereotype.Repository;

import com.ameer.project.bean.MailBean;
import com.sun.jersey.api.client.Client;
import com.sun.jersey.api.client.ClientResponse;
import com.sun.jersey.api.client.WebResource;
import com.sun.jersey.api.client.filter.HTTPBasicAuthFilter;
import com.sun.jersey.core.util.MultivaluedMapImpl;

@Repository
@PropertySource(value = { "classpath:project.properties" })
public class MailUtil {

	@Autowired
	private Environment environment;

	@Autowired
	private MessageBodyUtil messageUtil;

	private String apiKey;
	private String apiBaseURL;
	private String apiUrlMesg;
	private String toMail;
	private String subject;
	private String fromMail;
	private String message;
	private String name;
	private ClientResponse response = null;

	public void sendEmail(MailBean bean) throws IOException {
		response = sendEmailWindows(bean);
		if(response!=null){
			System.out.println("Successfully sent!");
		}
	}

	public ClientResponse sendEmailWindows(MailBean bean) throws IOException {

		apiKey = environment.getRequiredProperty("apiKey");
		apiBaseURL = environment.getRequiredProperty("apiBaseURL");
		apiUrlMesg = environment.getRequiredProperty("apiUrlMesg");
		toMail = environment.getRequiredProperty("toMail");
		subject = environment.getRequiredProperty("subjectData");
		fromMail = bean.getEmail();
		message = messageUtil.getMessage(bean);
		name = bean.getName();

		Client client = Client.create();
		client.addFilter(new HTTPBasicAuthFilter("api", apiKey));
		WebResource webResource = client.resource(apiBaseURL + "/" + apiUrlMesg);
		MultivaluedMapImpl formData = new MultivaluedMapImpl();
		formData.add("from", name + "<" + fromMail + ">");
		formData.add("to", toMail);
		formData.add("subject", subject);
		formData.add("text", message);
		return webResource.type(MediaType.APPLICATION_FORM_URLENCODED).post(ClientResponse.class, formData);
	}

}
