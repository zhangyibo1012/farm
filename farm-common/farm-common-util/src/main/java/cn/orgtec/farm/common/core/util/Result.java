package cn.orgtec.farm.common.core.util;

import cn.orgtec.farm.common.core.constant.CommonConstants;
import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.*;
import lombok.experimental.Accessors;
import static cn.orgtec.farm.common.core.constant.CommonConstants.FAIL;


import java.io.Serializable;

/**
 * 响应信息主体
 *
 * @author Yibo Zhang
 * @date 2019/08/10
 */
@Data
@Builder
@ToString
@Accessors(chain = true)
public class Result<T> implements Serializable {

	private static final long serialVersionUID = -1026706340793551951L;

	public static final Result SUCCESS = new Result();

	private int code = CommonConstants.SUCCESS;

	private String message = "SUCCESS";


	private T data;

	/**
	 * 使用静态方法
	 */
	@Deprecated
	public Result() {
		super();
	}

	/**
	 * 使用静态方法
	 */
	@Deprecated
	public Result(T data) {
		this.data = data;
	}

	/**
	 * 使用静态方法
	 */
	@Deprecated
	public Result(String msg, T data) {
		this.data = data;
		this.message = msg;
	}

	/**
	 * 使用静态方法
	 */
	@Deprecated
	public Result(int code, String msg, T data) {
		this.code = code;
		this.data = data;
		this.message = msg;
	}

	/**
	 * 使用静态方法
	 */
	@Deprecated
	public Result(Throwable e) {
		super();
		this.message = e.getMessage();
		this.code = FAIL;
	}

	@JsonIgnore
	public Boolean isSuccess() {
		return code == CommonConstants.SUCCESS;
	}

	@JsonIgnore
	public Boolean isOk() {
		return code == CommonConstants.SUCCESS;
	}


	public static <T> Result<T> ok() {
		return new Result<>();
	}

	public static <T> Result<T> ok(String message) {
		return new Result<>(message, null);
	}

	public static <T> Result<T> ok(T data) {
		return new Result<>(null, data);
	}

	public static <T> Result<T> ok(String message, T data) {
		return new Result<>(message, data);
	}


	public static <T> Result<T> success() {
		return new Result<>();
	}

	public static <T> Result<T> success(String message) {
		return new Result<>(message, null);
	}

	public static <T> Result<T> success(T data) {
		return new Result<>(null, data);
	}

	public static <T> Result<T> success(String message, T data) {
		return new Result<>(message, data);
	}

	public static <T> Result<T> fail() {
		return new Result<T>().setCode(FAIL);
	}

	public static <T> Result<T> fail(String message) {
		return new Result<>(FAIL, message, null);
	}

}
