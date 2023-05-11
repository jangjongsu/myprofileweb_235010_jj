<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글목록</title>
</head>
<body>
	<table border="1" cellspacing="0" cellpadding="10">
		<tr>
			<th>번호</th>
			<th>아이디</th>
			<th>이름</th>
			<th>질문내용</th>
			<th>등록일</th>
		</tr>
		<c:forEach items="${boardDtos }" var="dto">
			<tr>
				<th>${Dto.bnum }</th>
				<th>${Dto.bid }</th>
				<th>${Dto.bname }</th>
				<th>${Dto.bcontent }</th>
				<th>${Dto.bdate }</th>
			</tr>
		</c:forEach>
	</table>
</body>
</html>