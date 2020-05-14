<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp" %>
<%@ include file="../include/include.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
		.wrap{
			width: 1000px;
			height: 1000px;
			margin: 100px auto;
			border: 1px solid red;
		}
		
		.container{					
			position: relative;
			max-width: 935px;
			margin: 0 auto;
			z-index: 1;
			display: flex;
			margin-top:30px;
		}
		.video_coment{
			width: 600px;
			border-bottom: solid 1px #ccc;
		}
		.view_cnt_day{
			padding:0 24px 18px;
			font-size: 12px;
			color: #666;
			line-height: 1.4;
			border-bottom: solid 1px #ccc;
		}
	</style>
</head>
<body>
<div class="wrap">
	<div class="container">
		<div class="column ">
			<div class="video_view" style="border: solid 2px black; width: 600px; height: 400px">
				<iframe width="600" height="400" src="https://www.youtube.com/embed/tmwTz0E0CC0" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
			</div>
			<div class="video_intro">
				<h4 class="video_title">C#과 유니티로 만드는 MMORPG 게임 개발 시리즈</h4>
			</div>
			<div class="view_cnt_day">
				<span>조회수: 17회</span>
				<span> | </span>
				<span>등록일자: 2020-02-05</span>
			</div>
			<div class="video_coment">
				<span>기초 프로그래밍 지식이 없는 사람들을 위한 C# 프로그래밍 기초 강의입니다. 
				<br>
				문법 암기 위주의 수업이 아니라, 최대한 필요한 부분만을 요약해서 진행합니다.</span>
			</div>
		</div>
	</div>
</div>
</body>
</html>