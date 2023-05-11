<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<link rel="stylesheet" href="/resources/css/title.css">
<link rel="stylesheet" href="/resources/css/header.css">
<link rel="stylesheet" href="/resources/css/footer.css">
<link rel="stylesheet" href="/resources/css/content.css">
</head>
<body>
		<%
		int checkIdPwFlag = Integer.parseInt(request.getAttribute("checkIdPwFlag").toString());

		if(checkIdPwFlag == 0){
		%>
		<script type="text/javascript">
			alert("입력하신 아이디 또는 비밀번호가 일치하지 않습니다. 다시입력해주세요");
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
											${memberDto.mname }님 로그인 하셨습니다 반갑습니다.<br>
											${memberDto.mid }님의 가입일은 ${memberDto.mdate } 입니다.<br>
											<input class="contentbtn01" type="button" value="로그아웃" onclick="script:window.location.href='login'">
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