package cn.orgtec.farm.log.aspect;

import cn.hutool.core.util.StrUtil;
import cn.orgtec.farm.common.core.util.SpringContextHolder;
import cn.orgtec.farm.entity.SysLog;
import cn.orgtec.farm.log.annotation.SysLogger;
import cn.orgtec.farm.log.event.SysLogEvent;
import cn.orgtec.farm.log.util.SysLogUtils;
import lombok.extern.slf4j.Slf4j;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;

import java.util.Arrays;

/**
 * 操作日志使用spring event异步入库
 *
 * @author Baiyang Peng
 * @date 2019/01/03
 */
@Slf4j
@Aspect
public class SysLoggerAspect {

	@Around("@annotation(logger)")
	public Object around(ProceedingJoinPoint point, SysLogger logger) throws Throwable {
		String strClassName = point.getTarget().getClass().getName();
		String strMethodName = point.getSignature().getName();
		log.debug("[类名]:{},[方法]:{},[参数]:{}", strClassName, strMethodName,Arrays.toString(point.getArgs()));

		SysLog log = SysLogUtils.getSysLog();
		log.setTitle(logger.value());
		log.setParams(Arrays.toString(point.getArgs()));
		// 发送异步日志事件
		Long startTime = System.currentTimeMillis();
		Object obj = point.proceed();
		Long endTime = System.currentTimeMillis();
		log.setTime(StrUtil.toString(endTime - startTime));
		SpringContextHolder.publishEvent(new SysLogEvent(log));
		return obj;
	}
}
