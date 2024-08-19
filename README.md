* Project Description: 
This online shopping platform allows users to view products, add them to a cart, and proceed with checkout. The project demonstrates core concepts of web development using Java technologies.

* Features:
1. User registration and login
2. Product browsing and searching
3. Shopping cart management
4. Order processing and checkout
5. Admin panel for product management
6. Technologies Used
7. Frontend: HTML, CSS
   
* Backend: JSP, Servlet, Java
* Database: MySQL 
* Web Server: Apache Tomcat
* Installation
To run this project locally, follow these steps:

Clone the repository:

bash
Copy code
git clone https://github.com/PriyeshGawai/Online-Shopping-Project/
cd online-shopping
* Set up the database:

Create a MySQL database and set up the tables(cart,message.product,User).
Configure the project:

Update the database configuration in the project files (e.g., db.properties).
Deploy on Tomcat:

Deploy the project on Apache Tomcat or any other suitable web server.
Run the application:

Access the application via http://localhost:8080/online-shopping.
* Usage
* User Operations:

Register or login to the platform.
Browse products and add to cart.
Proceed to checkout and place orders.
Admin Operations:

Login to the admin panel.
Add, update, or remove products.

* Cart table:
  CREATE TABLE `cart` (
  `email` varchar(50) DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `price` int DEFAULT NULL,
  `total` int DEFAULT NULL,
  `address` varchar(450) DEFAULT NULL,
  `city` varchar(105) DEFAULT NULL,
  `state` varchar(20) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `mobileNumber` bigint DEFAULT NULL,
  `orderDate` varchar(100) DEFAULT NULL,
  `DeliveryDate` varchar(100) DEFAULT NULL,
  `payment` varchar(100) DEFAULT NULL,
  `transactionId` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci

* Message:
  CREATE TABLE `message` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(50) DEFAULT NULL,
  `subject` varchar(250) DEFAULT NULL,
  `body` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci

* product:
CREATE TABLE `product` (
  `Id` int NOT NULL,
  `name` varchar(500) DEFAULT NULL,
  `category` varchar(500) DEFAULT NULL,
  `price` int DEFAULT NULL,
  `active` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci

* User:
  CREATE TABLE `user` (
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `mobileNumber` bigint DEFAULT NULL,
  `securityQuestion` varchar(200) DEFAULT NULL,
  `answer` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `address` varchar(500) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `Country` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci
