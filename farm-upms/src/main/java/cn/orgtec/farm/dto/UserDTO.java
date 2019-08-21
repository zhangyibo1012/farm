package cn.orgtec.farm.dto;

import cn.orgtec.farm.entity.SysUser;
import lombok.Data;
import lombok.EqualsAndHashCode;

import java.util.List;

/**
 * @author Yibo Zhang
 * @date 2017/11/5
 */
@Data
@EqualsAndHashCode(callSuper = true)
public class UserDTO extends SysUser {

    /**
     * 角色ID
     */
    private List<Integer> role;

    private Integer deptId;

    /**
     * 新密码
     */
    private String newpassword1;
}