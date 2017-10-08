package com.ameer.project.controller;

import java.util.ArrayList;
import java.util.List;

import javax.validation.Valid;

import org.json.JSONArray;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.ameer.project.bean.JsonResponse;
import com.ameer.project.bean.MailBean;
import com.ameer.project.constants.ProjectConstants;
import com.ameer.project.util.MailUtil;

@Controller
public class ProjectController {

	@Autowired
	private MailUtil mailUtil;

	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public ModelAndView getData(@ModelAttribute("mailBean") MailBean mailBean) {
		ModelAndView model = new ModelAndView("home");
		return model;
	}

	@RequestMapping(value = "/submitForm", method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody JsonResponse submitRequest(@Valid @RequestBody MailBean mailBean, BindingResult result) {
		JsonResponse response = new JsonResponse();
		try {
			if (result.hasErrors()) {
				response.setStatus(ProjectConstants.FAIL);
				List<String> errors = new ArrayList<String>();
				for (Object object : result.getAllErrors()) {
					if (object instanceof FieldError) {
						FieldError fieldError = (FieldError) object;
						errors.add(fieldError.getDefaultMessage());
					}
				}
				String json = (new JSONArray(errors)).toString();
				response.setResult(json);
			} else {
				mailUtil.sendEmail(mailBean);
				response.setStatus(ProjectConstants.SUCCESS);
				response.setResult(ProjectConstants.MAIL_SEND_SUCCESS);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return response;
	}
}
