function addCheck(){
	if(frm.REGIST_MONTH.value.length==0){
		alert("REGIST_MONTH");
		frm.REGIST_MONTH.focus();
		return false;
	}
	else if(frm.C_NAME.value.length==0){
		alert("C_NAME");
		frm.C_NAME.focus();
		return false;
	}
	else if(frm.CLASS_AREA .value.length==0){
		alert("CLASS_AREA ");
		frm.CLASS_AREA .focus();
		return false;
	}
	else if(frm.TEACHER_CODE.value.length==0){
		alert("TEACHER_CODE");
		frm.TEACHER_CODE.focus();
		return false;
	}
	else
	alert("수강신청성공성공!")
	document.frm.submit();
	return true;
}
function res(){
	alert("다시쓰자!");
	document.frm.reset();
}
function change1(){
	
	document.frm.C_NO.value=document.frm.C_NAME.value;
}
function change2(){
	
	if(document.frm.C_NAME.value>=20000)
	
	document.frm.TUITION.value=document.frm.TEACHER_CODE.value*1000/2;
	
	else
	
	document.frm.TUITION.value=document.frm.TEACHER_CODE.value*1000;
}