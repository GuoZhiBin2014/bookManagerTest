package com.briup.common.exception;

public class CustomerServiceException extends Exception {

	private static final long serialVersionUID = 1L;

	public CustomerServiceException() {
		super();
	}

	public CustomerServiceException(String message, Throwable cause) {
		super(message, cause);
	}

	public CustomerServiceException(String message) {
		super(message);
	}

	public CustomerServiceException(Throwable cause) {
		super(cause);
	}

}
