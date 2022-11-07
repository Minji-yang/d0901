<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
body{	
background:#9933dd;
}
#tab{
    width:80%;
    margin:0 auto;
    text-align:center;

}
#c1{
        color:white;
        font-size:10em;


}

</style>
<script> alert("경고");</script>
</head>
<body>
<h1 align="center"  id="c1">학생정보 리스트</h1>
<table border="1" id="tab">

<tr>
<th>학번</th>
<th>이름</th>
<th>생일</th>
<th>전화번호</th>
<th>주소</th>
</tr>

<% 

	String jdbcDriver="com.mysql.cj.jdbc.Driver";
			String jdbcUrl="jdbc:mysql://localhost/yangjung?serverTimezone=UTC";
			Connection conn=null;
			PreparedStatement pstmt=null;
			ResultSet rs=null;
			String sql="select*from student";
			try {
				Class.forName(jdbcDriver);
					conn=DriverManager.getConnection(jdbcUrl,"root","1234");
					pstmt=conn.prepareStatement(sql);
					rs=pstmt.executeQuery();
					while(rs.next()) {
						System.out.print(rs.getInt(1));
						System.out.print(rs.getString(2));
						System.out.println(rs.getString(4));
						System.out.println(rs.getString(8));
						System.out.println(rs.getString(7));
						
			   %>
					<tr >
					<td><%=rs.getInt(1) %></td>
					<td><%=rs.getString(2) %></td>
					<td><%=rs.getString(4) %></td>
					<td><%=rs.getString(8) %></td>
					<td><%=rs.getString(7) %></td>
					</tr>
						
				<%			
					}
					System.out.println("database 연결 성공");
			}
			catch(Exception e ) {
				System.out.println("database 연결 실패");
				e.printStackTrace();
				}
			%>
</table>
</body>
</html>