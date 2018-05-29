<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="js/materialize.js"></script>
	<script src="js/materialize.min.js"></script>
	<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic" rel="stylesheet">
	<link rel="stylesheet" href="css/materialize.css">
	<link rel="stylesheet" href="css/reset.css">
	<link rel="stylesheet" href="css/main.css">
	<title>신뢰의 아이콘 김달환의 '만남'</title>
	<script>
		$(document).ready(function() {
			$('textarea#ideal').characterCounter();
		});
	</script>
</head>
<body>
<div id="wrapper">
	<div class="container">
		<header id="header" class="center">
			<h4>신뢰의 아이콘 김달환이 주선하는 '만남'</h4>
			<p class="intro">이 바쁘고 복잡한 대한민국에서 누군가를 만날 시간조차 없이</p>
			<p class="intro">살아가는 모든 직장인을 비롯한 사회인들을 위해 준비했습니다.</p>
			<a href="index.jsp" class="btn-floating btn-large red darken-1 pulse" id="heart"><i class="material-icons">favorite_border</i></a>
		</header>
		<div class="form">
			<form class="col s12" action="send.do" method="post">
			 	<div class="row">
			 		<div class="col s3"></div>
			        <div class="input-field col s6">
			          <input  type="text" class="validate" name="name" id="name">
			          <label for="name">이 름</label>
			        </div>
		        </div>
		        <div class="row">
			 		<div class="col s3"></div>
			        <div class="input-field col s6">
			          <input  type="text" class="validate" name="age" id="age">
			          <label for="age">나 이</label>
			        </div>
		        </div>
		        <div class="row">
			 		<div class="col s3"></div>
			        <div class="input-field col s6">
			          <input  type="text" class="validate" name="tel" id="tel">
			          <label for="tel">연락처<small>( 핸드폰 or 카톡ID )</small></label>
			        </div>
		        </div>
		        <div class="row">
			 		<div class="col s3"></div>
			        <div class="input-field col s6">
			          <input  type="text" class="validate" name="job" id="job">
			          <label for="job">직 업</label>
			        </div>
		        </div>
		        <div class="row">
			 		<div class="col s3"></div>
			        <div class="input-field col s6">
			          <input  type="text" class="validate" name="height" id="height">
			          <label for="height">키<small>( cm )</small></label>
			        </div>
		        </div>
		        <div class="row">
			 		<div class="col s3"></div>
			        <div class="input-field col s6">
			          <input  type="text" class="validate" name="addr" id="addr">
			          <label for="addr">거주지</label>
			        </div>
		        </div>
		        <div class="row center">
				    	<label>
					    	<input class="with-gap" name="sex" type="radio" value="남자" checked />
							<span class="light-blue-text text-lighten-5">남자</span>
						</label>
						<span class="light-blue-text text-lighten-5">&nbsp;&nbsp;/&nbsp;&nbsp;</span>
						<label>
							<input class="with-gap" name="sex" type="radio" value="여자" />
							<span class="light-blue-text text-lighten-5">여자</span>
						</label>
		        </div>
		        <div class="row">
		        	<div class="col s3"></div>
				    <div class="file-field input-field col s6">
				      <div class="btn light-blue accent-3">
				        <span>File</span>
				        <input type="file" accept=".jpg, .png, .jpeg" multiple  id="btnSub">
				      </div>
				      <div class="file-path-wrapper">
				        <input class="file-path validate" type="text" name="pics" id="pics" placeholder="하나 이상의 사진을 첨부해주세요. (PNG, JPG, JPEG)">
				      </div>
				    </div>
			    </div>
			    <div class="row">
			    	<div class="col s3"></div>
		        	<div class="input-field col s6">
			            <textarea name="ideal" id="ideal" class="materialize-textarea" data-length="400">상세하게 입력할수록 매칭이 원활해집니다.</textarea>
			            <label for="ideal">이상형 및 조건</label>
		          	</div>
		        </div>
		        <div class="row center-align">
			        <button class="btn waves-effect waves-light light-blue accent-3" type="submit" name="action">신청</button>
		        </div>
				</form>
			</div>
			  <div class="row">
	          <div class="col 12 s12">
	            <div class="center" id="bottom-logo-section">
	              <a href="https://www.instagram.com/synapseculture" target="_blank" id="btm-logo"><img src="img/logo.png" class="circle responsive-img center" id="bottom-logo" alt="bottm-logo"></a>
	              <a href="https://www.instagram.com/gosanbehappy" target="_blank"><img src="img/gosan.jpg" class="circle responsive-img center" id="bottom-logo" alt="bottm-logo"></a>
	            </div>
	            <h5 class="white-text center" style="line-height: 170%;"></h5>
	            <p class="light-blue-text text-lighten-5 center">'외로운 것은 죄가 아니다'</p>
	          </div>
	        </div>
	      </div>
	      <div class="footer-copyright">
	        <div class="container">
	          <div class="center grey-text text-lighten-5 center" id="copyright">
	            Copyright © 2018 'Synapse Culture' All right reserved.
	          </div>
	        </div>
		</div>
	</div>
</body>
</html>