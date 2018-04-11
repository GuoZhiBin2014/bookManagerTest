package com.briup.common.exception;

public class StorageServiceException extends Exception {

	private static final long serialVersionUID = 1L;

	public StorageServiceException() {
		super();
	}

	public StorageServiceException(String message, Throwable cause) {
		super(message, cause);
	}

	public StorageServiceException(String message) {
		super(message);
	}

	public StorageServiceException(Throwable cause) {
		super(cause);
	}

}
