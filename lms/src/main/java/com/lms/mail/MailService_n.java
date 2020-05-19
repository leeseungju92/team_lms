package com.lms.mail;

import javax.servlet.http.HttpServletRequest;

public interface MailService_n {
	public void mailSendUser(String id, HttpServletRequest request);
	public int keyAuth(String id, String key);
}
