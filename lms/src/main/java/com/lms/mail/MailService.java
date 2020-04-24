package com.lms.mail;

import javax.servlet.http.HttpServletRequest;

public interface MailService {
	public void mailSendUser(String email, String id, HttpServletRequest request);
	public int keyAuth(String id, String key);
}
