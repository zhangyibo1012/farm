package cn.orgtec.farm.log.util;

import cn.hutool.core.util.URLUtil;
import cn.hutool.extra.servlet.ServletUtil;
import cn.hutool.http.HttpUtil;
import cn.orgtec.farm.common.core.constant.CommonConstants;
import cn.orgtec.farm.entity.SysLog;
import lombok.experimental.UtilityClass;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import javax.servlet.http.HttpServletRequest;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.nio.charset.Charset;
import java.util.Map;
import java.util.Objects;

/**
 * 系统日志工具类
 *
 * @author Baiyang Peng
 * @date 2019/08/10
 */
@UtilityClass
public class SysLogUtils {

	public SysLog getSysLog()  {
		HttpServletRequest request = ((ServletRequestAttributes) Objects
				.requireNonNull(RequestContextHolder.getRequestAttributes())).getRequest();
		SysLog sysLog = new SysLog();
		sysLog.setCreateBy(Objects.requireNonNull("admin"));
		sysLog.setType(CommonConstants.STATUS_NORMAL);
		sysLog.setRemoteAddr(ServletUtil.getClientIP(request));
		sysLog.setRequestUri(URLUtil.getPath(request.getRequestURI()));
		sysLog.setMethod(request.getMethod());
		sysLog.setUserAgent(request.getHeader("user-agent"));
		sysLog.setServiceId("farm");
		return sysLog;
	}

}
