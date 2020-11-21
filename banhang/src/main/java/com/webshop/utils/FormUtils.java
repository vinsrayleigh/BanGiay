package com.webshop.utils;

import java.lang.reflect.InvocationTargetException;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.beanutils.BeanUtils;

public class FormUtils {
	@SuppressWarnings("unchecked")
	public static <T> T toModel(Class<T> tClass,HttpServletRequest request) {
		T object = null;
		try {
			object= tClass.newInstance();
			BeanUtils.populate(object, request.getParameterMap());																																																											
		} catch (InstantiationException |IllegalAccessException|InvocationTargetException e) {			
			e.printStackTrace();
		} 
		return object;
}
}
