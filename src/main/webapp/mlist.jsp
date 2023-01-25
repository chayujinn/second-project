<%@page import="java.text.DecimalFormat"%>
<%@page import="DBPKG.Util"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<section style="position:fixed; top:70px; left:0px; width:100%; height:100%;
background-color:lightblue">
<h2 style="text-align:center"><b>회원정보조회</b></h2>
<form name="frm" method="post" action="action.jsp" style="display:flex; align-items:center; justify-content:center">
<table border="1" style="text-align:center">
<tr>
	<td>수강일</td>
	<td>회원번호</td>
	<td>회원명</td>
	<td>강의명</td>
	<td>강의장소</td>
	<td>수강료</td>
	<td>등급</td>
</tr>
<%
request.setCharacterEncoding("UTF-8");
try{
	Connection conn = Util.getConnection();
	String sql="select c.REGIST_MONTH,m.c_no,m.c_name,t.CLASS_NAME,c.CLASS_AREA,c.TUITION,m.grade from TBL_TEACHER_202201 t,TBL_MEMBER_202201 m,TBL_CLASS_202201 c where m.c_no=c.c_no and t.TEACHER_CODE=c.TEACHER_CODE";
	PreparedStatement pstmt = conn.prepareStatement(sql);
	ResultSet rs = pstmt.executeQuery();
	while(rs.next()){
		

		String date = rs.getString(1);
		date=date.substring(0,4)+"년"+date.substring(4,6)+"월";
		
		int class_price=rs.getInt(6);
		DecimalFormat trans=new DecimalFormat("￦###,###,###");
		String price = trans.format(class_price);
%>
<tr>
	<td><%=date %></td>
	<td><%=rs.getString(2) %></td>
	<td><%=rs.getString(3) %></td>
	<td><%=rs.getString(4) %></td>
	<td><%=rs.getString(5) %></td>
	<td><%=price %></td>
	<td><%=rs.getString(7) %></td>
</tr>
<%		
	}
}
catch(Exception e){
	e.printStackTrace();
}
%>

</table>
</form>
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>