package cn.orgtec.farm.log.event;

import cn.orgtec.farm.entity.SysLog;
import cn.orgtec.farm.service.SysLogService;
import lombok.AllArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.context.event.EventListener;
import org.springframework.core.annotation.Order;
import org.springframework.scheduling.annotation.Async;

/**
 * 异步监听日志事件
 *
 * @author Yibo Zhang
 * @date 2019/08/10
 */
@Slf4j
@AllArgsConstructor
public class SysLogListener {

    private final SysLogService sysLogService;

    @Async
    @Order
    @EventListener(SysLogEvent.class)
    public void saveSysLog(SysLogEvent event) {
        SysLog sysLog = (SysLog) event.getSource();
        sysLogService.save(sysLog);
    }
}
