package cn.orgtec.farm.controller;

import cn.orgtec.farm.common.core.util.Result;
import cn.orgtec.farm.dto.UserDTO;
import cn.orgtec.farm.log.annotation.SysLogger;
import cn.orgtec.farm.service.SysUserService;
import lombok.AllArgsConstructor;
import org.springframework.web.bind.annotation.*;

/**
 * @author Yibo Zhang
 * @date 2019/08/11
 */
@RestController
@AllArgsConstructor
@RequestMapping(value = "/farm")
public class SysUserController {
    private final SysUserService sysUserService;
//    0921e659-5097-4a21-be36-34cdb2e341d6

    /**
     * 新增用户
     *
     * @param userDto 用户
     * @return R
     */
    @SysLogger("新增用户")
    @PostMapping(value = "/sys/user")
    public Result save(@RequestBody UserDTO userDto) {
        return Result.success(sysUserService.saveUser(userDto));
    }

    /**
     * 根据用户名查询用户信息
     *
     * @param username 用户名
     * @return Result
     */
    @GetMapping("/sys/user/{username}")
    public Result user(@PathVariable(value = "username") String username) {
        return Result.success(sysUserService.getUserDetailsByUsername(username));
    }
}
