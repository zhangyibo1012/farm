package cn.orgtec.farm.controller;

import cn.orgtec.farm.common.core.util.Result;
import cn.orgtec.farm.entity.FarmShopEntity;
import cn.orgtec.farm.http.request.data.FarmStatusRequestData;
import cn.orgtec.farm.http.request.data.FarmUpDownRequestData;
import cn.orgtec.farm.log.annotation.SysLogger;
import cn.orgtec.farm.service.FarmShopService;
import lombok.AllArgsConstructor;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Map;

/**
 * 农家控制器
 *
 * @author Yibo Zhang
 * @date 2019/08/10
 */
@RestController
@AllArgsConstructor
@RequestMapping(value = "/farm")
public class FarmShopController {

    private final FarmShopService farmShopService;

    /**
     * 更新农家上下架状态，一次只更新一个字段
     *
     * @param requestData  请求数据
     * @return      Result
     */
    @SysLogger("平台对已入驻农家进行上下架")
    @PutMapping(value = "/platform/farmshop/updown")
    public Result saveFarmShopById(@RequestBody FarmUpDownRequestData requestData) {

        Boolean successful = farmShopService.updateUpDownById(requestData.getFarmId(), requestData
                .getStatus());
        return successful ? Result.ok("更新成功") : Result.fail("更新失败");
    }

    /**
     * 展示已入驻农家列表
     *
     * @return  农家列表
     */
    @SysLogger("平台展示已入驻农家列表")
    @GetMapping(value = "/platform/farmshops")
    public Result findFromShopByStatus() {

        return Result.success(farmShopService.findFromShopByStatus());
    }

    /**
     * 通过农家名称进行关键词模糊搜索
     *
     * @param fromNameKeyword  农家名称进行关键词
     * @return  农家列表
     */
    @SysLogger("平台通过农家名称进行关键词搜索")
    @GetMapping(value = "/platform/search/farmshops/{keyword}")
    public Result findFromShopByFromName(@PathVariable("keyword") String fromNameKeyword) {

        return Result.success(farmShopService.findFromShopByFromName(fromNameKeyword));
    }

    /**
     * 根据时间段进行统计入驻农家
     *
     * @return 入驻农家数量
     */
    @GetMapping(value = "/platform/count")
    public Result<Long> countMembers(@RequestParam Map<String, String> params) {
        return Result.success(farmShopService.countFarms(params));
    }

    /**
     * 农家审核，一次只更新一个字段
     *
     * @param requestData  请求数据
     * @return      Result
     */
    @SysLogger("平台对已入驻农家进行上下架")
    @PutMapping(value = "/platform/farmshop/status")
    public Result updateStatusById(@RequestBody FarmStatusRequestData requestData) {

        Boolean successful = farmShopService.updateStatusById(requestData.getFarmId(), requestData
                .getStatus());
        return successful ? Result.ok("更新成功") : Result.fail("更新失败");
    }

    /**
     * 展示已经添加的热门农家列表
     *
     * @return   Result
     */
    @GetMapping(value = "/user/hostfarm")
    public Result findHostFromShop(){

        return Result.success(farmShopService.findHostFromShop()) ;

    }


    /**
     * 平台新增农家
     *
     * @param farmShop 广告
     * @return Result
     */
    @SysLogger("平台新增农家")
    @PostMapping(value = "/platform/farmshop")
    public Result save(@RequestBody FarmShopEntity farmShop) {

        boolean result = farmShopService.save(farmShop);
        return result ? Result.success("新增农家成功") : Result.fail("新增农家失败");
    }
}
