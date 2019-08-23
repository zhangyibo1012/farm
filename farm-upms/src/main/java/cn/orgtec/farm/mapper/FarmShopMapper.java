package cn.orgtec.farm.mapper;

import cn.orgtec.farm.entity.FarmShopEntity;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.transaction.annotation.Transactional;

/**
 * 农家店铺表 Mapper 接口
 *
 * @author Yibo Zhang
 * @date 2019/08/10
 */
public interface FarmShopMapper extends BaseMapper<FarmShopEntity> {

    /**
     * 设置已入驻农家进行上下架管理
     *
     * @param farmId 农家 ID
     * @param status 上下架状态
     * @return 影响的行数
     */
    @Transactional(rollbackFor = Exception.class)
    @Update(value = "UPDATE farm_shop SET `updown_status` = #{status}  WHERE id = #{farmId}")
    int updateUpDownById(@Param("farmId") Long farmId, @Param("status") Integer status);

    /**
     * 根据时间段进行统计入驻农家
     *
     * @param beginDate 开始时间
     * @param endDate   结束时间
     * @return count
     */
    @Select("SELECT count(*) FROM farm_shop WHERE create_time  BETWEEN #{beginDate} AND #{endDate}")
    Long countFarms(@Param("beginDate") String beginDate, @Param("endDate") String endDate);

    /**
     * 平台对申请入驻农家进行审核
     *
     * @param farmId 农家 ID
     * @param status 审核状态 0审核中 1审核通过 2审核失败
     * @return 影响的行数
     */
    @Transactional(rollbackFor = Exception.class)
    @Update(value = "UPDATE farm_shop SET `status` = #{status}  WHERE id = #{farmId}")
    int updateStatusById(@Param("farmId") Long farmId, @Param("status") Integer status);
}
