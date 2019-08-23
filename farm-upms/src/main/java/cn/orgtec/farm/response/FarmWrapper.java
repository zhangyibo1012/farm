package cn.orgtec.farm.response;

import com.fasterxml.jackson.annotation.JsonUnwrapped;
import lombok.Data;

import java.io.Serializable;

/**
 *  farm 包装器
 *
 * @author Yibo Zhang
 * @date 2019/08/23
 */
@Data
public class FarmWrapper<T> implements Serializable {
    private static final long serialVersionUID = -2743657968099629377L;

    @JsonUnwrapped
    private T wrapper;

}
