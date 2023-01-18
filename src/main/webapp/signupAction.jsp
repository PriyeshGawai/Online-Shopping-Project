<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>

<%

	String name=request.getParameter("name");
	String email=request.getParameter("email");
	String Mobile=request.getParameter("Number");
	String securityquestion=request.getParameter("securityQuestion");
	String Answer=request.getParameter("answer");
	String password=request.getParameter("password");
	String address="";
	String city="";
	String state="";
	String country="";
	
	try{
		Connection conn=ConnectionProvider.getCon();
		PreparedStatement ps=conn.prepareStatement("insert into user values(?,?,?,?,?,?,?,?,?,?)");
		ps.setString(1,name);
		ps.setString(2,email);
		ps.setString(3,Mobile);
		ps.setString(4,securityquestion);
		ps.setString(5,Answer);
		ps.setString(6,password);
		ps.setString(7,address);
		ps.setString(8,city);
		ps.setString(9,state);
		ps.setString(10,country);
		ps.executeUpdate();
		
		response.sendRedirect("signup.jsp?msg=valid");
	}
	catch(Exception e){
		System.out.print(e);
		response.sendRedirect("signup.jsp?msg=Invalid");
		
	}
%>