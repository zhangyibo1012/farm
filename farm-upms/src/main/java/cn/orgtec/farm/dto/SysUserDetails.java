package cn.orgtec.farm.dto;

import cn.orgtec.farm.entity.SysUser;
import lombok.Data;

import java.io.Serializable;

/**
 * @author Yibo Zhang
 * @date 2019/01/22
 */
@Data
public class SysUserDetails implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 用户信息
     */
    private SysUser user;

    /**
     * 角色集合
     */
    private Integer[] roles;

    /**
     * 权限标识集合
     */
    private String[] permissions;

}