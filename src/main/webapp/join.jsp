<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<script type="text/javascript" src="check.js"></script>
<jsp:include page="header.jsp"></jsp:include>
<section style="position:fixed; top:70px; left:0px; width:100%; height:100%;
background-color:lightblue">
<h2 style="text-align:center"><b>수강신청</b></h2>
<form name="frm" method="post" action="action.jsp" style="display:flex; align-items:center; justify-content:center">
<table border="1" style="text-align:center">
<tr>
	<td>수강월</td><td align="left"><input type="text" name="REGIST_MONTH">예)202003</td>
</tr>
<tr>
	<td>회원명</td><td align="left" onchange="change1()">
	<select name="C_NAME">
	<option value="">회원명</option>
	<option value="10001">홍길동</option>
	<option value="10002">장발장</option>
	<option value="10003">임꺽정</option>
	<option value="20001">성춘향</option>
	<option value="20002">이몽룡</option>
	</select>
	</td>
</tr>
<tr>
	<td>회원번호</td><td align="left"><input type="text" name="C_NO" readonly></td>
</tr>
<tr>
	<td>강의장소</td><td>
	<input type="radio" name="CLASS_AREA" value="서울본원">서울본원	
	<input type="radio" name="CLASS_AREA" value="성남분원">성남분원
	<input type="radio" name="CLASS_AREA" value="대전분원">대전분원
	<input type="radio" name="CLASS_AREA" value="부산분원">부산분원
	<input type="radio" name="CLASS_AREA" value="대구분원">대구분원
	</td>
</tr>
<tr>
	<td>강의명</td><td align="left">
	<select name="TEACHER_CODE" onchange="change2()">
	<option value="">강의신청</option>
	<option value="100">초급반</option>
	<option value="200">중급반</option>
	<option value="300">고급반</option>
	<option value="400">심화반</option>
	</select>
	</td>
</tr>
<tr>
	<td>수강료</td><td align="left"><input type="text" name="TUITION" readonly>원</td>
</tr>
<tr>
	<td colspan="2">
	<input type="button" value="수강신청" onclick="addCheck()">
	<input type="button" value="다시쓰기" onclick="res()">
</tr>
</table>
</form>
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>