<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>

<%
String email=session.getAttribute("email").toString();
String newanswer=request.getParameter("newanswer");
String password =request.getParameter("password");
String securityQuestion=request.getParameter("securityQuestion");
int check=0;

try{
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	String q1="select * from user where email='"+email+"' and password='"+password+"'";
	ResultSet rs=st.executeQuery(q1);
	while(rs.next()){
		check=1;
		st.executeUpdate("update user set securityQuestion='"+securityQuestion+"',answer='"+newanswer+"' where email='"+email+"'");
		response.sendRedirect("changeSecurityQuestion.jsp?msg=done");
	}
		if(check==0){
			response.sendRedirect("changeSecurityQuestion.jsp?msg=wrong");
		}
}
catch(Exception e){
	System.out.println(e);
}
		
		
%>