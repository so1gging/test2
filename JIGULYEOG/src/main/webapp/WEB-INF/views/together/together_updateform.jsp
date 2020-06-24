<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Givig - Non-profit Free Bootstrap 4 Template by Colorlib</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500|Gaegu:700" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Caveat:wght@700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=East+Sea+Dokdo&display=swap" rel="stylesheet">
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
    <link rel="stylesheet" href="http://fonts.googleapis.com/earlyaccess/jejugothic.css">
    <link rel="icon" href="${pageContext.request.contextPath}/resources/images/ficon.png">
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/personal_js/ckeditor/ckeditor.js"></script>
    <style>
      body{
        font-family: 'Poppins','Jeju Gothic', serif;
      }
    </style>
  </head>
  <body>
    
          <!----------------- START nav ----------------->  
 <%@ include file="../header.jsp" %>
  <!----------------- END nav ----------------->
  
  <div class="block-31" style="position: relative;">
    <div class="owl-carousel loop-block-31 ">
      <div class="block-30 block-30-sm item" style="background-image: url('images/bg_2.jpg');" data-stellar-background-ratio="0.5">
        <div class="container">
          <div class="row align-items-center justify-content-center">
            <div class="col-md-7 text-center">
              <h2 class="heading">함께해요</h2>
            </div>
          </div>
        </div>
      </div>
      
    </div>
  </div>
  
  
  <div id="blog" class="site-section">
    <div class="container">
            
            <div class="row">

              <div class="col-md-10">
                  
                  <!-- END comment-list -->
                  
                  <div class="comment-form-wrap pt-5">
                    <h3 >함께해요 수정하기</h3>
                    <form action="together_update.do" class="p-5 bg-light" method="post" enctype="multipart/form-data"`>
                    	<input type="hidden" name="tog_no" value="${dto.tog_no}">
                      <div class="form-group">
                        <label >제목</label>
                        <input type="text" class="form-control" name="tog_title" value="${dto.tog_title }">
                      </div>
                      	<div class="form-group">
                      		<label>현재 이미지 </label>
                      		<input type="hidden" name="tog_image" value="${dto.tog_image}"/>
	          				<img src="${pageContext.request.contextPath}/resources/upload/images/together/${dto.tog_image}" style="width: 50px; height: 50px;" alt="Image placeholder">
                      	</div>
                      	<div class="form-group">
                      		<label>이미지</label>
					  		<input type="file" class="form-control" id="file" name="file">
						</div>					  		
                      <div class="form-group">
                        <label >카테고리</label>
                        <input type="text" class="form-control" name="tog_category" value="${dto.tog_category }">
                      </div>
                      <div class="form-group">
                        <label >기한</label>
                        <input type="text" class="form-control" name="tog_dead" value="<fmt:formatDate value='${dto.tog_dead}' pattern='yyyy/MM/dd'/>">
                      </div>
                      
                      <div class="form-group">
                        <label >내용</label>
                        <textarea name="tog_content" id="tog_content" cols="30" rows="10" class="form-control">${dto.tog_content }</textarea>
						<script type="text/javascript">
			                  CKEDITOR.replace('tog_content'
			                                  , {
			                	  height: 500,
			                	  filebrowserUploadUrl:'togetherDetailFile.do'
			                                  });
			              </script>                        
                      </div>
                      <div class="form-group">
                        <label >한마디</label>
                        <textarea name="tog_ps" id="tog_ps" cols="5" rows="5" class="form-control">${dto.tog_ps }</textarea>
                      </div>
                      <div class="form-group" style="float: right;">
                        <a href="together.do"><input type="button" value="취소" class="btn py-3 px-5  btn-primary"></a>
                        <input type="submit" value="완료" class="btn py-3 px-5  btn-primary">
                      </div>

                    </form>
                  </div>
                  
              </div> <!-- .col-md-8 -->
              

            </div>

            
          </div>
  </div>
  
  <!-- START footer -->
 <%@ include file="../footer.jsp" %>
  <!-- END footer -->

  <!-- loader -->
  <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>


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