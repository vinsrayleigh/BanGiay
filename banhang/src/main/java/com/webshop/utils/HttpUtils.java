package com.webshop.utils;

import java.io.BufferedReader;
import java.io.IOException;

import com.fasterxml.jackson.databind.ObjectMapper;

//convert json to string 
public class HttpUtils {
	private String value;
	public HttpUtils(String value) {this.value=value;};
	public <T> T toModel(Class<T> tClass) {
		try {
			return new ObjectMapper().readValue(value, tClass);
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return null;
	}

	public static HttpUtils of(BufferedReader reader) {
		StringBuilder sb = new StringBuilder();

		try {
			String line;
			while ((line = reader.readLine()) != null) {
				sb.append(line);
			}

		} catch (IOException e) {
			System.out.println(e.getMessage());

		}
		return new HttpUtils(sb.toString());

	}
}
