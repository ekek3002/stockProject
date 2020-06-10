<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>mainheader</title>
</head>
<body>
	<div class="header">
		<!-- 상단  nav -->
		<c:choose>
			<c:when test="${loginUser eq null}">
				<ul class="nav justify-content-end top-nav">
					<li class="breadcrumb-item"><a id="top-nav-font" href="/signInPage">로그인</a></li>
					<li class="breadcrumb-item"><a id="top-nav-font" href="/signUpPage/1">회원가입</a></li>
				</ul>
			</c:when>
			<c:otherwise>
				<ul class="nav justify-content-end top-nav">
					<a href="#"><img class="" id="_myhomeId" src="/resources/img/pi_08.png" style="width: 24px; height: 24px;"></a>
					<dl>
						<dt>
							<strong>개미굴</strong> 님
						</dt>
					</dl>
					<li class="breadcrumb-item"><a id="top-nav-font" href="/logOut">로그아웃</a></li>
					<li class="breadcrumb-item"><a id="top-nav-font" href="/myPage01">마이페이지</a></li>
					<li class="breadcrumb-item"><a id="top-nav-font" href="/myPage04">알림<span></span></a></li>
				</ul>	
			</c:otherwise>	
		</c:choose>
		<!-- 상단  nav end -->
		<!-- 메인  nav -->
		<nav class="navbar navbar-expand-lg navbar-light bg-light navbar-custom">
			<a href="/mainPage" class="navbar-logo"><img class="" id="logo" src="/resources/img/logo.png" style="width: 50px; height: 50px;"></a>
			<a class="navbar-brand" href="#">Stock gallery</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav ml-auto">
					<form class="form-inline my-2 my-lg-0">
						<input class="form-control mr-sm-2" type="search" placeholder="통합검색" aria-label="Search">
						<button class="btn btn-outline-secondary my-2 my-sm-0" type="submit">
							<i class="fas fa-search"></i>
						</button>
					</form>
				</ul>
				<ul class="navbar-nav ml-auto">
					<li class="nav-item dropdown">
						<a class="nav-link dropdown-toggle toggle-btn" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> 커뮤니티 </a>
						<div class="dropdown-menu" aria-labelledby="navbarDropdown">
							<a class="dropdown-item" href="/board/free">자유게시판</a> 
							<a class="dropdown-item" href="#">포트폴리오</a>
							<div class="dropdown-divider"></div>
							<a class="dropdown-item" href="/news">뉴스</a>
						</div>
					</li>
					<li class="nav-item"><a class="nav-link" href="/trade">거래</a></li>
					<li class="nav-item"><a class="nav-link" href="#">고객센터</a></li>
				</ul>
			</div>
		</nav>
		<!-- 메인 nav end -->
	</div>
</body>
</html>