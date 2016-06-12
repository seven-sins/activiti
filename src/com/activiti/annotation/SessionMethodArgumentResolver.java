package com.activiti.annotation;

import org.apache.commons.lang3.StringUtils;
import org.springframework.core.MethodParameter;
import org.springframework.web.bind.support.WebDataBinderFactory;
import org.springframework.web.context.request.NativeWebRequest;
import org.springframework.web.context.request.RequestAttributes;
import org.springframework.web.method.support.HandlerMethodArgumentResolver;
import org.springframework.web.method.support.ModelAndViewContainer;

public class SessionMethodArgumentResolver implements
		HandlerMethodArgumentResolver {

	@Override
	public boolean supportsParameter(MethodParameter parameter) {
		// 让方法和参数，两种target通过
		if (parameter.hasParameterAnnotation(Session.class))
			return true;
		else if (parameter.getMethodAnnotation(Session.class) != null)
			return true;
		return false;
	}

	@Override
	public Object resolveArgument(MethodParameter parameter,
			ModelAndViewContainer mavContainer, NativeWebRequest webRequest,
			WebDataBinderFactory binderFactory) throws Exception {
		String annoVal = null;

		if (parameter.getParameterAnnotation(Session.class) != null) {
			annoVal = parameter.getParameterAnnotation(Session.class).value();
		} else if (parameter.getMethodAnnotation(Session.class) != null) {
			annoVal = parameter.getMethodAnnotation(Session.class) != null ? StringUtils
					.defaultString(parameter.getMethodAnnotation(Session.class)
							.value()) : StringUtils.EMPTY;
		}

		if (webRequest.getAttribute(annoVal, RequestAttributes.SCOPE_SESSION) != null) {
			return webRequest.getAttribute(annoVal,
					RequestAttributes.SCOPE_SESSION);
		} else
			return null;
	}
}
