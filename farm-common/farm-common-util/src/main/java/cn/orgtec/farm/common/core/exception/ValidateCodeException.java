
package cn.orgtec.farm.common.core.exception;

/**
 * @author Yibo Zhang
 * @date 2018/06/22
 */
public class ValidateCodeException extends Exception {
	private static final long serialVersionUID = -7285211528095468156L;

	public ValidateCodeException() {
	}

	public ValidateCodeException(String msg) {
		super(msg);
	}
}
