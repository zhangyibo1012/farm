package cn.orgtec.farm.entity.mapper;

import cn.orgtec.farm.dto.FarmRoom;
import cn.orgtec.farm.entity.FarmRoomEntity;
import org.springframework.beans.BeanUtils;
import org.springframework.util.Assert;

/**
 * 房间映射器
 *
 * @author Yibo Zhang
 * @date 2019/08/23
 */
public class FarmRoomBeanMapper {

    public static FarmRoom mapNew(FarmRoomEntity source) {
        FarmRoom target = new FarmRoom();
        map(source, target);
        return target;
    }

    public static void map(FarmRoomEntity source, FarmRoom target) {

        Assert.notNull(source, "Source must not be null");
        Assert.notNull(target, "Target must not be null");

        BeanUtils.copyProperties(source, target);

    }
}
