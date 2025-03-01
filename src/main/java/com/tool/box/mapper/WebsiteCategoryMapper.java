package com.tool.box.mapper;

import com.tool.box.model.WebsiteCategory;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface WebsiteCategoryMapper {
    List<WebsiteCategory> findAll();
}