<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html>
<head>
<base href="${pageContext.request.contextPath }/" />
<title>게시판</title>
</head>
<body>
	<h2>이메일보내기</h2>
	<p>
		<a href="./app/letter/letterlist">이메일 목록</a>
	</p>
	<form action="./app/article/Trans" method="post">
		<p>제목 :</p>
		<p>
			<input type="text" name="title" maxlength="100" style="width: 100%;"
				required>
		</p>
		<p>내용 :</p>
		<p>
			<textarea name="content" style="width: 100%; height: 200px;" required></textarea>
		</p>
		<p>수신자 :</p>
			<input type="text" name="receiverId" maxlength="100" style="width: 100%;" required>
			<input type="text" name="receiverName" maxlength="100" style="width: 100%;" required>
		<input type="text" name="senderId" value="${member.memberId }" readonly="readonly" />
		<input type="text" name="senderName" value="${member.name }" readonly="readonly" />
		<p>
			<button type="submit">보내기</button>
		</p>
	</form>
</body>
</html>