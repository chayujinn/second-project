<%@page import="DBPKG.Util"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("UTF-8");
String REGIST_MONTH = request.getParameter("REGIST_MONTH");
String C_NO = request.getParameter("C_NO");
String CLASS_AREA = request.getParameter("CLASS_AREA");
String TUITION = request.getParameter("TUITION");
int TUITIONInt = Integer.parseInt(TUITION);
String TEACHER_CODE = request.getParameter("TEACHER_CODE");


try{
	Connection conn = Util.getConnection();
	String sql="insert into TBL_TEACHER_202201 values(?,?,?,?,?)";
	PreparedStatement pstmt = conn.prepareStatement(sql);
	
	pstmt.setString(1,REGIST_MONTH);
	pstmt.setString(2,C_NO);
	pstmt.setString(3,CLASS_AREA);
	pstmt.setInt(4,TUITIONInt);
	pstmt.setString(5,TEACHER_CODE);
	
	pstmt.executeUpdate();



}
catch(Exception e){
	e.printStackTrace();
}
%>

<jsp:forward page="mlist.jsp"></jsp:forward>