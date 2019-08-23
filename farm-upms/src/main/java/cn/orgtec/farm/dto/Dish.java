package cn.orgtec.farm.dto;

import lombok.Data;

import java.io.Serializable;
import java.time.LocalDateTime;

/**
 * 餐厅
 *
 * @author Yibo Zhang
 * @date 2019/08/23
 */
@Data
public class Dish implements Serializable {

    /**
     * 菜品 Id
     */
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

}
