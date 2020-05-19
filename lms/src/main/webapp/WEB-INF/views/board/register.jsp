<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="../include/include.jsp" %>  
<%@ include file="../include/header.jsp" %>

<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" type="text/css" href="${path}/resources/css/common.css">
	<meta charset="utf-8">
	<title> board register </title>
	<script src="https://kit.fontawesome.com/912e79718f.js" crossorigin="anonymous"></script>

<style type="text/css">
		font-family: 'Nanum Gothic', sans-s
	
	*{
		font-family: 'Nanum Gothic', sans-serif;
		box-sizing: border-box;
	}
	body, h1, h2, h3, h4, h5, h6, ul, p, h3, ul, li{
		margin: 0;
		padding: 0;
	}
	body{
		background-color: #FFFFFF;
		font-size: 14px;erif;
	}
	ul{
		list-style: none;
	}
	a{
		text-decoration: none;
		color: inherit;
	}
	div{
		display: block;
		text-align: center;
		align-items: center;

	}
	.wrap{
		width: 1000px;
		height: 1000px;
		margin: 100px auto;
		border: 1px solid black;
	}
	.wrap_content{
		
		width: 1000px;
		margin: 100px auto;
		text-align: center;
		align-items: center;
	}
	.board_main{
		display: block;
		text-align: center;
		font-size: 24px;
		font-weight: bold;
		color: #2F3138;
		margin: 20px;
	}
	.block_line{
		margin-top: 10px;
		margin-bottom: 10px;
		display: block;
		border-top: 1px solid #e8e8e8;
	}
	.board_title_box{
		display: block;
		border-top: 1px solid #e8e8e8;
		height: 50px;
		line-height: 50px;
		
	}
	.board_title_content{
		display: flex;
		/* justify-content: space-between; */
		/* margin: 16px auto; */
		height: 100%;
		
	}

	/* 내용 */
	.board_content_box{
		display: block;
		border-top: 1px solid #e8e8e8;
		border-bottom: 1px solid #e8e8e8;
		height: 200px;
			
	}
	.board_content_content{
		display: flex;
		/* margin: 90px auto; */
		text-align: center;	
		height: 100%;
	}
	/* 첨부파일 */
	.upload_box{
		display: block;
		border-top: 1px solid #e8e8e8;
		border-bottom: 1px solid #e8e8e8;
		height: 100px;
		margin-top: 10px;
	}
	.board_upload_content{
		display: flex;
		/* margin: 40px auto; */
		text-align: center;
		height: 98%;
	}
	.upload_title{
		display: block;

	}
	.upload_content{
		display: block;
		width: 90%;
		outline-style: dotted;

	}

	.title_bold{
		font-size: 14px;
		font-weight: bold;
		width: 75px;
		height: 100%;

		
	}
	.margin_left{
		margin-left: 10px;
		height: 100%;

	}
	.margin_right{
		margin-right: 10px;
	}
	.margin_top{
		margin-top: 10px;
	}
	.box{
		border: 1px solid red;
	}

	.writer_btn{
		display: flex;
		justify-content: space-between;
	}
	.btn{
		cursor: pointer;
		display: block;
		background-color: gold;
		color: white;
		border: 1px solid gold;
		padding: 5px;
		width: 90px;
	}
	.content_line{
		line-height: 180px;
	}
	.outline_box{
		margin-top: 41px;
	}
	.txt_content{
		width: 903px;
		height: 99%;
	}

	.title_input{
		width: 100%;
		height: 80%;
	}
	.title_line{
		width: 903px;
	}

</style>
</head>
<body>
	<div class="wrap">
		<div class="wrap_content">
			<div class="block_line"></div>
			<div class="board_main">게시글 등록</div>
			<div class="block_line"></div>
			
			<div class="board_title_box">
				<div class="board_title_content">
					<div class="title_bold margin_left"> 작성자 </div>
					<div class="margin_left">이름</div>
				</div>
			</div>
			<div class="board_title_box">
				<div class="board_title_content">
					<div class="title_bold margin_left"> 종류 </div>
					<div class="margin_left">
						<select name="category">
						    <option value="">선택</option>
						    <option value="자유게시판">자유게시판</option>
						    <option value="후기게시판">후기게시판</option>
						    <option value="Q&A">Q&A</option>
						</select>
					</div>
				</div>
			</div>
			<div class="board_title_box">
				<div class="board_title_content">
					<div class="title_bold margin_left">제목</div>
					<div class="margin_left title_line"><input class="title_input" placeholder="제목을 입력하세요" type="" name=""></div>
				</div>
			</div>

			<div class="board_content_box">
				<div class="board_content_content">
					<div class="title_bold margin_left content_line">내용</div>
					<div class="margin_left"><textarea class="txt_content" placeholder="내용을 입력하세요"></textarea></div>
				</div>
			</div>

			<div class="upload_box">
				<div class="board_upload_content">
				<div>
						<div class="upload_title title_bold margin_left">첨부파일</div>
					</div>
					<div class="upload_content margin_left">
						<div class="outline_box">
							<span>첨부파일 드래그</span>
						</div>
					</div>
					
				</div>
			</div>
			
			<div class="block_line"></div>
			
			<div class="writer_btn">
				<button class="cancle btn" type="button">취소</button>
				<button class="agree btn" type="button">등록</button>
			</div>
		</div>
	</div>
</body>
</html>