package cn.orgtec.farm.controller;

import cn.orgtec.farm.entity.BannerEntity;
import cn.orgtec.farm.service.BannerService;
import com.baomidou.mybatisplus.core.metadata.IPage;
import cn.orgtec.farm.common.core.util.R;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import lombok.AllArgsConstructor;
import org.springframework.web.bind.annotation.*;


/**
 * 广播控制器
 *
 * @author Yibo Zhang
 * @date 2019/08/10
 */
@RestController
@AllArgsConstructor
@RequestMapping(value = "/farm" )
public class BannerController {

    private final BannerService bannerService;

    /**
     *  平台添加广告位
     *
     * @param banner 广告
     * @return R
     */
    @PostMapping(value = "/platform/banner")
    public R save(@RequestBody BannerEntity banner) {
        return new R<>(bannerService.save(banner));
    }

    /**
     * 分页查询
     * @param page 分页对象
     * @param banner 广播表
     * @return
     */
    @GetMapping(value = "/user/banner")
    public R<IPage<BannerEntity>> getBannerPage(Page<BannerEntity> page, BannerEntity banner) {
        return new R<>(bannerService.page(page, Wrappers.query(banner)));
    }


//    /**
//     * 通过id查询广播表
//     * @param id id
//     * @return R
//     */
//    @GetMapping("/{id}" )
//    public R getById(@PathVariable("id" ) Long id) {
//        return new R<>(bannerService.getById(id));
//    }
//

//
//    /**
//     * 修改广播表
//     * @param banner 广播表
//     * @return R
//     */
//    @PutMapping
//    public R updateById(@RequestBody Banner banner) {
//        return new R<>(bannerService.updateById(banner));
//    }
//
//    /**
//     * 通过id删除广播表
//     * @param id id
//     * @return R
//     */
//    @DeleteMapping("/{id}" )
//    public R removeById(@PathVariable Long id) {
//        return new R<>(bannerService.removeById(id));
//    }

}
