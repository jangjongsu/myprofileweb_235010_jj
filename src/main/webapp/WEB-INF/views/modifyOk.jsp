<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보수정 완료</title>
<link rel="stylesheet" href="/resources/css/title.css">
<link rel="stylesheet" href="/resources/css/header.css">
<link rel="stylesheet" href="/resources/css/footer.css">
<link rel="stylesheet" href="/resources/css/content.css">
<script type="text/javascript" src="/resources/js/join.js"></script>
</head>
<body>
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
										<td colspan="2" class="contenttext">${memberDto.mid }님 정보 수정이 완료 되었습니다</td>
									</tr>
									<tr>
										<td class= "contenttext">아 이 디 : </td>
										<td><input class="inputbox01" type="text" name="mid" value="${memberDto.mid }" readonly="readonly"></td>
									</tr>
									<tr>
										<td class= "contenttext">비밀번호 : </td>
										<td><input class="inputbox01" type="test" name="mpw" value="${memberDto.mpw }" readonly="readonly"></td>
									</tr>
									<tr>
										<td class= "contenttext">이&nbsp;&nbsp;&nbsp;&nbsp;름 : </td>
										<td><input class="inputbox01" type="text" name="mname" value="${memberDto.mname }" readonly="readonly"></td>
									</tr>
									<tr>
										<td class= "contenttext">이 메 일 : </td>
										<td><input class="inputbox01" type="text" name="memail" value="${memberDto.memail }" readonly="readonly"></td>
									</tr>
									<tr>
										<td class= "contenttext">가 입 일 : </td>
										<td><input class="inputbox01" type="text" name="mdate" value="${memberDto.mdate }" readonly="readonly"></td>
									</tr>
									<tr>
										<td colspan="2" align="center">
											<input class="contentbtn01" type="button" value="정보수정" onclick="script:window.location.href='modify'">
											<input class="contentbtn01" type="button" value="홈으로" onclick="script:window.location.href='index'">
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