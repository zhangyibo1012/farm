package cn.orgtec.farm.entity.mapper;

import cn.orgtec.farm.dto.Dish;
import cn.orgtec.farm.entity.DishEntity;
import org.springframework.beans.BeanUtils;
import org.springframework.util.Assert;

/**
 * @author Yibo Zhang
 * @date 2019/08/23
 */
public class FarmDishBeanMapper {

    public static Dish mapNew(DishEntity source) {
        Dish target = new Dish();
        map(source, target);
        return target;
    }

    public static void map(DishEntity source, Dish target) {

        Assert.notNull(source, "Source must not be null");
        Assert.notNull(target, "Target must not be null");

        BeanUtils.copyProperties(source, target);

    }
}
