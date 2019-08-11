package cn.orgtec.farm.service;

import cn.orgtec.farm.dto.SysUserDetails;
import cn.orgtec.farm.dto.UserDTO;
import cn.orgtec.farm.entity.SysUser;
import com.baomidou.mybatisplus.extension.service.IService;

/**
 * 用户接口
 *
 * @author Yibo Zhang
 * @date 2019/08/10
 */
public interface SysUserService extends IService<SysUser> {

    /**
     * 保存用户信息
     *
     * @param user user 对象
     * @return success/fail
     */
    Boolean saveUser(UserDTO user);

    /**
     * 根据用户ID查询用户详细信息
     *
     * @param username 用户名
     * @return SysUser
     */
    SysUserDetails getUserDetailsByUsername(String username);
}
