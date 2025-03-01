package com.tool.box.model;

import lombok.Data;

@Data
public class WebsiteDetail {
    private Integer id;
    private Integer categoryId;
    private String name;
    private String url;
    private String description;
    private Integer sort;
}