package com.tool.box.util;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

import java.io.File;
import java.io.IOException;
import java.sql.*;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class BookmarkParser {

    private static final String BOOKMARK_FILE_PATH = "/Users/xiang/Desktop/bookmark/bookmarks_2025_3_2.html"; // 替换为实际的书签文件路径
    private static final Map<String, Integer> categoryNameToId = new HashMap<>();

    public static void main(String[] args) {
        parseBookmarksAndInsertIntoDB();
    }

    public static void parseBookmarksAndInsertIntoDB() {
        List<String> categoryNames = new ArrayList<>();
        List<WebsiteDetail> websiteDetails = new ArrayList<>();

        try {
            // 解析书签文件
            Document doc = Jsoup.parse(new File(BOOKMARK_FILE_PATH), "UTF-8");
            Elements h3Elements = doc.select("H3");
            for (Element h3 : h3Elements) {
                categoryNames.add(h3.text());
            }

            Elements aElements = doc.select("A");
            for (Element a : aElements) {
                String url = a.attr("HREF");
                WebsiteDetail detail = new WebsiteDetail();
                detail.setUrl(url);
                websiteDetails.add(detail);
            }

            // 插入分类信息到 website_category 表
            insertCategoriesIntoDB(categoryNames);

            // 为每个网站详情获取名称和描述并插入到 website_detail 表
            for (WebsiteDetail detail : websiteDetails) {
                String name = getWebsiteName(detail.getUrl());
                String description = getWebsiteDescription(detail.getUrl());
                detail.setName(name);
                detail.setDescription(description);
                insertWebsiteDetailIntoDB(detail);
            }
        } catch (IOException | SQLException e) {
            e.printStackTrace();
        }
    }

    public static void insertCategoriesIntoDB(List<String> categoryNames) {

        int sort = 1;
        for (String categoryName : categoryNames) {
            String format = "INSERT INTO website_category (name, sort) VALUES (%s,%s)";
            categoryNameToId.put(categoryName, sort);
            System.out.println(String.format(format, categoryName, sort));
            sort++;
        }
    }

    public static void insertWebsiteDetailIntoDB(WebsiteDetail detail) throws SQLException {

        Integer categoryId = categoryNameToId.get(detail.getName());


        String format = "INSERT INTO website_detail (category_id, name, url, description, sort) VALUES (%s,%s,%s,%s,%s)";
        System.out.println(String.format(format, categoryId, detail.getName(), detail.getUrl(), detail.getDescription(), 1));
    }


    public static String getWebsiteName(String url) {
        try {
            Document doc = Jsoup.connect(url).get();
            return doc.title();
        } catch (IOException e) {
            return "无法获取名称";
        }
    }

    public static String getWebsiteDescription(String url) {
        try {
            Document doc = Jsoup.connect(url).get();
            Element metaDescription = doc.select("meta[name=description]").first();
            if (metaDescription != null) {
                return metaDescription.attr("content");
            } else {
                return "无法获取描述";
            }
        } catch (IOException e) {
            return "无法获取描述";
        }
    }

    static class WebsiteDetail {
        private String url;
        private String name;
        private String description;

        public String getUrl() {
            return url;
        }

        public void setUrl(String url) {
            this.url = url;
        }

        public String getName() {
            return name;
        }

        public void setName(String name) {
            this.name = name;
        }

        public String getDescription() {
            return description;
        }

        public void setDescription(String description) {
            this.description = description;
        }
    }
}
