package org.seckill.exception;

/**
 * ��ɱ�ر��쳣
 * @author ewendia
 */
@SuppressWarnings("serial")
public class SeckillCloseException extends SeckillException {

	public SeckillCloseException(String message) {
		super(message);		
	}

	public SeckillCloseException(String message, Throwable cause) {
		super(message, cause);		
	}
	
	

}
