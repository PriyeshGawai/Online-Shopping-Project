<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>

<%
String email=session.getAttribute("email").toString();
String mobileNumber=request.getParameter("mobileNumber");
String password =request.getParameter("password");

int check=0;

try{
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	String q1="select * from user where email='"+email+"' and password='"+password+"'";
	ResultSet rs=st.executeQuery(q1);
	while(rs.next()){
		check=1;
		st.executeUpdate("update user set mobileNumber='"+mobileNumber+"' where email='"+email+"'");
		response.sendRedirect("changeMobileNumber.jsp?msg=done");
	}
		if(check==0){
			response.sendRedirect("changeMobileNumber.jsp?msg=wrong");
		}
}
catch(Exception e){
	System.out.println(e);
}
%>