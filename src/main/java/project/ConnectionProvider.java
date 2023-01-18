package project;

import java.sql.*;
public class ConnectionProvider {

	public static Connection getCon() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			String url="jdbc:Mysql://localhost:3306/OSPJSP";
			String pass="root";
			String username="root";
			
			Connection conn=DriverManager.getConnection(url, username, pass);
			return conn;
			
		} catch (Exception e) {
			System.out.println(e);
			return null;
		}
	}
}
