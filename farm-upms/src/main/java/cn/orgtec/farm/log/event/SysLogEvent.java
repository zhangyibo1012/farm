package cn.orgtec.farm.log.event;

import cn.orgtec.farm.entity.SysLog;
import org.springframework.context.ApplicationEvent;

/**
 * 系统日志事件
 *
 * @author Yibo Zhang
 * @date 2019/01/03
 */
public class SysLogEvent extends ApplicationEvent {

    public SysLogEvent(SysLog source) {
        super(source);
    }
}