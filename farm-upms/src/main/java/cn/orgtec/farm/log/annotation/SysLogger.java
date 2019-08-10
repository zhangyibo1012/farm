package cn.orgtec.farm.log.annotation;

import java.lang.annotation.*;

/**
 * 操作日志注解
 *
 * @author Yibo Zhang
 * @date 2019/01/03
 */
@Target(ElementType.METHOD)
@Retention(RetentionPolicy.RUNTIME)
@Documented
public @interface SysLogger {

	/**
	 * 描述
	 *
	 * @return {String}
	 */
	String value();
}
