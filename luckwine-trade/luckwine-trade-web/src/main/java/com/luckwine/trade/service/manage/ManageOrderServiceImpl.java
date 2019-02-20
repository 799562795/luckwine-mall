package com.luckwine.trade.service.manage;

import com.alibaba.dubbo.config.annotation.Service;
import com.luckwine.parent.entitybase.request.CommonRequest;
import com.luckwine.parent.entitybase.response.CommonResponse;
import com.luckwine.trade.model.request.CancelOrderRequest;

/**
 * 管理订单服务
 * Created by Winlone on 2018/9/20.
 */
@Service(validation = "true")
public class ManageOrderServiceImpl implements ManageOrderService {

    public CommonResponse<Boolean> cancelOrder(CommonRequest<CancelOrderRequest> request) {
        return null;
    }
}
