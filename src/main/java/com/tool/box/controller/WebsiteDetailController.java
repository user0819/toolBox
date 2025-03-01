package com.tool.box.controller;

import com.tool.box.model.WebsiteDetail;
import com.tool.box.service.WebsiteDetailService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/api/details")
public class WebsiteDetailController {
    @Autowired
    private WebsiteDetailService websiteDetailService;

    @GetMapping("/category/{categoryId}")
    public List<WebsiteDetail> getDetailsByCategoryId(@PathVariable Integer categoryId) {
        return websiteDetailService.findByCategoryId(categoryId);
    }
}