package cn.orgtec.farm.service;

import cn.orgtec.farm.entity.BannerEntity;
import com.baomidou.mybatisplus.extension.service.IService;

import java.util.List;

/**
 * 广告接口
 *
 * @author Yibo Zhang
 * @date 2019/08/10
 */
public interface BannerService extends IService<BannerEntity> {

    /**
     * 用户版 首页广告位展示
     *
     * @return List<BannerEntity>
     */
    List<BannerEntity> getBannersBySort();
}
