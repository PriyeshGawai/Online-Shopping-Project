<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>

<%
String email=request.getParameter("email");
String number=request.getParameter("number");
String securityQuestion=request.getParameter("securityQuestion");
String answer=request.getParameter("answer");
String password=request.getParameter("newPassword");

int check=0;

try{
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from user where email='"+email+ "' and  mobileNumber='"+number+"' and securityQuestion='"+securityQuestion+"' and answer='"+answer+"'");
	
	while(rs.next()){
		check=1;
		st.executeUpdate("update user set password='"+password+"' where email='"+email+"' ");
		response.sendRedirect("forgotPassword.jsp?msg=done");
		
	}
	if(check==0){
		response.sendRedirect("forgotPassword.jsp?msg=Invalid");
	}
}
catch(Exception e){
	System.out.print(e);
	
}

%>