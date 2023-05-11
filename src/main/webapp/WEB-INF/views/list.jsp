<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>프로필</title>
<link rel="stylesheet" href="/resources/css/title.css">
<link rel="stylesheet" href="/resources/css/header.css">
<link rel="stylesheet" href="/resources/css/footer.css">
<link rel="stylesheet" href="/resources/css/content.css">
<link rel="stylesheet" href="/resources/css/board.css">
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
								<table  border="0" cellspacing="0" cellpadding="10" width="90%">
									<tr>
										<td class="main_text">
											<table border="0" cellspacing="0" cellpadding="10" width="100%">
												<tr>
													<th class="title">번호</th>
													<th class="title">아이디</th>
													<th class="title">이름</th>
													<th class="title">질문내용</th>
													<th class="title">등록일</th>
												</tr>
													<c:forEach items="${boardDtos }" var="dto">
														<tr>
															<td class="content01">${dto.bnum }</td>
															<td class="content01">${dto.bid }</td>
															<td class="content01">${dto.bname }</td>
															<td class="content02">
																<a href="contentView?bnum=${dto.bnum }">
																	<c:choose>
																		<c:when test="${fn:length(dto.bcontent) > 30 }">
																			<c:out value="${fn:substring(dto.bcontent,0,19) }"></c:out>...
																		</c:when>
																		<c:otherwise>
																	 		<c:out value="${dto.bcontent }"></c:out>
																		</c:otherwise>
																	</c:choose>
																</a>
															</td>
															<td class="content01">
																<c:out value="${fn:substring(dto.bdate,0, 10) }"></c:out>	
															</td>
														</tr>
													</c:forEach>
											</table>
										</td>
									</tr>
									<tr>
										<td colspan="5" align="right">
											<input class="contentbtn01" type="button" value="글쓰기" onclick="script:window.location.href='question'">
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