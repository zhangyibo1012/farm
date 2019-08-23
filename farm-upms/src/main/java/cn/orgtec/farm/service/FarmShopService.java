package cn.orgtec.farm.service;

import cn.orgtec.farm.dto.FarmShop;
import cn.orgtec.farm.entity.FarmShopEntity;
import cn.orgtec.farm.response.PlumpFarm;
import com.baomidou.mybatisplus.extension.service.IService;
import org.springframework.util.MultiValueMap;

import java.time.LocalDateTime;
import java.util.List;
import java.util.Map;

/**
 * 农家店铺接口
 *
 * @author Yibo Zhang
 * @date 2019/08/10
 */
public interface FarmShopService extends IService<FarmShopEntity> {

    /**
     * 更新状态
     *
     * @param id  农家ID
     * @param status 上下架状态
     *
     * @return true / false
     */
    Boolean updateUpDownById(Long id, Integer status);

    /**
     *  展示已入驻农家列表
     *
     * @return  List<FarmShopEntity>
     */
    List<FarmShopEntity> findFromShopByStatus();

    /**
     * 通过农家名称进行关键词模糊搜索
     *
     * @param fromNameKeyword  农家名称进行关键词
     * @return      List<FarmShopEntity>
     */
    List<FarmShopEntity> findFromShopByFromName(String fromNameKeyword);

    /**
     *  根据时间段进行统计入驻农家
     *
     * @param params   map
     * @return         入驻农家数量
     */
    Long countFarms(Map<String,String> params);

    /**
     * 更新审核
     *
     * @param id  农家ID
     * @param status 审核状态 0审核中 1审核通过 2审核失败
     *
     * @return true / false
     */
    Boolean updateStatusById(Long id, Integer status);

    /**
     * 用户展示已经添加的热门农家列表
     *
     * recommend    0不推荐  1推荐的
     * status       0审核中 1审核通过 2审核失败
     * updownStatus 0下架  1上架
     *
     * @return   Result
     */
    List<FarmShopEntity> findHostFromShop();

    /**
     * 平台展示已经添加的热门农家列表
     *
     * recommend    0不推荐  1推荐的
     * status       0审核中 1审核通过 2审核失败
     * updownStatus 0下架  1上架
     *
     * @return   Result
     */
    List<FarmShopEntity> getHostFromShop();

    /**
     *  findFromShopById
     *
     * @param id  农家 Id
     * @return    PlumpFarm
     */
    FarmShop findFromShopById(Long id);

}
