<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
String email=session.getAttribute("email").toString();
String id=request.getParameter("id");
String incdec=request.getParameter("quantity");
int price=0;
int total=0;
int quantity=0;
int finaltotal=0;

try{
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	String q="Select * from cart where email='"+email+"' and product_id='"+id+"' and address is Null";
	ResultSet rs=st.executeQuery(q);
	while(rs.next()){
		price=rs.getInt(4);
		total=rs.getInt(5);
		quantity =rs.getInt(3);
	}
	if(quantity==1 && incdec.equals("dec")){
		response.sendRedirect("myCart.jsp?msg=notPossible");
	}
	else if(quantity!=1 && incdec.equals("dec")){
		total-=price;
		quantity-=1;
		st.executeUpdate("update cart set total='"+total+"' ,quantity='"+quantity+"' where email='"+email+"' and product_id='"+id+"' and address is null");
		response.sendRedirect("myCart.jsp?msg=dec");
	}
	else{
		total+=price;
		quantity+=1;
		st.executeUpdate("update cart set total='"+total+"' ,quantity='"+quantity+"' where email='"+email+"' and product_id='"+id+"' and address is null");
		response.sendRedirect("myCart.jsp?msg=inc");
	}
}
catch(Exception e){
	System.out.println(e);
}
%>