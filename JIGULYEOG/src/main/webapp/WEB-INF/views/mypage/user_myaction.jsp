<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>지구력</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link
	href="https://fonts.googleapis.com/css?family=Poppins:300,400,500|Gaegu:700"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=Caveat:wght@700&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=East+Sea+Dokdo&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/open-iconic-bootstrap.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/animate.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/owl.carousel.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/owl.theme.default.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/magnific-popup.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/aos.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/ionicons.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/bootstrap-datepicker.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/jquery.timepicker.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/flaticon.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/icomoon.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/style.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/personal_css/mypage.css">
<link rel="icon"
	href="${pageContext.request.contextPath}/resources/images/ficon.png">
<link rel="stylesheet"
	href="http://fonts.googleapis.com/earlyaccess/jejugothic.css">
<style>
body {
	font-family: 'Poppins', 'Jeju Gothic', serif;
}
</style>
</head>
<body>

	<!----------------- START nav ----------------->
	<%@ include file="../header.jsp"%>
	<!----------------- END nav ----------------->

	<!----------------- START header ----------------->
	<div class="block-31" style="position: relative;">
		<div class="owl-carousel loop-block-31 ">
			<div class="block-30 block-30-sm item"
				style="background-image: url('${pageContext.request.contextPath}/resources/images/bg_2.jpg');"
				data-stellar-background-ratio="0.5">
				<div class="container">
					<div class="row align-items-center justify-content-center">
						<div class="col-md-7 text-center">
							<h2 class="heading">내 활동</h2>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!----------------- END header ----------------->

	<!-- START section -->
	<div class="site-section">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<h1>내가 서명한 청원</h1>
					<div class="row">
						<div class="col-md-12 block-11">
							<div class="nonloop-block-11 owl-carousel">
								<c:choose>
									<c:when test="${empty signUpList}">
										<div class="card fundraise-item">
											<div class="card-body">
												<h3 class="card-title">
													<a href="#">청원 내용이 없습니다.<br>청원에 참가해볼까요?</a>
												</h3>
											</div>
										</div>
									</c:when>
									<c:otherwise>
										<c:forEach var="signUpList" items="${signUpList}">
											<div class="card fundraise-item">
												<a href="#">청원이미지 추가해야함</a>
												<div class="card-body">
													<h3 class="card-title">
														<a href="#">${signUpList.pet_title }</a>
													</h3>
													<p class="card-text">${signUpList.pet_content }</p>
													<span class="fund-raised d-block">청원종료일 : <fmt:formatDate
															value="${signUpList.pet_dead }" pattern="yyyy.MM.dd" />
													</span>
												</div>
											</div>
										</c:forEach>
									</c:otherwise>
								</c:choose>
							</div>
						</div>
					</div>
					<br> <br> <br>
				</div>
			</div>

			<div class="row">
				<div class="col-md-12">
					<h1>내가 올린 청원</h1>
					<div class="row">
						<div class="col-md-12 block-11">
							<table class="table table-hover" style="text-align: center;">
								<thead>
									<tr>
										<th style="width: 20%">번호</th>
										<th style="width: 60%">제목</th>
										<th style="width: 20%">엑셀 추출</th>
									</tr>
								</thead>
								<tbody>
									<c:choose>
										<c:when test="${empty CWList }">
											<tr>
												<td colspan="3" style="text-align: center;">----------
													작성한 청원이 존재하지 않습니다. ----------</td>
											</tr>
										</c:when>
										<c:otherwise>
											<c:forEach var="CW" items="${CWList }">
												<tr>
													<td>${CW.pet_no }</td>
													<td style="text-align: left;"><a style="color: black;"
														href="#">${CW.pet_title }</a></td>
													<td>
														<form method="post" action="SUExcelDown.do">
															<input type="hidden" name="pet_no" value="${CW.pet_no }">
															<input type="hidden" name="pet_title"
																value="${CW.pet_title }"> <input type="submit"
																value="서명자 엑셀로 추출" class="btn btn-primary">
														</form>
													</td>
												</tr>
											</c:forEach>
										</c:otherwise>
									</c:choose>
								</tbody>
							</table>
						</div>
					</div>
					<!-- CW PAGE MAKER PART -->
					<div style="width: 200px; margin: 0px auto;">
						<nav aria-label="Page navigation">
							<ul class="pagination">
								<c:if test="${CWPageMaker.prev }">
									<li class="page-item"><a class="page-link"
										href="myAction.do?CWPage=${CWPageMaker.startPage - 1 }"
										aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
									</a></li>
								</c:if>
								<c:forEach begin="${CWPageMaker.startPage }"
									end="${CWPageMaker.endPage }" var="idx">
									<c:choose>
										<c:when test="${idx eq CWPage }">
											<li class="page-item active"><a class="page-link"
												href="myAction.do?CWPage=${idx }">${idx }</a></li>
										</c:when>
										<c:otherwise>
											<li class="page-item"><a class="page-link"
												href="myAction.do?CWPage=${idx }">${idx }</a></li>
										</c:otherwise>
									</c:choose>
								</c:forEach>
								<c:if test="${CWPageMaker.next && CWPageMaker.endPage>0 }">
									<li class="page-item"><a class="page-link"
										href="myAction.do?CWPage=${CWPageMaker.endPage + 1 }"
										aria-label="Next"> <span aria-hidden="true">&raquo;</span>
									</a></li>
								</c:if>
							</ul>
						</nav>
					</div>
					<br> <br>
				</div>
			</div>

			<div class="row">
				<div class="col-md-12">
					<h1>내가 신청한 함께해요</h1>
					<div class="row">
						<div class="col-md-12 block-11">
							<div class="nonloop-block-11 owl-carousel">
								<c:choose>
									<c:when test="${empty togetherApplyList }">
										<div class="card fundraise-item">
											<div class="card-body">
												<h3 class="card-title">
													<a href="#">함께하기 내용이 없습니다.<br>함께하기에 참가해볼까요?</a>
												</h3>
											</div>
										</div>
									</c:when>
									<c:otherwise>
										<c:forEach var="togetherApplyList"
											items="${togetherApplyList }">
											<div class="card fundraise-item">
												<div class="card-body">
													<h3 class="card-title">
														<a href="#">${togetherApplyList.tog_title }</a>
													</h3>
													<p class="card-text">카테고리 :
														${togetherApplyList.tog_category }</p>
													<p class="card-text">내용 :
														${togetherApplyList.tog_content }</p>
													<p class="card-text">
														종료일 :
														<fmt:formatDate value="${togetherApplyList.tog_dead }"
															pattern="yyyy.MM.dd" />
													</p>
												</div>
											</div>
										</c:forEach>
									</c:otherwise>
								</c:choose>
							</div>
						</div>
					</div>
				</div>
			</div>
			<br> <br>

			<div class="row">
				<h1>내가 올린 함께해요</h1>
				<table class="table table-hover" style="text-align: center;">
					<thead>
						<tr>
							<th style="width: 20%;">번호</th>
							<th style="width: 60%">제목</th>
							<th style="width: 20%">엑셀추출</th>
						</tr>
					</thead>
					<tbody>
						<c:choose>
							<c:when test="${empty TGList }">
								<tr>
									<td colspan="3">---------- 작성한 청원이 존재하지 않습니다. ----------</td>
								</tr>
							</c:when>
							<c:otherwise>
								<c:forEach var="TG" items="${TGList }">
									<tr>
										<td>${TG.tog_no }</td>
										<td style="text-align: left;"><a style="color: black;"
											href="#">${TG.tog_title }</a></td>
										<td>
											<form method="post" action="TGAExcelDown.do">
												<input type="hidden" name="tog_no" value="${TG.tog_no }">
												<input type="hidden" name="tog_title"
													value="${TG.tog_title }"> <input type="submit"
													value="신청자 엑셀로 추출" class="btn btn-primary">
											</form>
										</td>
									</tr>
								</c:forEach>
							</c:otherwise>
						</c:choose>
					</tbody>
				</table>
			</div>
			<!-- TG PAGE MAKER PART -->
			<div style="width: 200px; margin: 0px auto;">
				<nav aria-label="Page navigation">
					<ul class="pagination">
						<c:if test="${TGPageMaker.prev }">
							<li class="page-item"><a class="page-link"
								href="myAction.do?TGPage=${TGPageMaker.startPage - 1 }"
								aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
							</a></li>
						</c:if>
						<c:forEach begin="${TGPageMaker.startPage }"
							end="${TGPageMaker.endPage }" var="idx">
							<c:choose>
								<c:when test="${idx eq TGPage }">
									<li class="page-item active"><a class="page-link"
										href="myAction.do?TGPage=${idx }">${idx }</a></li>
								</c:when>
								<c:otherwise>
									<li class="page-item"><a class="page-link"
										href="myAction.do?TGPage=${idx }">${idx }</a></li>
								</c:otherwise>
							</c:choose>
						</c:forEach>
						<c:if test="${TGPageMaker.next && TGPageMaker.endPage>0 }">
							<li class="page-item"><a class="page-link"
								href="myAction.do?TGPage=${TGPageMaker.endPage + 1 }"
								aria-label="Next"> <span aria-hidden="true">&raquo;</span>
							</a></li>
						</c:if>
					</ul>
				</nav>
			</div>
		</div>
	</div>

	<!-- END section -->


	<!----------------- START footer ----------------->
	<%@ include file="../footer.jsp"%>
	<!----------------- END footer ----------------->

	<!-- loader -->
	<div id="ftco-loader" class="show fullscreen">
		<svg class="circular" width="48px" height="48px">
			<circle class="path-bg" cx="24" cy="24" r="22" fill="none"
				stroke-width="4" stroke="#eeeeee" />
			<circle class="path" cx="24" cy="24" r="22" fill="none"
				stroke-width="4" stroke-miterlimit="10" stroke="#F96D00" /></svg>
	</div>


	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery-migrate-3.0.1.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/popper.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.easing.1.3.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.waypoints.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.stellar.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/owl.carousel.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.magnific-popup.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/bootstrap-datepicker.js"></script>

	<script src="${pageContext.request.contextPath}/resources/js/aos.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.animateNumber.min.js"></script>
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/google-map.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/main.js"></script>
</body>
</html>