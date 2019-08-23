package cn.orgtec.farm.entity.mapper;

import cn.orgtec.farm.dto.FarmShop;
import cn.orgtec.farm.entity.FarmShopEntity;
import org.springframework.beans.BeanUtils;
import org.springframework.util.Assert;

/**
 *
 * 农家映射器
 *
 * @author Yibo Zhang
 * @date 2019/08/23
 */
public class FarmShopBeanMapper {

    public static FarmShop mapNew(FarmShopEntity source) {
        FarmShop target = new FarmShop();
        map(source, target);
        return target;
    }

    public static void map(FarmShopEntity source, FarmShop target) {

        Assert.notNull(source, "Source must not be null");
        Assert.notNull(target, "Target must not be null");

        BeanUtils.copyProperties(source, target);

    }
}
