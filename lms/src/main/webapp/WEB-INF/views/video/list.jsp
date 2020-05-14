<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="../include/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" type="text/css" href="css/common.css">
	<meta charset="utf-8">
	<title> video list </title>
	<script src="https://kit.fontawesome.com/2518bc55d6.js" crossorigin="anonymous"></script>
</head>


<style type="text/css">
	.wrap{
		width: 1000px;
		height: 1000px;
		margin: 100px auto;
		border: 1px solid red;
	}

	/* 상단 검색창 */
	.category_wrap{
		height: 60px;
		border-bottom: 1px solid #e8e8e8;
		align-items: center;
		text-align: center;
	}
	.category_search{
		display: flex;
		justify-content: flex-end;
		margin-top: 20px;
	}
	.search_box{
		width: 220px;
		
		border: 1px solid #e8e8e8;
	}
	.search_btn{
		padding: 10px;
		border: 0;
		background-color: #FFA500;
		color: #FFFFFF;
		cursor: pointer;
		
	}
	/* 내용부, 목록, 셀렉트박스 */
	.flex_box{
		display: flex;
		justify-content: space-between;
		
	}
	.border_line{
		border: 1px solid #e8e8e8;
	}
	.category_btn{
		background-color: #FFD500;
		color: black;
		border: 0;
	}


	.avi_list{
		margin-top: 20px;
		margin-bottom: 20px;
	}
	.column{
		width: 100%;
		min-height: 200px;
		border: 1px solid #e8e8e8;
		display: flex;

	}
	.thumnail_img{
		width: 100%;
		height: 100%;
	}
	.column_thumnail{
		width: 40%;
		


	}
	.column_title{
		border: 1px solid red;
	}
	.column_notice{
		
		height: 100%;
		text-align: left;
		margin: 15px;
	}
	.column_price{
		width: 30%;

		margin: 30px 15px;
		align-items: center;
		text-align: center;



	}
	.side_btn{
		padding: 15px;
		border: 1px solid #e8e8e8;
		border-radius: 5px;
		background-color: #ffffff;
		cursor: pointer;
		font-size: 16px;
	}
	.select_btn{
		padding: 15px;
		border: 1px solid #e8e8e8;
		border-radius: 5px;
		background-color: #ffffff;
		cursor: pointer;
		font-size: 14px;
	}
	



</style>

<body>
	<div class="wrap">
		<div class="category_wrap">
			<div class="category_search">
				<input class="search_box" type="text" name="" placeholder="강의 검색하기">
				<button class="search_btn" type="button">검색</button>
			</div>
		</div>
		
		<!-- 상단 타이틀 -->
		<div class="flex_box">
			<div>
				<h3>강의목록</h3>
			</div>
			<div class="flex_box" style="margin-top: 5px">
				<button class="side_btn" type="button"><i class="fas fa-list"></i></button>
				<select class="select_btn">
					<option selected>추천순</option>
					<option>인기순</option>
					<option>최신순</option>
				</select>
			</div>
		</div>
		
		<div class="avi_list">
			<div class="column">
				
				<div class="column_thumnail">
					<img src="../img/10.jpg" class="thumnail_img">
				</div>

				<div class="column_notice">
					<h2>[C#과 유니티로 만드는 MMORPG 게임 개발 시리즈] Part3: 유니티 엔진</h2>
					<span>모의해킹 실무에서 활용되고 있는 프리다 (Frida)의 완벽 활용법을 배울 수 있습니다.
					</span><br>
					<span>평점</span>
				</div>
				
				<div class="column_price">
					<h2>10,000</h2>
					<button class="side_btn" type="button"><i class="fas fa-shopping-cart"></i></button>
					<button class="side_btn" type="button"><i class="fas fa-heart"></i></button>
				</div>
				
			</div>
		</div>

		<div class="avi_list">
			<div class="column">
				
				<div class="column_thumnail">
					<img src="../img/10.jpg" class="thumnail_img">
				</div>

				<div class="column_notice">
					<h2>[C#과 유니티로 만드는 MMORPG 게임 개발 시리즈] Part3: 유니티 엔진</h2>
					<span>모의해킹 실무에서 활용되고 있는 프리다 (Frida)의 완벽 활용법을 배울 수 있습니다.
					</span><br>
					<span>평점</span>
				</div>
				
				<div class="column_price">
					<h2>10,000</h2>
					<button class="side_btn" type="button"><i class="fas fa-shopping-cart"></i></button>
					<button class="side_btn" type="button"><i class="fas fa-heart"></i></button>
				</div>
				
			</div>
		</div>
		
	</div>
</body>
</html>