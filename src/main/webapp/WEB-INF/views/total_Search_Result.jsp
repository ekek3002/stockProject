<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css">
<link rel="stylesheet" href="/resources/css/total-search-result.css">
<link rel="stylesheet" href="/resources/css/mainheader2.css">
<link rel="stylesheet" href="/resources/css/mainfooter.css">
<script src="http://code.jquery.com/jquery-latest.min.js" ></script>
</head>
<body>

<%@include file="mainheader.jsp"%>
<%-- 	<table border="1px">종목 검색결과
		<tr>
			<td>종목명</td>
		</tr>
		<c:forEach items="${stock}" var="list">
			<tr onClick="location.href='${pageContext.request.contextPath}/trade?stockName=${list.stockName}'">
				<td class="first" title="주문번호" ><c:out value="${list.stockName}" /></td>
			</tr>
		</c:forEach>
	</table>

	<table border="1px">자유게시판 검색결과
		<tr>
			<td>글번호</td>
			<td>작성자</td>
			<td>제목</td>
		</tr>
		<c:forEach items="${free}" var="list">
			<tr onClick = "location.href='${pageContext.request.contextPath}/board/free/detail?pno=${list.pno}'">
				<td class="first" title="주문번호"><c:out value="${list.pno}" /></td>
				<td title="작성자"><c:out value="${list.nickname}" /></td>
				<td title="제목"><c:out value="${list.title}" /></td>
			</tr>
		</c:forEach>
	</table>
	
	<table border="1px">포릍폴리오 검색결과
		<tr>
			<td>글번호</td>
			<td>작성자</td>
			<td>제목</td>
		</tr>
		<c:forEach items="${port}" var="list">
			<tr onClick = "location.href='${pageContext.request.contextPath}/board/portfolio/detail?pno=${list.pno}'">
				<td class="first" title="주문번호"><c:out value="${list.pno}" /></td>
				<td title="작성자"><c:out value="${list.nickname}" /></td>
				<td title="제목"><c:out value="${list.title}" /></td>
			</tr>
		</c:forEach>
	</table> --%>
	
<div class="containerNew">
<div class="cont-area toggle_wrap">
		<h1 class="hidden">통합검색</h1>
		
		<div class="t-search-box">

<form id="frmData" method="get" action="/search/home">
<input type="hidden" name="currentPageNo" id="currentPageNo" value="1">	
<input type="hidden" name="searchType" id="searchType" value="">
<input type="hidden" name="order" id="order" value="">
<input type="hidden" name="memberCustId" id="memberCustId" value="ihdah">
<input type="hidden" name="dateGubun" id="dateGubun_frm" value="">
<input type="hidden" name="subTab" id="subTab" value="">

<fieldset>

	<legend>통합검색 검색어입력 영역</legend>
	<div class="condition-area">
		<div class="search-area">
			<span class="input-style short">
				<input type="text" placeholder="검색어 입력" name="kwd" id="kwd" value="${title}" onkeyup="enter();">
			</span>
			<button type="button" class="btn-t gray" onclick="frmSubmit();">통합검색</button>
		</div>
	</div>
	</fieldset>
</form>

            <div class="t-search-msg">
                <p>
                    
                    
                    ‘<span class="color-fantasy">${title}</span>’
                    (으)로 검색한 결과입니다.
                </p>
            </div>
	
	
		










<!-- //검색결과없음 -->
<div class="tab-area swiper-container swiper-container-horizontal" style="cursor: grab;">
	<ul class="tab-st01 num07 swiper-wrapper" style="width: auto;">
		<li class="selected swiper-slide"><a href="javascript:goTab('');" style="width: 100%;">통합검색</a></li>
		<li class="swiper-slide"><a href="javascript:goTab('1');" style="width: 100%;">종목</a></li>
		<li class="swiper-slide"><a href="javascript:goTab('2');" style="width: 100%;">자유게시판</a></li>  
		<li class="swiper-slide"><a href="javascript:goTab('3');" style="width: 100%;">포트폴리오</a></li>
		<li class="swiper-slide"><a href="javascript:goTab('6');" style="width: 100%; border-right: none;">회원</a></li>
	</ul>
</div> 
		



		
			<div>
				<div class="heading-wrap">
					<h2 class="tit-h2">종목 <span class="color-fantasy">${stockCount}</span>건</h2>
				</div>
				<div class="search-jongmok">
					<ul id="ulJongmok">
						<c:forEach var="list" items="${stock}">
							<li class="liChk clicked" id="_li_1_1">
									<p>
										<a href="/trade?stockName=${list.stockName}"><i class="keyword"></i>${list.stockName}<br></a>
									</p>
									
							</li>
						</c:forEach>	
					</ul>	
				</div>
				
				<div class="more">
					<p><a href="javascript:goTab('1');" class="link-btn tyb">종목 더보기  <i class="fas fa-angle-right"></i></a></p>
				</div>
				
			</div>
			<!-- //종목 -->
		

		
		


		
			<div>
				<div class="heading-wrap">
					<h2 class="tit-h2">자유게시판 <span class="color-fantasy">${freeCount}</span>건</h2>
					<p>
						<button type="button" onclick="setHomeOrder('3','1','');">최신순 <i>▼</i></button>
						<button type="button" onclick="setHomeOrder('3','2','');">좋아요 <i>▼</i></button>
					</p>
				</div>
				<div class="search-posts">
					<ul>	
						<c:forEach var="list" items="${free}">
							<li>
								<a href="/board/free/detail?pno=${list.pno}">${list.title}</a>
								<p class="info">
									<span>${list.nickname}</span>
									<fmt:formatDate value="${list.bdatetime}" var="time"
									pattern="YYYY.MM.dd" />
									<span>${time}</span>
									
									
									<span>댓글수 ${list.commentCount}</span>
									<span>좋아요 ${list.likes}</span>
								</p>
							</li>	
						</c:forEach>
					</ul>
				</div>
				<div class="more">
					<p><a href="javascript:goTab('3');" class="link-btn tyb">커뮤니티 더보기  <i class="fas fa-angle-right"></i></a></p>
				</div>
			</div>
			<!-- //자유게시판 -->							



			<div>
				<div class="heading-wrap">
					<h2 class="tit-h2">포트폴리오 <span class="color-fantasy">${portCount}</span>건</h2>
					<p>
						<button type="button" onclick="setHomeOrder('3','1','');">최신순 <i>▼</i></button>
						<button type="button" onclick="setHomeOrder('3','2','');">좋아요 <i>▼</i></button>
					</p>
				</div>
				<div class="search-posts">
					<ul>	
						<c:forEach var="list" items="${port}">
							<li>
								<a href="/board/portfolio/detail?pno=${list.pno}">${list.title}</a>
								<p class="info">
									<span>${list.nickname}</span>
									<fmt:formatDate value="${list.bdatetime}" var="time"
									pattern="YYYY.MM.dd" />
									<span>${time}</span>
								
									<span>댓글수 ${list.commentCount}</span>
									<span>좋아요 ${list.likes}</span>
								</p>
							</li>	
						</c:forEach>
						
					</ul>
				</div>
				<div class="more">
					<p><a href="javascript:goTab('3');" class="link-btn tyb">커뮤니티 더보기 <i class="fas fa-angle-right"></i></a></p>
				</div>
			</div>
			<!-- //포트폴리오 -->						



				
			<div>
				<div class="heading-wrap">
					<h2 class="tit-h2">회원 <span class="color-fantasy">${nickCount}</span>건</h2>
				</div>
				<div class="t-search-mem">
					<ul>
						<c:forEach var="list" items="${nick}">
							<li><a href="/selectUserMoney?nickname=${list.nickname}"><strong><i class="keyword"></i><i class="keyword"></i><i class="keyword"></i>${list.nickname}님</strong>이 쓴 글 모두보기</a></li>
						</c:forEach>
					</ul>
				</div>
				
				<div class="more">
					<p><a href="javascript:goTab('6');" class="link-btn tyb">회원 더보기 <i class="fas fa-angle-right"></i></a></p>
				</div>
			</div>		

			<!-- //회원 -->  
							
		</div>
		

	</div>
	
	<div class="message-wrap">
		<div class="message-st-01">
			<p class="big-text">
				조회하는 단어와 일치하는 <span> 데이터가 없습니다.</span><br> 
				<span class="color-fantasy">다른 검색어로 검색해 보세요.</span>
			</p>
		</div>
	</div>

</div>


<%@include file="mainfooter2.jsp"%>

<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<script src="https://canvasjs.com/assets/script/jquery-1.11.1.min.js"></script>
</body>
</html>