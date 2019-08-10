package cn.orgtec.farm.controller;

import cn.orgtec.farm.common.core.util.Result;
import cn.orgtec.farm.entity.SysLog;
import cn.orgtec.farm.service.SysLogService;
import lombok.AllArgsConstructor;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * 日志前端控制器
 *
 * @author Yibo Zhang
 * @date 2019/08/10
 */
@RestController
@AllArgsConstructor
@RequestMapping(value = "/farm")
public class LogController {
    private final SysLogService sysLogService;

    /**
     * 插入日志
     *
     * @param sysLog 日志实体
     * @return success/false
     */
    @PostMapping(value = "/log")
    public Result save(@RequestBody SysLog sysLog) {

        boolean result = sysLogService.save(sysLog);
        return result ? Result.success("日志添加成功") : Result.fail("日志添加失败");
    }
}
