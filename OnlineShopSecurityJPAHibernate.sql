CREATE USER IF NOT EXISTS jwduser IDENTIFIED BY 'pass';

DROP DATABASE IF EXISTS OnlineShopSecurityJPAHibernate;
CREATE DATABASE OnlineShopSecurityJPAHibernate DEFAULT CHARACTER SET utf8;

USE OnlineShopSecurityJPAHibernate;

GRANT ALL ON OnlineShopSecurityJPAHibernate.* TO 'jwduser'@'%';

FLUSH PRIVILEGES;