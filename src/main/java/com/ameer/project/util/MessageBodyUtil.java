package com.ameer.project.util;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.env.Environment;
import org.springframework.core.io.Resource;
import org.springframework.core.io.ResourceLoader;
import org.springframework.stereotype.Repository;

import com.ameer.project.bean.MailBean;

@Repository
@PropertySource(value = { "classpath:project.properties" })
public class MessageBodyUtil {

	@Autowired
	private Environment environment;

	@Autowired
	private ResourceLoader resourceLoader;

	public String getMessage(MailBean mailBean) throws IOException {
		StringBuilder result = null;
		Resource resource = null;
		result = new StringBuilder();
		resource = resourceLoader.getResource("classpath:" + environment.getRequiredProperty("mailBodyFile"));
		InputStream is = resource.getInputStream();
		BufferedReader br = new BufferedReader(new InputStreamReader(is));

		String line = null;
		while ((line = br.readLine()) != null) {
			result.append(line);
			result.append("\n");
		}
		String body = result.toString().replace("{fromAddress}", mailBean.getEmail());
		body = body.replace("{userName}", mailBean.getName());
		body = body.replace("{phone}", mailBean.getPhone());
		body = body.replace("{messageBody}", mailBean.getMessage());
		return body;
	}
}
