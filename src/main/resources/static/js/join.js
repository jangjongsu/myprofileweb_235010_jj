/**
 * 
 */

 function joinCheck() {
	 
	 if (document.join_frm.mid.value.length == 0){
		 alert("아이디는 필수 입력사항입니다. 다시 확인 해주세요");
		 return false;
	 }
	 
	 if (document.join_frm.mpw.value.length == 0){
		 alert("비밀번호는 필수 입력사항입니다. 다시 확인 해주세요");
		 return false;
	 }
	 if (document.join_frm.mpw_check.value.length == 0){
		 alert("비밀번호체크는 필수 입력사항입니다. 다시 확인 해주세요");
		 return false;
	 }
	 if (document.join_frm.mpw.value != document.join_frm.mpw_check.value){
		 alert("비밀번호와 비밀번호체크가 일치하지않습니다. 다시 확인 해주세요");
		 return false;
	 }
	 
	 if (document.join_frm.mname.value.length == 0){
		 alert("이름는 필수 입력사항입니다. 다시 확인 해주세요");
		 return false;
	 }
	 
	 if (document.join_frm.memail.value.length == 0){
		 alert("이메일는 필수 입력사항입니다. 다시 확인 해주세요");
		 return false;
	 }
	 
	 document.join_frm.submit();
 }