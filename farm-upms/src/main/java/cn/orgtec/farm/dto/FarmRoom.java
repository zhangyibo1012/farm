package cn.orgtec.farm.dto;

import lombok.Data;

import java.io.Serializable;

/**
 * 房间
 *
 * @author Yibo Zhang
 * @date 2019/08/23
 */
@Data
public class FarmRoom implements Serializable {

    /**
     * 房间 id
     */
    private Long id;

    /**
     * 房间名称
     */
    private String name;

    /**
     * 房间图片
     */
    private String roomPhotos;

    /**
     * 房间价格
     */
    private Integer price;

    /**
     * 是否包含早餐  0没有 1有
     */
    private Integer breakfast;

    /**
     * 是否有空调
     */
    private Integer airConditioner;

    /**
     * 床规格类型
     */
    private String bedType;

    /**
     * 是否支持wifi
     */
    private Integer wifi;

    /**
     * 行李寄存
     */
    private Integer baggageDeposit;

    /**
     * 房间规格
     */
    private String roomType;

    /**
     * 入住人数
     */
    private Integer checkinNumber;

    /**
     * 房间描述
     */
    private String roomDescribe;

    /**
     * 房间上下架
     */
    private Integer updownStatus;

    /**
     * 房间状态  是否被入住
     */
    private Integer status;
}
