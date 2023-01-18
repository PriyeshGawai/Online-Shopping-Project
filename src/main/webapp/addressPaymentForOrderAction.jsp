<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>

<%
String email=session.getAttribute("email").toString();
String address=request.getParameter("address");
String city=request.getParameter("city");
String state=request.getParameter("state");
String country=request.getParameter("country");
String mobileNumber=request.getParameter("mobileNumber");
String payment=request.getParameter("paymentMethod");
String transaction=request.getParameter("transactionId");
String status="bill";

try{
	Connection con=ConnectionProvider.getCon();
	String q1="update user set address=?,city=?,state=?,country=?,mobileNumber=? where email=?";
	PreparedStatement ps=con.prepareStatement(q1);
	ps.setString(1, address);
	ps.setString(2, city);
	ps.setString(3, state);
	ps.setString(4, country);
	ps.setString(5, mobileNumber);
	ps.setString(6, email);
	ps.executeUpdate();
	
	String q2="update cart set address=?,city=?,state=?,country=?,mobileNumber=?,orderDate=now(),DeliveryDate=DATE_ADD(orderDate,INTERVAL 7 day),payment=?,transactionId=?, status=? where email=? and address is NULL";
	
	PreparedStatement ps2=con.prepareStatement(q2);
	ps2.setString(1, address);
	ps2.setString(2, city);
	ps2.setString(3, state);
	ps2.setString(4, country);
	ps2.setString(5, mobileNumber);
	ps2.setString(6, payment);
	ps2.setString(7, transaction);
	ps2.setString(8, status);
	ps2.setString(9, email);
	
	ps2.executeUpdate();
	response.sendRedirect("bill.jsp");
	
}
catch(Exception e){
	System.out.println(e);
}
%>