package cn.orgtec.farm.service.impl;

import cn.orgtec.farm.common.core.constant.CommonConstants;
import cn.orgtec.farm.dto.FarmShop;
import cn.orgtec.farm.entity.FarmShopEntity;
import cn.orgtec.farm.entity.mapper.FarmShopBeanMapper;
import cn.orgtec.farm.mapper.FarmShopMapper;
import cn.orgtec.farm.service.FarmShopService;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Map;

/**
 * 农家店铺接口实现类
 *
 * @author Yibo Zhang
 * @date 2019/08/10
 */
@Service
@AllArgsConstructor
public class FarmShopServiceImpl extends ServiceImpl<FarmShopMapper, FarmShopEntity> implements FarmShopService {

    private final FarmShopMapper farmShopMapper;

    @Override
    public Boolean updateUpDownById(Long id, Integer status) {
        // TODO: 2019/8/23   需要更新和农家相关的房间和美食
        return farmShopMapper.updateUpDownById(id, status) > 0;
    }

    @Override
    public List<FarmShopEntity> findFromShopByStatus() {

        LambdaQueryWrapper<FarmShopEntity> lambdaQuery = Wrappers.lambdaQuery();
        lambdaQuery.eq(FarmShopEntity::getStatus, 1);
        return this.list(lambdaQuery);
    }

    @Override
    public List<FarmShopEntity> findFromShopByFromName(String fromNameKeyword) {

        LambdaQueryWrapper<FarmShopEntity> lambdaQuery = Wrappers.lambdaQuery();
        lambdaQuery.like(FarmShopEntity::getFarmName, fromNameKeyword);
        return this.list(lambdaQuery);
    }

    @Override
    public Long countFarms(Map<String, String> params) {

        return farmShopMapper.countFarms(params.get("beginDate"), params.get("endDate"));
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public Boolean updateStatusById(Long id, Integer status) {

        return farmShopMapper.updateStatusById(id, status) > 0;
    }

    @Override
    public List<FarmShopEntity> findHostFromShop() {
        LambdaQueryWrapper<FarmShopEntity> lambdaQuery = Wrappers.lambdaQuery();

        lambdaQuery.
                eq(FarmShopEntity::getRecommend, CommonConstants.STATUS_NORMAL)
                .eq(FarmShopEntity::getStatus, CommonConstants.STATUS_NORMAL)
                .eq(FarmShopEntity::getUpdownStatus, CommonConstants.STATUS_NORMAL);
        return this.list(lambdaQuery);
    }

    @Override
    public List<FarmShopEntity> getHostFromShop() {
        LambdaQueryWrapper<FarmShopEntity> lambdaQuery = Wrappers.lambdaQuery();

        lambdaQuery.
                eq(FarmShopEntity::getRecommend, CommonConstants.STATUS_NORMAL);
        return this.list(lambdaQuery);
    }

    @Override
    public FarmShop findFromShopById(Long id) {
        FarmShopEntity farmShopEntity = this.getById(id);

        if (null != farmShopEntity) {
            return FarmShopBeanMapper.mapNew(farmShopEntity);
        }
        return null;
    }

}
