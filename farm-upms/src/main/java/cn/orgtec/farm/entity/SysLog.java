package cn.orgtec.farm.entity;

import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.extension.activerecord.Model;
import lombok.Data;
import lombok.EqualsAndHashCode;

import java.time.LocalDateTime;

/**
 * 日志表
 *
 * @author Yibo Zhang
 * @date 2019/08/10
 */
@Data
@TableName("sys_log")
@EqualsAndHashCode(callSuper = true)
public class SysLog extends Model<SysLog> {
    private static final long serialVersionUID = -1525352872893492798L;

    /**
     * 编号
     */
    @TableId
    private Long id;

    /**
     * 日志类型
     */
    private String type;

    /**
     * 日志标题
     */
    private String title;

    /**
     * 服务ID
     */
    private String serviceId;

    /**
     * 创建者
     */
    private String createBy;

    /**
     * 创建时间
     */
    private LocalDateTime createTime;

    /**
     * 更新时间
     */
    private LocalDateTime updateTime;

    /**
     * 操作IP地址
     */
    private String remoteAddr;

    /**
     * 用户代理
     */
    private String userAgent;

    /**
     * 请求URI
     */
    private String requestUri;

    /**
     * 操作方式
     */
    private String method;

    /**
     * 操作提交的数据
     */
    private String params;

    /**
     * 执行时间
     */
    private String time;

    /**
     * 删除标记
     */
    private String delFlag;

    /**
     * 异常信息
     */
    private String exception;

    /**
     * 所属租户
     */
    private Integer tenantId;

}
