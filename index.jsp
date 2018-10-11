
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import = "java.sql.*" %>

<%
 Connection conn=null; 
 try{
 Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
 String jdbcDriver = "jdbc:sqlserver://localhost:3433;databaseName=testjsp;";
 String dbUser = "testjsp";
 String dbPass = "1q2w3e$R";
 conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
 
 Statement Stmt = conn.createStatement();
 
 ResultSet rs = Stmt.executeQuery("select * from f_user");
 
 while(rs.next())
{
	out.println(rs.getString("id"));
	out.println(rs.getString("name"));
}
 //비번 제대로 입력 했습니다. 
  out.println("연결 성공");


 } catch(Exception e){
  out.println("연결 실패"); 
   e.printStackTrace();
 } finally {
   conn.close(); 
 }
%>   

안녕하세요<BR>
<a href="test.html">테스트</a>
