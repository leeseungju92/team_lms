<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="../include/include.jsp" %>  
<%@ include file="../include/header.jsp" %>
<!DOCTYPE html>
<html>
<head>

	<link rel="stylesheet" type="text/css" href="${path}/resources/css/common.css">
	<meta charset="utf-8">
	<title> board list </title>
	<script src="https://kit.fontawesome.com/2518bc55d6.js" crossorigin="anonymous"></script>
</head>
<style type="text/css">
	div{
		
	}
	input{
		height: auto;
	
	}
	.wrap{
		width: 1000px;
		height: 1000px;
		margin: 100px auto;
		border: 1px solid black;
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
		margin: 0 15px;
	}
	.border_line{
		border: 1px solid #e8e8e8;
	}
	.category_btn{
		background-color: #FFD500;
		color: black;
		border: 0;
	}
	.select_btn{
		
		
	}
	.table_wrap{
		margin: 0 15px;
		
	}
	.board_list{

	}

	
	.notice{
		background-color: #F6F6F6; 
	}
	.board_list thead tr {
		background-color: gold;

	}
	.board_list tbody tr td{
		padding: 10px;
		line-height: 20px;
		border-bottom: 1px solid #e8e8e8;
	}

	.tLeft{
		text-align: left;
	}
</style>
<body>
	<div class="wrap">
		
		<div class="category_wrap">
			<div class="category_search">
				<input class="search_box" type="text" name="" placeholder="게시글 검색하기">
				<button class="search_btn" type="button">검색</button>
			</div>
		</div>
		
		<!-- 상단 타이틀 -->
		<div class="flex_box">
			<div>
				<p><span>게시판</span>
			</div>
			<div class="">
				<button class="category_btn" type="button"><i class="fas fa-list"></i></button>
				<select class="select_btn">
					<option selected>추천순</option>
					<option>인기순</option>
					<option>최신순</option>
				</select>
			</div>
		</div>
		
		<!-- 테이블 -->
		<div class="table_wrap">
			<table width="100%" border="0" cellspacing="0" cellpadding="0" class="board_list">
				<caption></caption>
				<colgroup>
					<col style="width:8%">
					<col style="width:68%">
					<col style="width:12%">
					<col style="width:12%">
				</colgroup>
				<thead>
					<tr>
						<th scope="col">번호</th>
						<th scope="col" class="tLeft" style="padding: 10px;">제목</th>
						<th scope="col">작성자</th>
						<th scope="col">작성일</th>
					</tr>
				</thead>
				<tbody>
					<tr class="notice">
						<td>공지</td>
						<td class="tLeft"><a href="#">내용</a></td>
						<td>admin</td>
						<td>sysdate</td>
					</tr>
					<tr>
						<td>1</td>
						<td class="tLeft"><a href="#">내용</a></td>
						<td>관리자</td>
						<td>sysdate</td>
					</tr>
				</tbody>
			</table>
		</div>
		
		<div class="" style="margin-top: 10px">
			<button type="button" class="btn btn-basic">글쓰기</button>
		</div>
	</div>
</body>
</html>