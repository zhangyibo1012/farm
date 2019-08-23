package cn.orgtec.farm.entity;

import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.extension.activerecord.Model;
import lombok.Data;
import lombok.EqualsAndHashCode;

import java.time.LocalDateTime;

/**
 * 农家店铺表
 *
 * @author Yibo Zhang
 * @date 2019/08/10
 */
@Data
@TableName("farm_shop")
@EqualsAndHashCode(callSuper = true)
public class FarmShopEntity extends Model<FarmShopEntity> {
    private static final long serialVersionUID = 2158446656915960146L;

    /**
     * 唯一标识
     */
    @TableId
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
     * 营业执照
     */
    private String businessLicens;

    /**
     * 0：审核中 1：审核通过 2：审核失败
     */
    private Integer status;

    /**
     * 农家名称
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
     * 更新日期
     */
    private LocalDateTime updateTime;

    /**
     * 0 不推荐  1推荐
     */
    private Integer recommend;

    /**
     * 0 下架  1上架
     */
    private Integer updownStatus;

}
