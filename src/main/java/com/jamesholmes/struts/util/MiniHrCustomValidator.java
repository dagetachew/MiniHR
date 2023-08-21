//package com.jamesholmes.struts.util;
//
//import javax.servlet.http.HttpServletRequest;
//
//import org.apache.commons.validator.Field;
//import org.apache.commons.validator.Validator;
//import org.apache.commons.validator.ValidatorAction;
//import org.apache.commons.validator.util.ValidatorUtils;
//import org.apache.struts.action.ActionMessages;
//import org.apache.struts.validator.Resources;
//
//public class MiniHrCustomValidator {
//
////    methodParams="java.lang.Object,
////            org.apache.commons.validator.ValidatorAction,
////            org.apache.commons.validator.Field,
////            org.apache.struts.action.ActionMessages,
////            org.apache.commons.validator.Validator,
////            javax.servlet.http.HttpServletRequest"
//
//	public static boolean validateUserName(Object bean, ValidatorAction va,
//	        Field field, ActionMessages errors, Validator validator,
//	        HttpServletRequest request) {
//		String regex = "^[a-zA-Z0-9\\s]+$";
//		String value = ValidatorUtils.getValueAsString(bean, field.getProperty());
//		if(value != null && value.length() > 0) {
//			System.out.println("Regex value ... "+regex.matches(value));
//			if(!regex.matches(value)) {
//	            errors.add(field.getKey(),
//	                    Resources.getActionMessage(validator, request, va, field));				
//				return false;
//			}
//		}
//		return true;
//		
//	}
//}
