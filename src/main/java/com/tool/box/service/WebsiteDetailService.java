package com.tool.box.service;

import com.tool.box.mapper.WebsiteDetailMapper;
import com.tool.box.model.WebsiteDetail;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class WebsiteDetailService {
    @Autowired
    private WebsiteDetailMapper websiteDetailMapper;

    public List<WebsiteDetail> findByCategoryId(Integer categoryId) {
        return websiteDetailMapper.findByCategoryId(categoryId);
    }

    public int updateById(WebsiteDetail websiteDetail) {
        return websiteDetailMapper.updateDetail(websiteDetail);

    }

    public int deleteById(Integer id) {
        return websiteDetailMapper.deleteById(id);
    }

    public int saveDetail(WebsiteDetail websiteDetail) {
        return websiteDetailMapper.saveDetail(websiteDetail);
    }
}