package cn.orgtec.farm.http.request;

import lombok.Data;

import java.io.Serializable;

/**
 * 根据农家 id 对已入驻农家进行上下架
 *
 * @author Yibo Zhang
 * @date 2019/08/21
 */
@Data
public class FarmUpDownRequestData implements Serializable {
    private static final long serialVersionUID = -7365861522095483185L;

    /**
     * 农家 id
     */
    protected Long farmId;

    /**
     * 上下架状态  0下架  1上架
     * 审核状态   0审核中 1审核通过 2审核失败
     */
    protected Integer status;
}
