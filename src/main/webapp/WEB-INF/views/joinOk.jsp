<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입성공</title>
<link rel="stylesheet" href="/resources/css/title.css">
<link rel="stylesheet" href="/resources/css/header.css">
<link rel="stylesheet" href="/resources/css/footer.css">
<link rel="stylesheet" href="/resources/css/content.css">
</head>
<body>
		<%
		int checkId = Integer.parseInt(request.getAttribute("checkId").toString());

		if(checkId == 1){
		%>
		<script type="text/javascript">
			alert("입력하신 아이는 이미 가입된 아이디 입니다. 다시입력해주세요");
			history.go(-1);
		</script>	
		<%
		}
		%>
	<%@ include file="include/header.jsp" %>
	<center>
	<table border="0" cellspacing="0" cellpadding="20" width="75%">
		<tr>
			<td class="titlbox">
				<span class="title01">DEVELLOPER JANG'S PROFILE</span>
			</td>
		</tr>
		<tr>
			<td class="titlbox">
				<span class="title02">안녕하세요 장종수 입니다. 반갑습니다.</span>
			</td>
		</tr>
		<tr>
			<td>
			<center>
				<table border="0" cellspacing="0" cellpadding="10" width="80%">
					<tr>
						<td class="contentbox">
							<center>
								<table  border="0" cellspacing="0" cellpadding="10">
									<tr>
										<td class="main_text">
											회원가입 성공 여부 : ${joinFlag }<br>
											${memberName }님 회원가입을 축하드립니다.<br>
											가입하신 아이디는 ${memberId } 입니다.<br>
											<input class="contentbtn01" type="button" value="로그인 바로가기" onclick="script:window.location.href='login'">
										</td>
									</tr>
								</table>
							</center>
						</td>
					</tr>
				</table>
				</center>
			</td>
		</tr>
	</table>
	</center>
	<%@ include file="include/footer.jsp" %>
</body>
</html>