package cn.orgtec.farm.service.impl;

import cn.orgtec.farm.entity.BannerEntity;
import cn.orgtec.farm.mapper.BannerMapper;
import cn.orgtec.farm.service.BannerService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

/**
 * 广告接口实现类
 *
 * @author Yibo Zhang
 * @date 2019/08/10
 */
@Service
@Transactional(propagation=Propagation.NESTED,isolation=Isolation.DEFAULT,rollbackFor=Exception.class)
public class BannerServiceImpl extends ServiceImpl<BannerMapper, BannerEntity> implements BannerService {

}
