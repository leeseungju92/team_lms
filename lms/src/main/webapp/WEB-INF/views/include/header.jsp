<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "include.jsp" %>
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" type="text/css" href="${path}/resources/css/common.css">

	<meta charset="utf-8">
	<title> 벼락 </title>
	<script src="https://kit.fontawesome.com/2518bc55d6.js" crossorigin="anonymous"></script>
</head>
<style type="text/css">
	*{
		box-sizing: border-box;
	}
	
	div{
		display: block;
		align-items: center;
		/* border: 1px solid red; */
	}
	
	div.header_wrap{
		width: 100%;
		background-color: transparent;
	}
	div.header_wrap {
		background-color: #FFFFFF;
		box-shadow: 0 2px 4px 0 hsla(0,0%,80.8%,.5)
	}
	div.header_content{
		width: 1200px;
		margin: 0 auto;
		height: 65px;
		box-sizing: border-box;
		
		display: flex;
		justify-content: space-between;
		align-items: center;
	}
	.header_right{
		display: flex;
		justify-content: space-between;
	}
	.header_left{
		display: flex;
		justify-content: space-between;
	}
	
	/* 헤더 가운데 로고 */
	div.header_content h1{
		margin: 0 auto;
		font-size: 40px;
		width: 100px;
		

	}
	.header_logo{
		display: flex;
		position:relative;
		margin:0 auto;
		
		color: #000;
	}
	


	/* 헤더 드롭다운 네비 */

	.header_content_nav{
			display: flex;
			align-items: center;
			justify-content: space-between;
			width: 414px; /* new men women 사이즈 */
		}
		.header_content_nav > div {
			/* border: 1px solid red; */
			padding: 10px 0;
		}
		.header_content_member{
			/* width: 160px; */
			display: flex;
			align-items: center;
			justify-content: space-between;
			flex-direction: row; /* default(생략가능) */
		}
		.header_content_member > div {
			padding: 10px 0px 10px 3px;
		}
		.header_content_dropdown_group {
			position: relative;
		}
		.header_content_dropdown_wrap:hover .header_dropdown {
			display: block;
		}
		.header_content_dropdown_group > a {
			display: inline-block;
			padding: 12px 15px;
			font-weight: 400;
			border: 1px solid transparent;
			border-radius: 2px;
			height: 45px;
			color: black;
			line-height: 19px;
		}
		.header_content_dropdown_wrap:hover > div > a,
		.header_content_member_cart:hover > a{
			background-color: rgba(20, 23, 28, .05);
			border-color: rgba(20, 23, 28, .05);
		}
		.nav_hover_color{
			background-color: rgba(20, 23, 28, .05);
			border-color: rgba(20, 23, 28, .05);
		}
		.header_content_member_cart > a {
			display: inline-block;
			width: 45px;
			height: 45px;
			border-radius: 50%;
			color: #506763;
			border: 1px solid transparent;
			text-align: center;
			padding: 12px;
			line-height: 19px;
		}
		.header_content_logo_img{
			max-width: 145px;
			vertical-align: middle;
		}
		.header_content_logo_text{
			font-size: 10px;
			font-weight: bold;
			vertical-align: middle;
			
		}		
		.header_dropdown_menu{
			border-bottom-left-radius: 2px;
			border-bottom-right-radius: 2px;
			box-shadow: 0 4px 16px rgba(20, 23, 28, .25);
			background-color: white;
			padding: 10px 0;
			border: 1px solid gold;
			
		}
		.header_dropdown_menu a{			
			width: 120px;
			display: inline-block;
			font-size: 15px;
			color: #505763;
			text-align: center;
			padding: 5px 15px;
			font-weight: normal;
			position: relative;
			z-index: 100;
		}
		.header_dropdown_menu a:hover{
			color: #007791;
			background-color: #f2f3f5;
		}
		.header_dropdown{
			position: absolute;
			top: 39px;
			left: 0;
			display: none;
			
		}
		.arrow{
			position: absolute;
			top: 9px;
			left: 3px;
			width: 15px;
			height: 15px;
			transform: rotate(45deg);
			background-color: white;
			border-color: transparent transparent #fff transparent;
			z-index: -1;
			border: 1px solid gold;
			overflow: hidden;
		}
		
	/* 검색 */
	.header_content_search_group{
		display: flex;
		align-items: center;
		background-color: #f2f3f5;
		border-radius: 2px;
		
	}
	.header_content_search_input{
		background-color: transparent;
		font-size: 13px;
		border-color: transparent;
		width: 220px;
		height: 44px;
		border-radius: 2px;
		padding: 10px 12px;
		outline: none; /* input 태그 Focus시 파랑테두리 */
	}
	.header_content_search_btn{
		background-color: gold;
		border-color: transparent;
		width: 44px;
		height: 44px;
		cursor: pointer;
		color: black;

		border-top-right-radius: 2px;
		border-bottom-right-radius: 2px;
	}
	.header_content_search_btn:hover{
		background-color: #FFA500;
		color: yellow;
	}
	
	/* 회원 */
	.member{
		display: flex;
		justify-content: space-between;
	}
	.shopping{
		padding: 0 10px;
	}
	/* 버튼들 */
	button.btn{
		display: inline-block;
		text-align: center;
		font-size: 14px;
		cursor: pointer;
		padding: 10px 10px;
		border: 1px solid black;
		
	}
	button.btn-basic{
		border: 1px solid #dbdbdb;
		background-color: #FFFFFF;
		color: black;
	}
	button.btn-basic:hover{
		color: white;
		border-color: #dbdbdb;
		background-color: #FFA500;
	}
	button.btn-primary{
		border: 1px solid #dbdbdb;
		background-color: gold;
		color: #black;
	}
	button.btn-primary:hover{
		background-color: #FFA500;
		border: 1px solid #FFA500;
		color: white;
	}
	button.btn-support {
		background-color: #1591DF;
		color: white;
	}
	button.btn-support:hover{
		background-color: #15E4FF;
		border-color: transparent;
	}
	/* Text 밑줄 쳐지는 CSS 효과 */
	.magicline:after{
		content: '';
		display: block;
		width: 0;
		height: 2.5px;
		background-color: gold;
		transition: width 0.3s;
		
	}
	.magicline:hover:after{
		width: 100%;
	}
</style>
<body>
	<div class="header_wrap">
		<div class="header_content">
			<div class="header_left">			
				<div class="header_content_nav">
					<div class="header_logo">
						<div><i class="fas fa-bolt"></i></div>
						<a href="${path}/"><h1>벼락</h1></a>						
					</div>
					<div class="header_content_dropdown_wrap">
						<div class="header_content_dropdown_group">
							<a href="#" class="magicline">소개</a>
								<div class="header_dropdown">
								<div class="arrow"></div>
									<ul class="header_dropdown_menu">
									<li><a href="#">소개</a></li>
									<li><a href="#">소개</a></li>
									<li><a href="#">소개</a></li>
									<li><a href="#">소개</a></li>
								</ul>
							</div>
						</div>
					</div>
					
					<div class="header_content_dropdown_wrap">
						<div class="header_content_dropdown_group">
							<a href="#" class="magicline">강의</a>
								<div class="header_dropdown">
								<div class="arrow"></div>
									<ul class="header_dropdown_menu">
									<li><a href="#">강의목록</a></li>
									<li><a href="#">강의</a></li>
									<li><a href="#">강의</a></li>
									<li><a href="#">강의</a></li>
								</ul>
							</div>
						</div>
					</div>
					<div class="header_content_dropdown_wrap">
						<div class="header_content_dropdown_group">
							<a href="#" class="magicline">커뮤니티</a>
								<div class="header_dropdown">
								<div class="arrow"></div>
									<ul class="header_dropdown_menu">
									<li><a href="#">자유게시판</a></li>
									<li><a href="#">Q&A</a></li>
									<li><a href="#">수강후기</a></li>
									<li><a href="#">커뮤니티</a></li>
								</ul>
							</div>
						</div>
					</div>

					
					<div class="header_content_dropdown_wrap">
						<div class="header_content_dropdown_group">
							<a href="#">로드맵</a>
						</div>
					</div>
				</div>
				
				
			</div>
			

			<div class="header_right">
				

				<div class="header_content_search">
					<form name="" action="" method="GET">
						 <div class="header_content_search_group">
						 	<input type="text" placeholder="강의 검색" name="keyword" class="header_content_search_input"> 
							<button type="button" class="header_content_search_btn">
								<i class="fas fa-search"></i></button>
						 </div>
					</form>
				</div>

				
						
				<div class="header_content_dropdown_wrap shopping">
					<div class="header_content_dropdown_group">
						<a href="#">장바구니</a>
					</div>
				</div>


				<div class="member">
					<div><button type="button" class="btn btn-basic login_open" id="header_login">로그인</button></div>
					<div><button type="button" class="btn btn-primary" id="header_join">회원가입</button></div>
				</div>
			</div>
		</div>
	</div>
</body>
<script type="text/javascript">
	$(document).on('click', '#header_login', function(){
		location.href="${path}/login";
	});
	$(document).on('click', '#header_join', function(){
		location.href="${path}/join";
	});
	$(document).on('click', '#header_btn_logout', function(){
		$.ajax({
			url:'${path}/login/out',
			type:'POST',
			success:function(){
				console.log('Logout Success:)');
				location.reload();
			},
			error: function(){
				alert('system erorr:/');
			}
		});
	});
</script>

</html>