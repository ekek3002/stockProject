<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css">
<link rel="stylesheet" href="/resources/css/total-search-result.css">
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
</head>
<body>

	<%@include file="../mainheader.jsp"%>

	<div class="containerNew">
		<div class="cont-area toggle_wrap">
			<h1 class="hidden">통합검색</h1>

			<div class="t-search-box">

				<form id="frmData" method="get" action="/total-search">
					<input type="hidden" name="currentPageNo" id="currentPageNo"
						value="1"> <input type="hidden" name="searchType"
						id="searchType" value=""> <input type="hidden"
						name="order" id="order" value=""> <input type="hidden"
						name="memberCustId" id="memberCustId" value="ihdah"> <input
						type="hidden" name="dateGubun" id="dateGubun_frm" value="">
					<input type="hidden" name="subTab" id="subTab" value="">

					<fieldset>
						<legend>통합검색 검색어입력 영역</legend>
						<div class="condition-area">
							<div class="search-area">
								<span class="input-style short"> <input type="text"
									placeholder="검색어 입력" name="keyword" id="kwd" value=""
									onkeyup="enter();">
								</span>
								<button type="submit" class="btn-t gray" onclick="">통합검색</button>
							</div>
						</div>
					</fieldset>
				</form>

				<div class="t-search-msg">
					<p>

						<c:if test="${keyword eq ''}">
						<span class="color-fantasy">전체 조회 결과입니다.</span>
						</c:if>
						<c:if test="${keyword ne ''}">
						‘<span class="color-fantasy">${keyword}</span>’ (으)로 검색한 결과입니다.
						</c:if>
					</p>
				</div>

				

				<!-- //검색결과없음 -->
				<div class="tab-area swiper-container swiper-container-horizontal"
					style="cursor: grab;">
					<ul class="tab-st01 num07 swiper-wrapper" style="width: auto;">
						<li class="swiper-slide"><a
							href="/total-search?keyword=${keyword}" style="width: 100%;">통합검색</a></li>
						<li class="swiper-slide"><a
							href="/total-search/stock?keyword=${keyword}"
							style="width: 100%;">종목</a></li>
						<li class="selected swiper-slide"><a
							href="/total-search/free?keyword=${keyword}" style="width: 100%;">자유게시판</a></li>
						<li class="swiper-slide"><a
							href="/total-search/portfolio?keyword=${keyword}"
							style="width: 100%;">포트폴리오</a></li>
						<li class="swiper-slide"><a
							href="/total-search/user?keyword=${keyword}"
							style="width: 100%; border-right: none;">회원</a></li>
					</ul>
				</div>



				<div>
					<div class="heading-wrap">
						<h2 class="tit-h2">
							자유게시판 <span class="color-fantasy">${freeCount}</span>건
						</h2>
						<p>
							<button type="button"
								onclick="location.href='/total-search/free?keyword=${keyword}'">
								최신순 <i>▼</i>
							</button>
							<button type="button"
								onclick="location.href='/total-search/free/detail/best?keyword=${keyword}'">
								좋아요 <i>▼</i>
							</button>
						</p>
					</div>
					<div class="search-posts">
						<c:choose>
							<c:when test="${freeCount ne 0}">
								<ul>
									<c:forEach var="list" items="${free}">
										<li><a href="/board/free/detail?pno=${list.pno}">${list.title}</a>
											<p class="info">
												<span>${list.nickname}</span>
												<fmt:formatDate value="${list.bdatetime}" var="time"
													pattern="YYYY.MM.dd" />
												<span>${time}</span> <span>댓글수 ${list.commentCount}</span> <span>좋아요
													${list.likes}</span>
											</p></li>
									</c:forEach>

								</ul>
							</c:when>
							<c:otherwise>
								<div class="message-wrap">
									<div class="message-st-01">
										<p class="big-text">
											조회하는 단어와 일치하는 <span> 데이터가 없습니다.</span><br> <span
												class="color-fantasy">다른 검색어로 검색해 보세요.</span>
										</p>
									</div>
								</div>
							</c:otherwise>
						</c:choose>
					</div>
					<div class="more">
						<p>
							<a href="/board/free" class="link-btn tyb">커뮤니티 더보기<i
								class="fas fa-angle-right"></i></a>
						</p>
					</div>
				</div>
			</div>


		</div>



	</div>


	<%@include file="../mainfooter2.jsp"%>

	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
	<script src="https://canvasjs.com/assets/script/jquery-1.11.1.min.js"></script>
</body>
</html>