<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8' %>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core'%>
<header>
	<div id='headertexthref'>
		<c:if test='${member == null}'>
			<a href='/gimsehyeon.yoyangscombine/user/login' style='display:line'>로그인</a>
		</c:if>
		<c:if test='${member != null}'>
			<c:choose>
				<c:when test='${member.memberId.equals("admin")}'>
					관리자계정
				</c:when>
				<c:otherwise>
					<a href='/gimsehyeon.yoyangscombine/common/mypage'>마이페이지 </a>
				</c:otherwise>
			</c:choose>
			<a href='/gimsehyeon.yoyangscombine/user/logout' style='display:line'>로그아웃</a>
		</c:if>
	</div>
	<div id = 'headertext'>
		<h1><a href='/gimsehyeon.yoyangscombine'>요양스컴바인</a></h1>
	</div>
	<hr>
</header>