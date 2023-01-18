<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>

<%
	try{
		Connection conn=ConnectionProvider.getCon();
		Statement st=conn.createStatement();
		String q1="Create table user(name varchar(100),email varchar(100) primary key,mobileNumber bigint,securityQuestion varchar(200),answer varchar(100),password varchar(100),address varchar(500),city varchar(100),state varchar(100),Country varchar(100))";
		String q2="Create table product(Id int ,name varchar(500),category varchar(500),price int,active varchar(15))";
		String q3="create table cart(email varchar(50),product_id int,quantity int,price int,total int,address varchar(450),city varchar(105),state varchar(20),country varchar(50),mobileNumber bigint,orderDate varchar(100),DeliveryDate varchar(100),payment varchar(100),transactionId varchar(100),status varchar(100))";
		String q4="create table message (id int auto_increment,email varchar(50),subject varchar(250),body varchar(1000),primary key(id))";
		System.out.println(q1);
		System.out.println(q2);
		System.out.println(q3);
		//st.execute(q1);
		//st.execute(q2);
		//st.execute(q3);
		st.execute(q4);
		System.out.println("Table Created!");
		conn.close();
	}
catch(Exception e)
{
	System.out.println(e);
}


%>