<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
    <title>지구력</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500|Gaegu:700" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Caveat:wght@700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=East+Sea+Dokdo&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="http://fonts.googleapis.com/earlyaccess/jejugothic.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/animate.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/owl.carousel.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/owl.theme.default.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/magnific-popup.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/aos.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/ionicons.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/jquery.timepicker.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/flaticon.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/icomoon.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">
    <link rel="icon" href="${pageContext.request.contextPath}/resources/images/ficon.png">
    <style tpye="text/css">
    .font{
      font-family: 'Poppins','Jeju Gothic', serif;
    }
    </style>
    
  </head>
 <body>
    <div class="font">
    
  <!----------------- START nav ----------------->  
 	  <%@ include file="../header.jsp" %>
  <!----------------- END nav ----------------->

  <!----------------- START header ----------------->    
  <div class="block-31" style="position: relative;">
    <div class="owl-carousel loop-block-31 ">
      <div class="block-30 block-30-sm item" style="background-image: url('${pageContext.request.contextPath}/resources/images/bg_3.jpg');" data-stellar-background-ratio="0.5">
        <div class="container">
          <div class="row align-items-center justify-content-center">
            <div class="col-md-7 text-center">
              <h2 class="heading">청원하기</h2>
            </div>
          </div>
        </div>
      </div>
      
    </div>
  </div>
  <!----------------- END header ----------------->  


  <!----------------- START Project ----------------->
  <div class="site-section">
    <div class="container">
      <!--유의 사항-->
      

      <div class="row block-9">
        <div class="col-md-6 pr-md-5">
          <form action="chungupdateres.do" method="post" enctype="multipart/form-data">
          	<input type="hidden" name="pet_no" value=${dto.pet_no }>
            <div class="form-group">
              <!--청원 타이틀-->
              <h4 class="font">청원 제목</h4>
              <input type="text" class="form-control px-3 py-3" placeholder="청원 제목을 입력하세요" 
              style="width:1000px;font-family: 'Jeju Gothic', serif;" value=${dto.pet_title } name="pet_title">
            </div><br>


            <!--<div class="mb-3">
              <h4 class="font"></h4>
              <input type="text" class="form-control px-3 py-1" style="width:1000px;  display: inline-block;" ><br>
              <input type="button" value="동의" class="btn btn-primary py-3 px-5">
            </div>-->


            <!--청원 상세 내용-->
            <div class="form-group">
              <h4 class="font">청원 내용</h4>
              <textarea name="pet_content" id="" cols="30" rows="17" class="form-control px-3 py-3" placeholder="청원 내용을 입력하세요"
              style="width:1000px; font-family: 'Jeju Gothic', serif;"  name="pet_content">${dto.pet_content }</textarea>
            </div><br>

            <!--검색 태그-->
            <div class="form-group">
              <h4 class="font">참조 링크</h4>
              <span><input type="text"  class="form-control px-3 py-3" style="width:1000px; font-family: 'Jeju Gothic', serif;"
                placeholder="관련있는 링크를 참조하세요" name="pet_link" value=${dto.pet_link }></span><br>
            </div>

            <!--사진-->
            
            <div>
            	<h4>청원 마감일</h4>
            	<input type="date" style="width:400px" name="pet_dead" value=${dto.pet_dead }>
            </div><br>
            
            <div>
            	<h4>청원 인원</h4>
            	<input type="text" style="width:400px" name="pet_person" value=${dto.pet_person }>
            </div><br><br>

            <!--완료 , 취소-->
            <div class="form-group">
              <input type="submit" value="수정 완료" class="btn btn-success py-2 px-5"  style="font-family: 'Jeju Gothic', serif;" > &nbsp;
              <input type="button" value="수정 취소" class="btn btn-primary py-2 px-5" style="font-family: 'Jeju Gothic', serif;" onclick="location.href='chungdetail.do?pet_no=${dto.pet_no}'">
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>
  <!----------------- End Project ----------------->   
  
  


 <!----------------- START footer ----------------->    
	<%@ include file="../footer.jsp" %>
  <!----------------- END footer ----------------->  

  <!-- loader -->
  <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>
</div>

  <script src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/js/jquery-migrate-3.0.1.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/js/popper.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/js/jquery.easing.1.3.js"></script>
  <script src="${pageContext.request.contextPath}/resources/js/jquery.waypoints.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/js/jquery.stellar.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/js/owl.carousel.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/js/jquery.magnific-popup.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/js/bootstrap-datepicker.js"></script>
  
  <script src="${pageContext.request.contextPath}/resources/js/aos.js"></script>
  <script src="${pageContext.request.contextPath}/resources/js/jquery.animateNumber.min.js"></script>
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
  <script src="${pageContext.request.contextPath}/resources/js/google-map.js"></script>
  <script src="${pageContext.request.contextPath}/resources/js/main.js"></script>
    
  </body>
</html>