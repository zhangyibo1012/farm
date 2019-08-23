package cn.orgtec.farm.controller;

import cn.orgtec.farm.common.core.util.Result;
import cn.orgtec.farm.dto.Dish;
import cn.orgtec.farm.dto.FarmRoom;
import cn.orgtec.farm.dto.FarmShop;
import cn.orgtec.farm.entity.DishEntity;
import cn.orgtec.farm.entity.FarmRoomEntity;
import cn.orgtec.farm.entity.FarmShopEntity;
import cn.orgtec.farm.entity.mapper.FarmDishBeanMapper;
import cn.orgtec.farm.entity.mapper.FarmRoomBeanMapper;
import cn.orgtec.farm.http.request.FarmStatusRequestData;
import cn.orgtec.farm.http.request.FarmUpDownRequestData;
import cn.orgtec.farm.log.annotation.SysLogger;
import cn.orgtec.farm.response.PlumpFarm;
import cn.orgtec.farm.service.DishService;
import cn.orgtec.farm.service.FarmRoomService;
import cn.orgtec.farm.service.FarmShopService;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import lombok.AllArgsConstructor;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

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
    private final FarmRoomService farmRoomService;
    private final DishService dishService;

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
     * 展示已入驻农家详情
     *
     * @return  农家列表
     */
    @SysLogger("平台展示已入驻农家详情")
    @GetMapping(value = "/platform/farmshop/detail/{farmId:\\d+}")
    public  Result<PlumpFarm> findFromShop(@PathVariable(value = "farmId") Long id) {

        FarmShop farmShop = farmShopService.findFromShopById(id);

        if (farmShop == null) {
            return Result.ok();
        }

        return assemble(farmShop);

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
     * 用户展示已经添加的热门农家列表
     *
     * recommend    0不推荐  1推荐的
     * status       0审核中 1审核通过 2审核失败
     * updownStatus 0下架  1上架
     *
     * @return   Result
     */
    @GetMapping(value = "/user/hostfarms")
    public Result findHostFromShop(){

        return Result.success(farmShopService.findHostFromShop()) ;

    }

    /**
     * 平台展示已经添加的热门农家列表
     *
     * recommend    0不推荐  1推荐的
     *
     * @return   Result
     */
    @GetMapping(value = "/platform/hostfarms")
    public Result getHostFromShop(){

        return Result.success(farmShopService.getHostFromShop()) ;

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

    @GetMapping(value = "/test")
    public Result getish(){
        QueryWrapper<DishEntity> dishQuery = new QueryWrapper<>();
        List<DishEntity> farmDishs = dishService.list(dishQuery.eq("shop_id", "1"));
      return   Result.success(farmDishs);
    }

    /**
     * 组装查询结果
     *
     * @param farmShop 广播
     * @return 农家详情
     */
    private Result<PlumpFarm> assemble(FarmShop farmShop) {

        // 获取房间信息
        QueryWrapper<FarmRoomEntity> roomQuery = new QueryWrapper<>();
        List<FarmRoomEntity> farmRooms = farmRoomService.list(roomQuery.eq("shop_id", farmShop.getId()));

        List<FarmRoom> mapNewfarmRooms = farmRooms.stream().map(FarmRoomBeanMapper::mapNew).collect(Collectors.toList());
        farmShop.setFarmRooms(mapNewfarmRooms);

        // 获取菜品信息
        QueryWrapper<DishEntity> dishQuery = new QueryWrapper<>();
        List<DishEntity> farmDishs = dishService.list(dishQuery.eq("shop_id", farmShop.getId()));

        List<Dish> mapNewfarmDishs = farmDishs.stream().map(FarmDishBeanMapper::mapNew).collect(Collectors.toList());
        farmShop.setDishs(mapNewfarmDishs);


        PlumpFarm data = new PlumpFarm();
        data.setWrapper(farmShop);

        return Result.success(data);
    }
}
