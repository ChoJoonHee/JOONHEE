<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html>
<head>
<base href="${pageContext.request.contextPath }/" />
<title>게시판</title>
</head>
<body>
	<h2>글 보기</h2>
	<p>
		<a href="./app/letter/letterlist">글 목록</a>
	</p>
	<hr />
	<p>
		<span>${letter.letterId }</span> | <span style="font-weight: bold;">${letter.title }</span>
	</p>
	<p>
		<span>${letter.content }</span> | <span>${letter.senderName }</span>
	</p>
	<hr />
	<p>${letter.contentHtml }</p>
	<hr />
	<!--<c:if test="${!empty sessionScope.MEMBER }"> 
 		
 			<a href="./app/letter/updateForm?articleId=${article.articleId }">update</a>
	<a href="./app/letter/delete?articleId=${article.articleId }">delete</a>
 	
 	</c:if> -->

</body>
</html>

