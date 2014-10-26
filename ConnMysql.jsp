<%@ page language="java" import="java.sql.*" pageEncoding="UTF-8" %>
<!--  连接Mysql数据库 -->
<%
	String driver = "com.mysql.jdbc.Driver";
	String url = "jdbc:mysql://localhost:3306/test";
	String user = "root";
	String password = "";

	Connection conn = null;
	ResultSet rs = null;
	PreparedStatement ps = null;
	
	Class.forName(driver);
	conn = DriverManager.getConnection(url, user, password);
	ps = conn.prepareStatement("select * from test1");
	rs = ps.executeQuery();
	
	while(rs.next()){ 
	%>
		<table border="1">
		<tr>
		<td><%= rs.getString(1) %></td>
		<td><%= rs.getString(2) %></td>
		</tr>
		</table>
	<%	
	}
 %>