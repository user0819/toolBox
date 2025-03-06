package com.tool.box.controller;

import com.tool.box.model.WebsiteDetail;
import com.tool.box.service.WebsiteDetailService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

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

    @PutMapping("/{id}")
    public int updateDetail(@RequestBody WebsiteDetail websiteDetail) {
        return websiteDetailService.updateById(websiteDetail);

    }

    @DeleteMapping("/{id}")
    public int deleteDetail(@PathVariable Integer id) {
        return websiteDetailService.deleteById(id);
    }

    @PostMapping("/")
    public int saveDetail(@RequestBody WebsiteDetail websiteDetail) {
        return websiteDetailService.saveDetail(websiteDetail);
    }

}