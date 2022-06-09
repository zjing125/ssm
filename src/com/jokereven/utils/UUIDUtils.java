package com.jokereven.utils;

import java.util.UUID;

public class UUIDUtils {

	public static final String getId() {
		return UUID.randomUUID().toString().replaceAll("-", "");
	}
}
