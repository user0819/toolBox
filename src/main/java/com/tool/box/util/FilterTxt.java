package com.tool.box.util;

import java.io.*;

public class FilterTxt {
    public static void main(String[] args) {
        String inputFile = "/Users/xiang/work/website/toolBox/toolBox/src/main/java/com/tool/box/util/a.txt";  // 输入文件路径
        String outputFile = "/Users/xiang/work/website/toolBox/toolBox/src/main/java/com/tool/box/util/b.txt"; // 输出文件路径
        String skipKeyword = "无法获取描述"; // 要跳过的关键字

        try (BufferedReader reader = new BufferedReader(new FileReader(inputFile));
             BufferedWriter writer = new BufferedWriter(new FileWriter(outputFile))) {
            String line;
            while ((line = reader.readLine()) != null) {
                if (!line.contains(skipKeyword)) {
                    writer.write(line);
                    writer.newLine(); // 换行
                }
            }
            System.out.println("过滤完成，结果已写入" + outputFile);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
