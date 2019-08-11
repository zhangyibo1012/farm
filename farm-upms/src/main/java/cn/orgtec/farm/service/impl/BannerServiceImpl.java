package cn.orgtec.farm.service.impl;

import cn.orgtec.farm.entity.BannerEntity;
import cn.orgtec.farm.mapper.BannerMapper;
import cn.orgtec.farm.service.BannerService;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * 广告接口实现类
 *
 * @author Yibo Zhang
 * @date 2019/08/10
 */
@Service
@AllArgsConstructor
@Transactional(propagation = Propagation.NESTED, isolation = Isolation.DEFAULT, rollbackFor = Exception.class)
public class BannerServiceImpl extends ServiceImpl<BannerMapper, BannerEntity> implements BannerService {
    private final BannerMapper bannerMapper;

    @Override
    public List<BannerEntity> getBannersBySort() {
        return bannerMapper.selectPage(
                new Page<>(1, 5),
                Wrappers.<BannerEntity>query()
                        .select("title", "advertise_photos", "url", "sort")
                        .orderByDesc("sort"))
                .getRecords();
    }
}
