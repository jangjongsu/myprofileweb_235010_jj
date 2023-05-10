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
									<form action="joinOk" method="post">
									<tr>
										<td class= "contenttext">아 이 디 : </td>
										<td><input class="inputbox01" type="text" name="bid"></td>
									</tr>
									<tr>
										<td class= "contenttext">글 쓴 이 : </td>
										<td><input class="inputbox01" type="text" name="bname"></td>
									</tr>
									<tr>
										<td class= "contenttext">질문내용 : </td>
										<td><textarea rows="8" cols="35" name="bcontent" class="textareabox"></textarea></td>
									</tr>
									<tr>
										<td class= "contenttext">이 메 일 : </td>
										<td><input class="inputbox01" type="text" name="bemail"></td>
									</tr>
									<tr>
										<td colspan="2" align="center">
											<input class="contentbtn01" type="submit" value="질문하기">&nbsp;
											<input class="contentbtn01" type="button" value="글목록" onclick="script:window.location.href='list'">
										</td>
									</tr>
									</form>
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