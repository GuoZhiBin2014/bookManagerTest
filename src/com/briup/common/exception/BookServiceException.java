package com.briup.common.exception;

public class BookServiceException extends Exception {

	private static final long serialVersionUID = 1L;

	public BookServiceException() {
		super();
	}

	public BookServiceException(String message, Throwable cause) {
		super(message, cause);
	}

	public BookServiceException(String message) {
		super(message);
	}

	public BookServiceException(Throwable cause) {
		super(cause);
	}

}
