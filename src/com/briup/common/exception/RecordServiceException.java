package com.briup.common.exception;

public class RecordServiceException extends Exception {

	private static final long serialVersionUID = 1L;

	public RecordServiceException() {
		super();
	}

	public RecordServiceException(String message, Throwable cause) {
		super(message, cause);
	}

	public RecordServiceException(String message) {
		super(message);
	}

	public RecordServiceException(Throwable cause) {
		super(cause);
	}

}
