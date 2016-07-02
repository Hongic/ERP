简单写一写关键的数据

数据库文件在 
 	\Public\Data
 	使用的是多库夺表

数据库的配置文件
	Application\Common\Conf\config.php
	找到以下数据
    /*
     * 数据库设置 
     */
    'DB_TYPE' => 'mysql', // 数据库类型
    'DB_HOST' => '127.0.0.1', // 服务器地址
    'DB_NAME' => 'db_erp', // 数据库名
    'DB_USER' => 'root', // 用户名
    'DB_PWD' => 'root', // 密码
    'DB_PORT' => '3306', // 端口    注意：服务器的端口是 3306
    'DB_PREFIX' => 'tb_', // 数据库表前缀
    'DB_CHARSET' => 'utf8', // 数据库编码默认采用utf8


