package com.luckwine.oss.common.vo;

import lombok.Data;

import java.io.Serializable;

/**
 * @author HowellYang
 */
@Data
public class EsInfo implements Serializable{

    private String cluster_name;

    private String status;

    private String number_of_nodes;

    private Integer count;
}
