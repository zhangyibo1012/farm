package cn.orgtec.farm.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.extension.activerecord.Model;
import lombok.Data;
import lombok.EqualsAndHashCode;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import java.time.LocalDateTime;

/**
 * 系统角色表
 *
 * @author Yibo Zhang
 * @date 2019/08/10
 */
@Data
@TableName("sys_role")
@EqualsAndHashCode(callSuper = true)
public class SysRole extends Model<SysRole> {
    private static final long serialVersionUID = 1L;

    @TableId(value = "role_id", type = IdType.AUTO)
    private Integer roleId;

    @NotBlank(message = "角色名称 不能为空")
    private String roleName;

    @NotBlank(message = "角色标识 不能为空")
    private String roleCode;

    @NotBlank(message = "角色描述 不能为空")
    private String roleDesc;

    @NotNull(message = "数据权限类型 不能为空")
    private Integer dsType;

    private String dsScope;

    private LocalDateTime createTime;
    private LocalDateTime updateTime;

    /**
     *  删除标识（0-正常,1-删除）
     */
    private String delFlag;

    /**
     *  租户 id
     */
    private Integer tenantId;
  
}
