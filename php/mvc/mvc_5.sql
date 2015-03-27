CREATE TABLE IF NOT EXISTS `comments` (
`id` int(10) NOT NULL AUTO_INCREMENT,
`user_name` varchar(50) DEFAULT NULL,
`text` text,
`date_create` datetime DEFAULT NULL,
`is_active` tinyint(1) DEFAULT NULL,
PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `category` (
`id` int(10) NOT NULL AUTO_INCREMENT,
`name` varchar(50) DEFAULT NULL,
`is_active` tinyint(1) DEFAULT NULL,
PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

INSERT INTO `category` (`id`, `name`, `is_active`) VALUES
(1, 'Категория 1', 1),
(2, 'Категория 2', 1),
(3, 'Категория 3', 1);

CREATE TABLE IF NOT EXISTS `article` (
`id` int(10) NOT NULL AUTO_INCREMENT,
`id_category` int(10) DEFAULT NULL,
`title` varchar(255) DEFAULT NULL,
`small_text` text,
`text` text,
`date_create` date DEFAULT NULL,
`is_active` tinyint(1) DEFAULT NULL,
PRIMARY KEY (`id`),
KEY `article_fk1` (`id_category`),
CONSTRAINT `article_fk1` FOREIGN KEY (`id_category`) REFERENCES `category` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `blog_mvc`.`article` (`id`, `id_category`, `title`, `small_text`, `text`, `date_create`, `is_active`) VALUES 
(NULL, '1', 'Заголовок статьи 1', 'Короткое описание статьи1', 'Полный текст статьи1', '2014-03-30', '1'),
(NULL, '1', 'Заголовок статьи 2', 'Короткое описание статьи1', 'Полный текст статьи1', '2014-03-30', '1'),
(NULL, '1', 'Заголовок статьи 3', 'Короткое описание статьи1', 'Полный текст статьи1', '2014-03-30', '1');
