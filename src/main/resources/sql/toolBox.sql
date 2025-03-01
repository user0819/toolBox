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
INSERT INTO website_category (name, sort) VALUES ('编程工具', 1);
INSERT INTO website_category (name, sort) VALUES ('设计工具', 2);
INSERT INTO website_category (name, sort) VALUES ('学习资源', 3);

-- 初始化 website_detail 表数据
INSERT INTO website_detail (category_id, name, url, description, sort) VALUES (1, 'GitLab', 'https://gitlab.com', '一个基于Git的代码托管平台', 3);
INSERT INTO website_detail (category_id, name, url, description, sort) VALUES (1, 'Bitbucket', 'https://bitbucket.org', '一个基于Git的代码托管平台', 4);
INSERT INTO website_detail (category_id, name, url, description, sort) VALUES (1, 'Jenkins', 'https://www.jenkins.io', '一个开源自动化服务器', 5);
INSERT INTO website_detail (category_id, name, url, description, sort) VALUES (1, 'Travis CI', 'https://travis-ci.com', '一个持续集成服务', 6);
INSERT INTO website_detail (category_id, name, url, description, sort) VALUES (1, 'Docker', 'https://www.docker.com', '一个开源的应用容器引擎', 7);
INSERT INTO website_detail (category_id, name, url, description, sort) VALUES (1, 'Kubernetes', 'https://kubernetes.io', '一个开源的容器编排平台', 8);
INSERT INTO website_detail (category_id, name, url, description, sort) VALUES (1, 'Postman', 'https://www.postman.com', '一个API开发工具', 9);
INSERT INTO website_detail (category_id, name, url, description, sort) VALUES (1, 'Swagger', 'https://swagger.io', '一个用于设计、构建、记录和使用RESTful风格Web服务的开源框架', 10);
INSERT INTO website_detail (category_id, name, url, description, sort) VALUES (2, 'Figma', 'https://www.figma.com', '一个基于云的UI设计工具', 3);
INSERT INTO website_detail (category_id, name, url, description, sort) VALUES (2, 'Sketch', 'https://www.sketch.com', '一个专业级的UI设计工具', 4);
INSERT INTO website_detail (category_id, name, url, description, sort) VALUES (2, 'Photoshop', 'https://www.adobe.com/products/photoshop.html', '一个位图图像编辑器', 5);
INSERT INTO website_detail (category_id, name, url, description, sort) VALUES (2, 'Illustrator', 'https://www.adobe.com/products/illustrator.html', '一个矢量图形编辑器', 6);
INSERT INTO website_detail (category_id, name, url, description, sort) VALUES (2, 'Procreate', 'https://procreate.art', '一个数字绘画软件', 7);
INSERT INTO website_detail (category_id, name, url, description, sort) VALUES (3, 'edX', 'https://www.edx.org', '一个在线学习平台', 3);
INSERT INTO website_detail (category_id, name, url, description, sort) VALUES (3, 'Khan Academy', 'https://www.khanacademy.org', '一个免费的在线学习平台', 4);
INSERT INTO website_detail (category_id, name, url, description, sort) VALUES (3, 'Codecademy', 'https://www.codecademy.com', '一个在线编程学习平台', 5);
INSERT INTO website_detail (category_id, name, url, description, sort) VALUES (3, 'Coursera for Business', 'https://www.coursera.org/for-business', '一个为企业提供定制化学习解决方案的平台', 6);
INSERT INTO website_detail (category_id, name, url, description, sort) VALUES (3, 'LinkedIn Learning', 'https://www.linkedin.com/learning', '一个在线学习平台，专注于职场技能', 7);
INSERT INTO website_detail (category_id, name, url, description, sort) VALUES (3, 'Skillshare', 'https://skl.sh', '一个在线学习平台，提供各种创意课程', 8);
INSERT INTO website_detail (category_id, name, url, description, sort) VALUES (3, 'MasterClass', 'https://www.masterclass.com', '一个在线学习平台，提供大师级课程', 9);
INSERT INTO website_detail (category_id, name, url, description, sort) VALUES (3, 'SoloLearn', 'https://www.sololearn.com', '一个移动学习平台，提供编程课程', 10);