package cn.orgtec.farm.controller;

import cn.orgtec.farm.common.core.util.Result;
import cn.orgtec.farm.entity.BannerEntity;
import cn.orgtec.farm.log.annotation.SysLogger;
import cn.orgtec.farm.service.BannerService;
import com.baomidou.mybatisplus.core.metadata.IPage;
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
@RequestMapping(value = "/farm")
public class BannerController {

    private final BannerService bannerService;

    /**
     * 平台添加广告位
     *
     * @param banner 广告
     * @return Result
     */
    @SysLogger("平台添加广告位")
    @PostMapping(value = "/platform/banner")
    public Result save(@RequestBody BannerEntity banner) {

        boolean result = bannerService.save(banner);
        return result ? Result.success("添加广告成功") : Result.fail("添加广告失败");
    }

    /**
     * 平台 通过 id 删除广告  逻辑删除
     *
     * @param id id
     * @return Result
     */
    @DeleteMapping(value = "/platform/{id}")
    public Result removeById(@PathVariable(value = "id") Long id) {

        boolean result = bannerService.removeById(id);
        return result ? Result.success("删除广告成功") : Result.fail("删除广告失败");
    }

    /**
     * 修改广告
     *
     * @param banner 广告
     * @return Result
     */
    @PutMapping(value = "/platform/banner")
    public Result updateById(@RequestBody BannerEntity banner) {

        boolean result = bannerService.updateById(banner);
        return result ? Result.success("修改广告成功") : Result.fail("修改广告失败");
    }

    /**
     * 用户版 首页广告位展示
     *
     * @return Result
     */
    @GetMapping(value = "/user/app/banner")
    public Result getBanner() {

        return Result.success(bannerService.getBannersBySort());
    }


    /**
     * 分页查询
     *
     * @param page   分页对象
     * @param banner 广告表
     * @return Result<>
     */
    @GetMapping(value = "/user/banner")
    public Result<IPage<BannerEntity>> getBannerPage(Page<BannerEntity> page, BannerEntity banner) {

        return new Result<>(bannerService.page(page, Wrappers.query(banner)));
    }


//    /**
//     * 通过id查询广播表
//     * @param id id
//     * @return Result
//     */
//    @GetMapping("/{id}" )
//    public Result getById(@PathVariable("id" ) Long id) {
//        return new Result<>(bannerService.getById(id));
//    }
//


}
