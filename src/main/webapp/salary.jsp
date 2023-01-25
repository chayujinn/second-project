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
<h2 style="text-align:center"><b>강사조회</b></h2>
<form name="frm" method="post" action="action.jsp" style="display:flex; align-items:center; justify-content:center">
<table border="1" style="text-align:center">
<tr>
	<td>강사코드</td>
	<td>강의명</td>
	<td>강사명</td>
	<td>총매출</td>
</tr>
<%
request.setCharacterEncoding("UTF-8");
try{
	Connection conn = Util.getConnection();
	String sql="select c.TEACHER_CODE,t.CLASS_NAME,t.TEACHER_NAME,sum(c.TUITION)  from TBL_TEACHER_202201 t,TBL_CLASS_202201 c where t.TEACHER_CODE=c.TEACHER_CODE group by c.TEACHER_CODE,t.CLASS_NAME,t.TEACHER_NAME order by TEACHER_CODE";
	PreparedStatement pstmt = conn.prepareStatement(sql);
	ResultSet rs = pstmt.executeQuery();
	while(rs.next()){
		
		int class_price=rs.getInt(4);
		DecimalFormat trans=new DecimalFormat("￦###,###,###");
		String price = trans.format(class_price);
%>
<tr>
	<td><%=rs.getString(1) %></td>
	<td><%=rs.getString(2) %></td>
	<td><%=rs.getString(3) %></td>
	<td><%=price %></td>
	
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