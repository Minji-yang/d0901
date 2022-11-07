<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import ="java.sql.*"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
#tab{
    width:60%;
    margin:0 auto;
}
h1{
     text-align:center;  }




</style>
<script>                                    //이건 위치를 어디에 갖다놔도 실행됨
function check(){
	 if(document.frm.id.value==""){
		 alert("아이디를 입력하세요.")            //아이디 안적으면 메시지 뜨게
		 document.frm.id.focus();       //커서 위치지정  그대로두도록  
			 }
	 else if(document.frm.id.value.length>12||document.frm.id.value.length<8){
		 alert("아이디는 8~12자리입니다.")         //길이제한  
		 document.frm.id.focus();// 오답  else if(document.frm.id.value.length>12||length<8)
	 }
	 else if(document.frm.name.value==""){
		 alert("이름을 입력하세요")
		 document.frm.name.focus();
	 }
	 else if(document.frm.pass.value==""){
		 alert("비밀번호를 입력하세요")
		 documet.frm.pass.focus();
		 	 }
	 else if(document.frm.address.value==""){
		 alert("주소를 입력하세요")
		 document.frm.address.focus();
	 }
	 else if(document.frm.hp.value==""){
		 alert("휴대폰번호를 입력하세요")
		 document.frm.hp.focus();
	 }
	 else{
		 document.frm.submit();             //문제가없으면 저장하는것   액션으로 지정해놓은것으로 넘어감 (404에러뜸)
	 }
}
</script>

</head>
<body>
<body>
<%@ include file="header.jsp" %>
<%@ include file="navi.jsp" %>
<section>
<h1>회원  등록</h1>
<form name="frm" method=post  action="insert_process.jsp">              
<table border="1" id="tab">

<tr>
  <th>아이디</th>
  <td><input type="text" name="id"></td>
</tr>

<tr>
<th>이름</th>
<td><input type="text" name="name"></td>
</tr>

<tr>
<th>비밀번호</th>
<td><input type="password" name="pass"></td>
</tr>

<tr>
<th>주소</th>
<td><input type="text" name="address" size=30></td>
</tr>

<tr>
<th>휴대폰번호</th>
<td><input type="text" name="hp"></td>
</tr>

<tr>
<td colspan="2" align="center"> 
<input type="button" value="저장" onclick="check()">
<input type="reset" value="취소">
</td>
</tr>


</table>
</form>
<%@ include file ="footer.jsp" %>
 </section>
</body>
</html>