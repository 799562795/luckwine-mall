package com.luckwine.goods.model.request.props;

import com.luckwine.parent.entitybase.request.BaseRequest;
import lombok.Data;
import lombok.ToString;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;

@Data
@ToString(callSuper = true)
public class PropsKeyModifyRequest extends BaseRequest {

    @NotNull
    private Long id;

    @NotBlank
    private String key;

}
