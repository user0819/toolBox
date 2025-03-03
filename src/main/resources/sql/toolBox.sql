create database toolBox ;
use toolBox;

drop table if exists website_category;
CREATE TABLE website_category (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    sort INT NOT NULL
);

drop table if exists website_detail;
CREATE TABLE website_detail (
    id INT AUTO_INCREMENT PRIMARY KEY,
    category_id INT NOT NULL,
    name VARCHAR(255) NOT NULL,
    url VARCHAR(255) NOT NULL,
    description TEXT,
    sort INT NOT NULL
);

-- 初始化 website_category 表数据
INSERT INTO toolbox.website_category (id, name, sort) VALUES (1, 'AI工具', 1);
INSERT INTO toolbox.website_category (id, name, sort) VALUES (2, '编程工具', 2);
INSERT INTO toolbox.website_category (id, name, sort) VALUES (3, '文档工具', 3);
INSERT INTO toolbox.website_category (id, name, sort) VALUES (4, '图片工具', 4);
INSERT INTO toolbox.website_category (id, name, sort) VALUES (5, '设计工具', 5);
INSERT INTO toolbox.website_category (id, name, sort) VALUES (6, '效率工具', 6);
INSERT INTO toolbox.website_category (id, name, sort) VALUES (7, '学习资源', 7);


INSERT INTO toolbox.website_detail (id, category_id, name, url, description, sort) VALUES (1, 1, 'ChatGPT', 'https://chat.openai.com/', 'OpenAI官方对话平台', 1);
INSERT INTO toolbox.website_detail (id, category_id, name, url, description, sort) VALUES (2, 1, '深度求索', 'https://chat.deepseek.com/', '国产代码生成AI', 2);
INSERT INTO toolbox.website_detail (id, category_id, name, url, description, sort) VALUES (3, 1, 'Kimi Chat', 'https://kimi.moonshot.cn/', '长文本分析助手', 3);
INSERT INTO toolbox.website_detail (id, category_id, name, url, description, sort) VALUES (4, 1, '腾讯元宝', 'https://yuanbao.tencent.com/', '腾讯元宝', 3);
INSERT INTO toolbox.website_detail (id, category_id, name, url, description, sort) VALUES (5, 1, '豆包', 'https://www.doubao.com/chat/', '豆包', 3);
INSERT INTO toolbox.website_detail (id, category_id, name, url, description, sort) VALUES (6, 1, '问小白', 'https://www.wenxiaobai.com/chat', '问小白', 3);
INSERT INTO toolbox.website_detail (id, category_id, name, url, description, sort) VALUES (7, 1, '文心一言', 'https://yiyan.baidu.com/', '文心一言', 3);
INSERT INTO toolbox.website_detail (id, category_id, name, url, description, sort) VALUES (8, 1, '秘塔AI搜索', 'https://metaso.cn/', '中文AI搜索引擎', 4);
INSERT INTO toolbox.website_detail (id, category_id, name, url, description, sort) VALUES (9, 1, '智谱清言', 'https://chatglm.cn/', '清华系大模型平台', 5);
INSERT INTO toolbox.website_detail (id, category_id, name, url, description, sort) VALUES (10, 1, '天工AI', 'https://tongyi.aliyun.com/', '阿里云智能助手', 6);
INSERT INTO toolbox.website_detail (id, category_id, name, url, description, sort) VALUES (11, 1, 'Midjourney', 'https://www.midjourney.com', 'AI绘画生成器', 100);
INSERT INTO toolbox.website_detail (id, category_id, name, url, description, sort) VALUES (12, 1, 'Stable Diffusion', 'https://stability.ai/', '开源文生图模型', 101);
INSERT INTO toolbox.website_detail (id, category_id, name, url, description, sort) VALUES (13, 1, 'Perplexity', 'https://perplexity.ai', '实时联网AI问答', 102);
INSERT INTO toolbox.website_detail (id, category_id, name, url, description, sort) VALUES (14, 1, 'Claude', 'https://claude.ai', '长文本处理专家', 103);
INSERT INTO toolbox.website_detail (id, category_id, name, url, description, sort) VALUES (15, 1, 'Suno', 'https://suno.ai', 'AI音乐生成平台', 104);
INSERT INTO toolbox.website_detail (id, category_id, name, url, description, sort) VALUES (16, 1, 'Runway', 'https://runway.ml', '视频生成工具', 105);
INSERT INTO toolbox.website_detail (id, category_id, name, url, description, sort) VALUES (17, 2, 'GitHub', 'https://github.com', '全球最大代码托管平台', 1);
INSERT INTO toolbox.website_detail (id, category_id, name, url, description, sort) VALUES (18, 2, 'Gitee', 'https://gitee.com', '国内代码托管平台', 2);
INSERT INTO toolbox.website_detail (id, category_id, name, url, description, sort) VALUES (19, 2, 'LeetCode', 'https://leetcode.cn', '算法训练平台', 106);
INSERT INTO toolbox.website_detail (id, category_id, name, url, description, sort) VALUES (20, 2, 'JSON.cn', 'https://www.json.cn/', 'JSON格式校验工具', 4);
INSERT INTO toolbox.website_detail (id, category_id, name, url, description, sort) VALUES (21, 2, 'VSCode', 'https://code.visualstudio.com', '微软开源编辑器', 100);
INSERT INTO toolbox.website_detail (id, category_id, name, url, description, sort) VALUES (22, 2, 'JetBrains', 'https://www.jetbrains.com', '专业IDE套件', 101);
INSERT INTO toolbox.website_detail (id, category_id, name, url, description, sort) VALUES (23, 2, 'Postman', 'https://www.postman.com', 'API开发调试工具', 102);
INSERT INTO toolbox.website_detail (id, category_id, name, url, description, sort) VALUES (24, 2, 'Docker', 'https://www.docker.com', '容器化部署平台', 103);
INSERT INTO toolbox.website_detail (id, category_id, name, url, description, sort) VALUES (25, 2, 'Jupyter', 'https://jupyter.org', '交互式编程环境', 104);
INSERT INTO toolbox.website_detail (id, category_id, name, url, description, sort) VALUES (26, 2, 'CodePen', 'https://codepen.io', '前端代码沙盒', 105);
INSERT INTO toolbox.website_detail (id, category_id, name, url, description, sort) VALUES (27, 2, 'CodeRunner', 'https://coderunner.app/', '轻量级代码编辑器', 106);
INSERT INTO toolbox.website_detail (id, category_id, name, url, description, sort) VALUES (28, 2, 'Swagger', 'https://swagger.io', 'API文档生成器', 107);
INSERT INTO toolbox.website_detail (id, category_id, name, url, description, sort) VALUES (29, 2, 'Stack Overflow', 'https://stackoverflow.com', '开发者问答社区', 108);
INSERT INTO toolbox.website_detail (id, category_id, name, url, description, sort) VALUES (30, 3, 'ProcessOn', 'https://processon.com', '在线流程图工具', 1);
INSERT INTO toolbox.website_detail (id, category_id, name, url, description, sort) VALUES (31, 3, 'XMind', 'https://xmind.cn', '思维导图软件', 2);
INSERT INTO toolbox.website_detail (id, category_id, name, url, description, sort) VALUES (32, 3, 'Markdown指南', 'https://markdown.com.cn', '语法手册与编辑器', 3);
INSERT INTO toolbox.website_detail (id, category_id, name, url, description, sort) VALUES (33, 3, '腾讯文档', 'https://docs.qq.com', '在线协作办公套件', 4);
INSERT INTO toolbox.website_detail (id, category_id, name, url, description, sort) VALUES (34, 3, '语雀', 'https://www.yuque.com', '结构化知识库', 101);
INSERT INTO toolbox.website_detail (id, category_id, name, url, description, sort) VALUES (35, 3, 'Typora', 'https://typora.io', '沉浸式Markdown编辑器', 103);
INSERT INTO toolbox.website_detail (id, category_id, name, url, description, sort) VALUES (36, 3, 'PDF555', 'https://www.pdf555.net', 'PDF转换处理工具', 100);
INSERT INTO toolbox.website_detail (id, category_id, name, url, description, sort) VALUES (37, 3, 'Notion', 'https://www.notion.so', 'All-in-one工作台', 100);
INSERT INTO toolbox.website_detail (id, category_id, name, url, description, sort) VALUES (38, 3, 'Confluence', 'https://www.atlassian.com/confluence', '团队知识管理', 102);
INSERT INTO toolbox.website_detail (id, category_id, name, url, description, sort) VALUES (39, 3, 'Obsidian', 'https://obsidian.md', '双向链接笔记工具', 104);
INSERT INTO toolbox.website_detail (id, category_id, name, url, description, sort) VALUES (40, 3, '飞书文档', 'https://www.feishu.cn', '智能办公套件', 105);
INSERT INTO toolbox.website_detail (id, category_id, name, url, description, sort) VALUES (41, 3, 'Quip', 'https://quip.com', 'Slack集成文档', 106);
INSERT INTO toolbox.website_detail (id, category_id, name, url, description, sort) VALUES (42, 4, 'TinyPNG', 'https://tinypng.com', '智能图片压缩', 1);
INSERT INTO toolbox.website_detail (id, category_id, name, url, description, sort) VALUES (43, 4, 'AI抠图神器', 'https://www.remove.bg', '自动背景去除', 2);
INSERT INTO toolbox.website_detail (id, category_id, name, url, description, sort) VALUES (44, 4, 'Pixabay', 'https://pixabay.com', '免费图片素材库', 3);
INSERT INTO toolbox.website_detail (id, category_id, name, url, description, sort) VALUES (45, 4, 'Unsplash', 'https://unsplash.com', '高质量摄影图库', 4);
INSERT INTO toolbox.website_detail (id, category_id, name, url, description, sort) VALUES (46, 4, 'Canva', 'https://www.canva.com', '在线设计平台', 100);
INSERT INTO toolbox.website_detail (id, category_id, name, url, description, sort) VALUES (47, 4, 'Figma', 'https://www.figma.com', '界面设计工具', 101);
INSERT INTO toolbox.website_detail (id, category_id, name, url, description, sort) VALUES (48, 4, 'Photoshop', 'https://www.adobe.com/photoshop', '专业图像处理', 102);
INSERT INTO toolbox.website_detail (id, category_id, name, url, description, sort) VALUES (49, 4, 'GIMP', 'https://www.gimp.org', '开源图像编辑器', 103);
INSERT INTO toolbox.website_detail (id, category_id, name, url, description, sort) VALUES (50, 4, 'Photopea', 'https://www.photopea.com', '在线PS替代品', 104);
INSERT INTO toolbox.website_detail (id, category_id, name, url, description, sort) VALUES (51, 4, 'Fotor', 'https://www.fotor.com', '一键图片美化', 105);
INSERT INTO toolbox.website_detail (id, category_id, name, url, description, sort) VALUES (52, 5, 'Framer', 'https://www.framer.com', '交互原型设计工具', 1);
INSERT INTO toolbox.website_detail (id, category_id, name, url, description, sort) VALUES (53, 5, 'MasterGo', 'https://mastergo.com', '国产Figma替代', 2);
INSERT INTO toolbox.website_detail (id, category_id, name, url, description, sort) VALUES (54, 5, 'Adobe XD', 'https://www.adobe.com/xd', 'UI/UX设计工具', 100);
INSERT INTO toolbox.website_detail (id, category_id, name, url, description, sort) VALUES (55, 5, 'Sketch', 'https://www.sketch.com', 'Mac专用设计工具', 101);
INSERT INTO toolbox.website_detail (id, category_id, name, url, description, sort) VALUES (56, 5, 'InVision', 'https://www.invisionapp.com', '原型交互平台', 102);
INSERT INTO toolbox.website_detail (id, category_id, name, url, description, sort) VALUES (57, 6, '滴答清单', 'https://dida365.com', '任务管理工具', 1);
INSERT INTO toolbox.website_detail (id, category_id, name, url, description, sort) VALUES (58, 6, 'Flomo', 'https://flomoapp.com', '卡片笔记工具', 2);
INSERT INTO toolbox.website_detail (id, category_id, name, url, description, sort) VALUES (59, 6, 'Todoist', 'https://todoist.com', '跨平台待办清单', 100);
INSERT INTO toolbox.website_detail (id, category_id, name, url, description, sort) VALUES (60, 6, 'Trello', 'https://trello.com', '看板项目管理', 101);
INSERT INTO toolbox.website_detail (id, category_id, name, url, description, sort) VALUES (61, 7, 'Z-Library', 'https://zh.z-lib.gs/', '电子书资源库', 1);
INSERT INTO toolbox.website_detail (id, category_id, name, url, description, sort) VALUES (62, 4, '阿里云图标矢量库', 'https://www.iconfont.cn/', '阿里云图标矢量库', 2);
