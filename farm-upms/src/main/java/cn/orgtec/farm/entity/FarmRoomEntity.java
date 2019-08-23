package cn.orgtec.farm.entity;

import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableLogic;
import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.extension.activerecord.Model;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * 农家房间表
 *
 * @author Yibo Zhang
 * @date 2019/08/10
 */
@Data
@TableName("farm_room")
@EqualsAndHashCode(callSuper = true)
public class FarmRoomEntity extends Model<FarmRoomEntity> {
    private static final long serialVersionUID = -1144246253792794837L;

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
     * 房间名称
     */
    private String roomName;

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
     * 房间上下架   逻辑删除  0下架  1上架
     */
    @TableLogic
    private Integer updownStatus;

    /**
     * 房间状态  是否被入住
     */
    private Integer status;

}
