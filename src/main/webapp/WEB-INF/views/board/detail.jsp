<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<%@ include file="../layout/header.jsp"%>
<h1>detail page</h1>
<hr />
<div>Id가 2번인 페이지면 관리자 메세지를 걸어보자</div>
<c:if test="${board.id == 2 }">
	<h2>우리 팀의 ACE 전영재!!</h2>
</c:if>

<hr />
<div>Id가 1번이면 Ok 출력, 1번이 아니면 No 출력</div>
<c:choose>
	<c:when test="${id==1}">
		<h2>ok</h2>
	</c:when>
	<c:otherwise>
		<h2>no</h2>
	</c:otherwise>
</c:choose>
번호 : ${board.id }, 제목 : ${board.title }, 내용 : ${board.content }
<%@ include file="../layout/footer.jsp"%>