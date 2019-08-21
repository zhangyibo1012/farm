package cn.orgtec.farm.service.impl;

import cn.hutool.core.convert.Convert;
import cn.orgtec.farm.entity.FarmShopEntity;
import cn.orgtec.farm.mapper.FarmShopMapper;
import cn.orgtec.farm.service.FarmShopService;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import com.baomidou.mybatisplus.extension.api.R;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.util.MultiValueMap;

import java.time.LocalDate;
import java.time.LocalDateTime;
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

         return farmShopMapper.updateUpDownById(id, status) > 0;
    }

    @Override
    public List<FarmShopEntity> findFromShopByStatus() {

        LambdaQueryWrapper<FarmShopEntity> lambdaQuery = Wrappers.lambdaQuery();
        lambdaQuery.eq(FarmShopEntity::getStatus ,1);
        return this.list(lambdaQuery);
    }

    @Override
    public List<FarmShopEntity> findFromShopByFromName(String fromNameKeyword) {

        LambdaQueryWrapper<FarmShopEntity> lambdaQuery = Wrappers.lambdaQuery();
        lambdaQuery.like(FarmShopEntity::getFarmName ,fromNameKeyword);
        return this.list(lambdaQuery);
    }

    @Override
    public Long countFarms(Map<String,String> params) {

        return farmShopMapper.countFarms(params.get("beginDate") , params.get("endDate"));
    }

    @Override
    public Boolean updateStatusById(Long id, Integer status) {

        return farmShopMapper.updateStatusById(id, status) > 0;
    }

}
