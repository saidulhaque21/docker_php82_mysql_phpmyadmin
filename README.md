# Docker:  docker_php82_mysql_phpmyadmin
Docker for Application: Apache, PHP 82, mysql and phpMyAdmin in docker. 

A PHP Docker application integrating Apache, PHP 8.2, MySQL, and phpMyAdmin offers a comprehensive environment for web development and database management within Docker containers. This setup enables a convenient and portable development environment, making it easier to deploy, manage, and scale web applications.

The key components of this Docker: **docker_php82_mysql_phpmyadmin** setup include:

 **Apache:**  
 Apache is an open-source, widely-used web server software that plays a crucial role in serving web content over the internet. Developed and maintained by the Apache Software Foundation, Apache HTTP Server, commonly known as Apache, is highly regarded for its reliability, stability, and robust performance.

**PHP 8.2:** 
PHP serves as a robust platform for developers to craft websites and web applications that prioritize performance, security, and reliability for end-users. The most recent stable release, PHP 8.2, offers a significant leap in functionality. Launched in December 2022, PHP 8.2 boasts a broad range of enhancements and features. With active support scheduled until December 2024, and security support continuing until December 2025, PHP 8.2 ensures a stable and secure environment for developers to create innovative and efficient web solutions.

**MySQL:** 
MySQL is an open-source relational database management system (RDBMS) known for its speed, reliability, and ease of use. It's widely used in various applications and web development due to its robust performance and scalability.

**phpMyAdmin:** 
phpMyAdmin is a popular web-based graphical user interface (GUI) tool used for managing MySQL databases. It provides an intuitive and user-friendly interface for administering MySQL databases, allowing users to perform various database-related tasks through a web browser.


# Step 1: Pull 
First of all, pull this repository  

# Step 2: Change env file if you want   
Then, go to docker_php82_mysql_phpmyadmin folder 
```
cd docker_php82_mysql_phpmyadmin
```
open file .env and cheange database user, pass, port etc if you want 

```
# Source  DIRECTORY | you can locate anywhere your source code by changing this variable  
APP_SOURCE_DIRECTORY=./src

# mysql default credentials || Change if you want as your requirement 
HOSTNAME=myweb82
MYSQL_USER=droot
MYSQL_PASSWORD=Pass123
MYSQL_TEST_DATABASE=docker_db
MYSQL_ROOT_PASSWORD=RootPass123 

# DEFAULT PORT - apache | MySQL | phpmyadmin || Change if you want as your requirement 
HTTP_PORT=8200
MYSQL_PORT=3308
PHPMYADMIN_PORT=8201
```

# Step 3: Build Docker 
 After that, build this using following docker command 
```
dokcer-compose up -d --build
```
**Note:** You must have Docker installed on your machine.  If not, please install docker from: https://snapcraft.io/install/docker/ubuntu#install

# Step 4: Enjoy 
Browse the application with URL: http://localhost:8200
Which will show one record from database. 

and for phpMyAdmin, Please browse: http://localhost:8201
Insert Server: myweb82db
Username:  droot
Pasword:  Pass123


Thanks
 


