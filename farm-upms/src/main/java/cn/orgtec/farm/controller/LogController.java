package cn.orgtec.farm.controller;

import cn.orgtec.farm.common.core.util.Result;
import cn.orgtec.farm.entity.SysLog;
import cn.orgtec.farm.service.SysLogService;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import lombok.AllArgsConstructor;
import org.springframework.web.bind.annotation.*;

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
    public Result<Object> save(@RequestBody SysLog sysLog) {

        boolean result = sysLogService.save(sysLog);
        return result ? Result.success("日志添加成功") : Result.fail("日志添加失败");
    }

    /**
     * 删除日志
     *
     * @param id ID
     * @return success/false
     */
    @DeleteMapping("/log/{id}")
    public Result removeById(@PathVariable(value = "id") Long id) {

        boolean result = sysLogService.removeById(id);
        return result ? Result.success("日志删除成功") : Result.fail("日志删除失败");
    }

    /**
     * 分页查询
     *
     * @param page   分页对象
     * @param sysLog 系统日志
     * @return
     */
    @GetMapping("/log/page")
    public Result<IPage<SysLog>> getLogPage(Page<SysLog> page, SysLog sysLog) {
        return Result.success(sysLogService.page(page, Wrappers.query(sysLog)));
    }
}
