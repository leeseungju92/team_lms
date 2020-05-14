<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="include/header.jsp"%>

<!DOCTYPE html>
<html>
<head>
	<title>인덱스페이지</title>
		<script src="https://kit.fontawesome.com/e272fd87da.js" crossorigin="anonymous"></script>
	<style type="text/css">
		.content_wrap{
			width: 1200px;
			margin:0 auto;
		}
	
		* {box-sizing: border-box;}
		body {font-family: Verdana, sans-serif;

		}

		/* 타이틀 */
		.title_home{
			text-align: left;
		}

		/*토픽 스타트*/
		.topic_start{
			width: 1200px;
			height:220px;
		}
		.topic_start_content{
			width: 100%;
			height: 100%;
			display: flex;

		}
		.topic_content_area{
			width: 25%;
			height: 100%;
			padding: 0 7px;
			border: solid 1px #dedede;
			margin: 0 3px;
			background-color: #f9f9f9;
		}
		.topic_start_img{
			width: 100%;
			height: 70%;

		}
		/*빅서치바*/
		.big_search_bar{
			max-width: 580px;
			width: 100%;
			position: relative;
			margin: 0 auto;
			padding: 14px;

		}
		.big_search_bar .input{
			background-color: rgba(29, 192, 120, .12);
			border:1px solid rgba(29, 192 120, .24);
			padding: 14px 20px;
			width: 100%;
		}
		.search_btn{
			position: absolute;
			padding: 14px;
			margin: 0 0 0 -45px;

		}

		/*신규강좌*/
		.new_class_content{
			width: 100%;
			height: 100px;
			display: flex;
			margin: 0 auto;
			justify-content: center;
		}
		.new_class_area{
			width: 80%;
			height: 100px;
			margin: 0 6px;
		}

		/*토픽수정 시작*/
		.topic_start_wrapper{
			width: 100%;
			height: 100%;
			display: flex;
			flex-direction: column;

		}
		.topic_start_name{
			margin-bottom: .5rem;
			color: #7c00ff !important;
			padding-top: 18px;
		}
		.topic_start_title{
			margin-bottom: 2rem;
			color: #333236;
			font-weight: bold;

		}
		.topic_start_summary{
			color: #a9abb7;
			line-height: 1.43;
			font-size:14px;
		}
		.topic_start_footer{
			display: flex;
			justify-content: space-between;
			margin-top: 30px;
		}
		.topic_start_footer_left{
			background-color: rgba(221,224,234, 0.37);
			color: #a9abb7;
			font-size: 12px;
		}
		/*토픽수정 끝*/


		/*신규강좌 수정 시작*/
		.new_class_area_wrapper{
			background-color: #f9f9f9;
			border: 1px solid #dedede;
			box-shadow: 0 2px 4px 0 rgba(0,0,0,.1);
			min-width: 450px;
		}
		.new_class_img{
			min-width: 84px;
			height: 84px;
			display: flex;
			
		}
		.new_class_title{
			flex-flow: column wrap;
			justify-content: space-between;
			padding: 16px;
		}
		del{
			color: #ff7867;
		}

		/*신규강좌 수정 끝*/

		/*강좌평 시작*/
		.member_comment{
			height:220px;
		}
		.member_comment_content{
			width: 100%;
			height: 100%;
			display: flex;
		}
		.member_comment_area{
			width: 25%;
			height: 100%;
			padding: 0 7px;
			border: solid 1px #dedede;
			margin: 0 3px;
			background-color: #f9f9f9;
		}
		.member_comment_id{
			margin-bottom: .5rem;
			color: black;
			padding-top: 18px;
		}
		.member_comment_title{
			margin-bottom: 2rem;
			color: #333236;
			font-weight: bold;
		}
		.member_comment_summary{
			color: #a9abb7;
			line-height: 1.43;
			font-size:14px;
		}
		/*강좌평 끝*/

		/* 맨위아이콘*/
		.top_icon{
			font-size: 80px;
			color: #e6e135;

		}
		.index_margin{
			margin-top : 38px;
		}
		.index_top_txt{
			font: 48px bold yellow;
		}
	</style>
</head>
<body>		
	<div class="content_wrap" style="justify-content: space-between;">
		<h2 class="index_top_txt index_margin">WELCOME! :)</h2>
		
		<div class="big_search_bar">
			<input type="text" class="input" placeholder="배우고 싶은 지식을 입력">		
			<button type="button" class="search_btn"><i class="fas fa-search"></i></button>
	    </div>	
		<h4 class="title_home index_margin">
			<span >토픽으로 시작하기</span>
		</h4>
		<div class="topic_start">
			<div class="topic_start_content">
				<div class="topic_content_area">
					<a href="#" style="text-decoration: none;">
						<div class="topic_start_name ">
							Python
						</div>
						<div class="topic_start_title">
							프로그래밍 시작하기
						</div>
						<div class="topic_start_summary">
							프로그래밍의 진입 장벽이 너무 높게 느껴진다면?
							파이썬으로 프로그래밍을 시작하세요!
						</div>
						<div class="topic_start_footer">
							<div class="topic_start_footer_left">2챕터 18레슨
							</div>
							<div class="topic_start_footer_right">
								<span>1주과정</span>
							</div>
						</div>
					</a>
				</div>
				<div class="topic_content_area">
					<a href="#" style="text-decoration: none;">
						<div class="topic_start_name ">
							Python
						</div>
						<div class="topic_start_title">
							프로그래밍 시작하기
						</div>
						<div class="topic_start_summary">
							프로그래밍의 진입 장벽이 너무 높게 느껴진다면?
							파이썬으로 프로그래밍을 시작하세요!
						</div>
						<div class="topic_start_footer">
							<div class="topic_start_footer_left">2챕터 18레슨
							</div>
							<div class="topic_start_footer_right">
								<span>1주과정</span>
							</div>
						</div>
					</a>
				</div>
				<div class="topic_content_area">
					<a href="#" style="text-decoration: none;">
						<div class="topic_start_name ">
							Python
						</div>
						<div class="topic_start_title">
							프로그래밍 시작하기
						</div>
						<div class="topic_start_summary">
							프로그래밍의 진입 장벽이 너무 높게 느껴진다면?
							파이썬으로 프로그래밍을 시작하세요!
						</div>
						<div class="topic_start_footer">
							<div class="topic_start_footer_left">2챕터 18레슨
							</div>
							<div class="topic_start_footer_right">
								<span>1주과정</span>
							</div>
						</div>
					</a>
				</div>
				<div class="topic_content_area">
					<a href="#" style="text-decoration: none;">
						<div class="topic_start_name ">
							Python
						</div>
						<div class="topic_start_title">
							프로그래밍 시작하기
						</div>
						<div class="topic_start_summary">
							프로그래밍의 진입 장벽이 너무 높게 느껴진다면?
							파이썬으로 프로그래밍을 시작하세요!
						</div>
						<div class="topic_start_footer">
							<div class="topic_start_footer_left">2챕터 18레슨
							</div>
							<div class="topic_start_footer_right">
								<span>1주과정</span>
							</div>
						</div>
					</a>
				</div>
			</div>			
		</div>
		<div class="new_class index_margin">
			<h4 class="title_home">
				<span>신규 강좌</span>
			</h4>
		</div>

		<div>
			<div class="new_class_content" style="display: flex; margin: 0 auto;">
				<div class="new_class_area">
					<div class="new_class_area_wrapper">
						<div class="new_class_img">
							<img src="${path}/resources/img/newclass.png">
							<div class="new_class_title">
								<span>처음하는 코딩 - 플레이봇(JavaScript)</span>
								<div class="new_class_price">
									<span>
										<del>22,000원</del>
										<span class="">16,500원</span>
									</span>
								<div class="icon">
									<i class="fas fa-shopping-cart"></i>
								</div>
								</div>
							
							</div>
						</div>

					</div>
				</div>
				<div class="new_class_area">
					<div class="new_class_area_wrapper">
						<div class="new_class_img">
							<img src="${path}/resources/img/newclass.png">
							<div class="new_class_title">
								<span>처음하는 코딩 - 플레이봇(JavaScript)</span>
								<div class="new_class_price">
									<span>
										<del>22,000원</del>
										<span class="">16,500원</span>
									</span>
								</div>
							</div>
						</div>

					</div>
				</div>
			</div>
			<div class="new_class_content" style="display: flex;  flex; margin: 0 auto;">
				<div class="new_class_area">
					<div class="new_class_area_wrapper">
						<div class="new_class_img">
							<img src="${path}/resources/img/newclass.png">
							<div class="new_class_title">
								<span>처음하는 코딩 - 플레이봇(JavaScript)</span>
								<div class="new_class_price">
									<span>
										<del>22,000원</del>
										<span class="">16,500원</span>
									</span>
								</div>
							</div>
						</div>

					</div>
				</div>
				<div class="new_class_area">
					<div class="new_class_area_wrapper">
						<div class="new_class_img">
							<img src="${path}/resources/img/newclass.png">
							<div class="new_class_title">
								<span>처음하는 코딩 - 플레이봇(JavaScript)</span>
								<div class="new_class_price">
									<span>
										<del>122,000원</del>
										<span class="">16,500원</span>
									</span>
								</div>
							</div>
						</div>

					</div>
				</div>
			</div>
		</div>

		<h4 class="title_home index_margin">
			<span >수강생 의견</span>
		</h4>

		<div class="member_comment">
			<div class="member_comment_content">
				<div class="member_comment_area">
					<a href="#" style="text-decoration: none;">
						<div class="member_comment_id ">
							abcd134
						</div>
						<div class="member_comment_title">
							프로그래밍 시작하기
						</div>
						<div class="member_comment_summary">
							프로그래밍의 진입 장벽이 너무 높게 느껴진다면?
							파이썬으로 프로그래밍을 시작하세요!
						</div>
					</a>
				</div>
				<div class="member_comment_area">
					<a href="#" style="text-decoration: none;">
						<div class="member_comment_id ">
							abcd134
						</div>
						<div class="member_comment_title">
							프로그래밍 시작하기
						</div>
						<div class="member_comment_summary">
							프로그래밍의 진입 장벽이 너무 높게 느껴진다면?
							파이썬으로 프로그래밍을 시작하세요!
						</div>
					</a>
				</div>
				<div class="member_comment_area">
					<a href="#" style="text-decoration: none;">
						<div class="member_comment_id ">
							abcd134
						</div>
						<div class="member_comment_title">
							프로그래밍 시작하기
						</div>
						<div class="member_comment_summary">
							프로그래밍의 진입 장벽이 너무 높게 느껴진다면?
							파이썬으로 프로그래밍을 시작하세요!
						</div>
					</a>
				</div>
				<div class="member_comment_area">
					<a href="#" style="text-decoration: none;">
						<div class="member_comment_id ">
							abcd134
						</div>
						<div class="member_comment_title">
							프로그래밍 시작하기
						</div>
						<div class="member_comment_summary">
							프로그래밍의 진입 장벽이 너무 높게 느껴진다면?
							파이썬으로 프로그래밍을 시작하세요!
						</div>
					</a>
				</div>
			</div>			
		</div>
	</div>
	<div class="index_margin"></div>
</body>

<%@ include file="include/footer.jsp"%>
</html>