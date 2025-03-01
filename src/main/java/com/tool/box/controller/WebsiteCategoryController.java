package com.tool.box.controller;

import com.tool.box.model.WebsiteCategory;
import com.tool.box.service.WebsiteCategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/api/categories")
public class WebsiteCategoryController {
    @Autowired
    private WebsiteCategoryService websiteCategoryService;

    @GetMapping
    public List<WebsiteCategory> getAllCategories() {
        return websiteCategoryService.findAll();
    }
}