package cn.orgtec.farm.dto;

import lombok.Data;

import java.io.Serializable;
import java.time.LocalDateTime;
import java.util.List;

/**
 *  农家
 *
 * @author Yibo Zhang
 * @date 2019/08/23
 */
@Data
public class FarmShop implements Serializable {

    private static final long serialVersionUID = 1026296372948138925L;

    /**
     * 农家 id
     */
    private Long id;

    /**
     * 联系人姓名
     */
    private String name;

    /**
     * 联系人电话
     */
    private String phone;

    /**
     * 店铺照片
     */
    private String storePhotos;

    /**
     * 店铺简介
     */
    private String title;

    /**
     * 人均消费
     */
    private String consumption;

    /**
     * 是否住宿
     */
    private Integer accommodation;

    /**
     * 可否就餐
     */
    private Integer diningRoom;


    /**
     *  农家名称
     */
    private String farmName;

    /**
     * 经度
     */
    private String lng;

    /**
     * 纬度
     */
    private String lat;

    /**
     * 详细地址
     */
    private String address;

    /**
     * 创建日期
     */
    private LocalDateTime createTime;

    /**
     * 房间，根据店铺场景可能为空
     */
    private List<FarmRoom> farmRooms;

    /**
     * 房间，根据店铺场景可能为空
     */
    private List<Dish> dishs;
}
