package cn.orgtec.farm.controller;

import cn.orgtec.farm.common.core.util.Result;
import cn.orgtec.farm.entity.BannerEntity;
import cn.orgtec.farm.entity.FarmRoomEntity;
import cn.orgtec.farm.log.annotation.SysLogger;
import cn.orgtec.farm.service.FarmRoomService;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import lombok.AllArgsConstructor;
import org.springframework.web.bind.annotation.*;

/**
 * 房间管理
 *
 * @author Yibo Zhang
 * @date 2019/08/23
 */
@RestController
@AllArgsConstructor
@RequestMapping(value = "/farm")
public class FarmRoomController {

    private final FarmRoomService farmRoomService;

    /**
     * 农家新增房间
     *
     * @param farmRoom 广告
     * @return Result
     */
    @SysLogger("农家新增房间")
    @PostMapping(value = "/farmyard/room")
    public Result save(@RequestBody FarmRoomEntity farmRoom) {

        boolean result = farmRoomService.save(farmRoom);
        return result ? Result.success("农家新增房间成功") : Result.fail("农家新增房间失败");
    }

    /**
     * 农家修改房间
     *
     * @param farmRoom 房间
     * @return Result
     */
    @PutMapping(value = "/farmyard/room")
    public Result updateById(@RequestBody FarmRoomEntity farmRoom) {

        boolean result = farmRoomService.updateById(farmRoom);
        return result ? Result.success("农家修改房间成功") : Result.fail("农家修改房间失败");
    }

    /**
     * 农家根据id删除房间  逻辑删除  updownStatus  0下架   1上架
     *
     * @param id 房间 id
     * @return Result
     */
    @DeleteMapping(value = "/farmyard/room/{roomId}")
    public Result updateById(@PathVariable(value = "roomId") Long id) {

        boolean result = farmRoomService.removeById(id);
        return result ? Result.success("农家删除房间成功") : Result.fail("农家房间失败");
    }

    /**
     * 分页查询 展示房间列表
     *
     * @param page   分页对象
     * @param roomEntity 广播表
     * @return Result<>
     */
    @GetMapping(value = "/farmyard/rooms")
    public Result getBannerPage(Page<FarmRoomEntity> page, FarmRoomEntity roomEntity) {
        Result result = new Result(farmRoomService.page(page, Wrappers.query(roomEntity)));
        return result;
    }

}
