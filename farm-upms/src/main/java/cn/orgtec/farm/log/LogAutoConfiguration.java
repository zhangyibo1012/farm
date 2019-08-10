package cn.orgtec.farm.log;

import cn.orgtec.farm.log.aspect.SysLoggerAspect;
import cn.orgtec.farm.log.event.SysLogListener;
import cn.orgtec.farm.service.SysLogService;
import lombok.AllArgsConstructor;
import org.springframework.boot.autoconfigure.condition.ConditionalOnWebApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.scheduling.annotation.EnableAsync;

/**
 * 日志自动配置
 *
 * @author Yibo Zhang
 * @date 2019/01/03
 */
@EnableAsync
@Configuration
@AllArgsConstructor
@ConditionalOnWebApplication
public class LogAutoConfiguration {

    private final SysLogService sysLogClient;

    @Bean
    public SysLogListener sysLogListener() {
        return new SysLogListener(sysLogClient);
    }

    @Bean
    public SysLoggerAspect sysLogAspect() {
        return new SysLoggerAspect();
    }
}
