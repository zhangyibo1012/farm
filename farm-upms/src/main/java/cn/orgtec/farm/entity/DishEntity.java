package cn.orgtec.farm.entity;

import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.extension.activerecord.Model;
import lombok.Data;
import lombok.EqualsAndHashCode;

import java.time.LocalDateTime;

/**
 * 菜品表
 *
 * @author Yibo Zhang
 * @date 2019/08/10
 */
@Data
@TableName("dish")
@EqualsAndHashCode(callSuper = true)
public class DishEntity extends Model<DishEntity> {
    private static final long serialVersionUID = 555535643044947503L;

    /**
     * 唯一标识
     */
    @TableId
    private Long id;

    /**
     * 店铺id
     */
    private Long shopId;

    /**
     * 菜品名称
     */
    private String name;

    /**
     * 菜品描述
     */
    private String describe;

    /**
     * 菜品图片
     */
    private String dishPhotos;

    /**
     * 菜品分类
     */
    private String type;

    /**
     * 吃法
     */
    private String eatMethod;

    /**
     * 创建时间
     */
    private LocalDateTime createTime;

    /**
     * 修改时间
     */
    private LocalDateTime updateTime;

}
