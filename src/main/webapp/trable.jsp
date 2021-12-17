<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!doctype html>
<html lang="en">

<head>
<meta charset="utf-8">
<title>여행 내역 확인</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="css/bootstrap.css" rel="stylesheet" type="text/css"
	media="all" />
<link href="css/socicon.css" rel="stylesheet" type="text/css"
	media="all" />
<link href="css/iconsmind.css" rel="stylesheet" type="text/css"
	media="all" />
<link href="css/interface-icons.css" rel="stylesheet" type="text/css"
	media="all" />
<link href="css/owl.carousel.css" rel="stylesheet" type="text/css"
	media="all" />
<link href="css/lightbox.min.css" rel="stylesheet" type="text/css"
	media="all" />
<link href="css/theme.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/custom.css" rel="stylesheet" type="text/css" media="all" />
<link
	href='https://fonts.googleapis.com/css?family=Lora:400,400italic,700%7CMontserrat:400,700'
	rel='stylesheet' type='text/css' />
<script src="https://use.fontawesome.com/releases/v5.15.4/js/all.js"
	crossorigin="anonymous"></script>
</head>
<style>
.a:hover {
	background-color: black;
}
.pimg{
			height:40vh;
			width:40vw;
			object-fit:cover;
		}
</style>

<body class="scroll-assist">
	<jsp:include page="Header_2.jsp" />
	<a id="top"></a>
	<div class="loader"></div>

	<div class="main-container transition--fade">
		<section class="height-30  page-title page-title--animate">
			<div class="container pos-vertical-center">
				<div class="row">
					<div class="col-sm-12 text-center">
						<h1>여행 내역 확인</h1>
						<p class="lead">제주º 를 통해 함께 한 여행 내역을 확인 할 수 있어요</p>
					</div>
				</div>
				<!--end row-->
			</div>
			<!--end container-->
		</section>
		<section>
			<div class="container">
				<div class="row">
					<div class="masonry masonry-blog">
					  <div class="masonry__filters text-center" data-filter-all-text="Show All">
					
					  </div>
						<div class="masonry__container masonry--animate">
					
							<div class="row" >
								<c:if test="${!empty tripList}">
									<c:forEach items="${tripList}" var="tripList">
										<div class="col-md-4 col-sm-6 masonry__item" data-masonry-filter="${tripList.trMode}  " >
											<div style="">
											<c:if test="${tripList.tmRole == 'h'}">
												<div>
													<i class="fas fa-crown fa-2x"></i>HOST
												</div>
											</c:if>
											<c:if test="${tripList.tmRole == 'g'}">
												<div>
													<i class="fas fa-users fa-2x"></i>GUEST
												</div>
											</c:if>
											<a href="entranceRoom.do?trSeq=${tripList.trSeq}">
												<div class="card card-4">
													<div class="card__image">
														<c:if test="${!empty tripList.trImgName}">
															<img alt="pic" class="pimg" src="upload/${tripList.trImgName}" />
														</c:if>
														<c:if test="${empty tripList.trImgName}">
															<img alt="pic" src="img/제주사진/제주026.jpg" />
														</c:if>
													</div>
													<div class="card__body boxed boxed--sm bg--white">
														
														<div class="">
															<h4>${tripList.trName}</h4>
														</div>
														<span class="h6">${tripList.trIntro}</span>
													</div>
												</div>
											</a>
										</div>
										</div>
									</c:forEach>
							</div>


							</c:if>
							<c:if test="${empty tripList}">
								<div style="display: flex; justify-content: center;">
									<br> <br>
									<h3>여행에 참가해주세요</h3>
								</div>
							</c:if>

							<!--end of container-->
		</section>
<jsp:include page="tail.jsp" />
		<!-- footer -->
	</div>
	<script src="js/jquery-2.1.4.min.js"></script>
	<script src="js/isotope.min.js"></script>
	<script src="js/ytplayer.min.js"></script>
	<script src="js/easypiechart.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/lightbox.min.js"></script>
	<script src="js/twitterfetcher.min.js"></script>
	<script src="js/smooth-scroll.min.js"></script>
	<script src="js/scrollreveal.min.js"></script>
	<script src="js/parallax.js"></script>
	<script src="js/scripts.js"></script>
</body>

</html>