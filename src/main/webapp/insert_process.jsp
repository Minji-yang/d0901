<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ page import ="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
request.setCharacterEncoding("utf-8");
String id=request.getParameter("id");
String name=request.getParameter("name");
String pass=request.getParameter("pass");
String address=request.getParameter("address");
String hp=request.getParameter("hp");

String Dri="com.mysql.cj.jdbc.Driver";
String Url="jdbc:mysql://localhost/yangjung?serverTimezone=UTC";
Connection conn=null;
PreparedStatement pstmt=null;

String sql="insert into member values(?,?,?,?,?)";

try{Class.forName(Dri);
conn=DriverManager.getConnection(Url,"root","1234");
pstmt=conn.prepareStatement(sql);
pstmt.setString(1,id);
pstmt.setString(2,name);
pstmt.setString(3,pass);
pstmt.setString(4,address);
pstmt.setString(5,hp);

pstmt.executeUpdate();

}
catch(Exception e){System.out.println("Database연결실패");
e.printStackTrace();
}
%>

아이디 :<%=id %><br>
이름 :<%=name %><br>
비밀번호 :<%=pass %><br>
주소 :<%=address %><br>
휴대폰번호 :<%=hp %><br>

</body>
</html>