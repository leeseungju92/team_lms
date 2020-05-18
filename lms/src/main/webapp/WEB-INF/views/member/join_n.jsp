<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<%@ include file = "../include/header.jsp" %>
<html>
<head>
	<title>회원가입</title>

<style type="text/css">
	.userJoin{
		margin: 100px auto 0;	
		display: flex;
		flex-direction: column;
		width: 1200px;
		min-height: 800px;
		align-items: center;
		justify-content: flex-start;		
	}
	.userJoin_input_attr{
		width: 240px;
		height: 37px;
	}
	.userJoin_input_wrap{
		display: flex;
		flex-direction: column;
	}
	.userJoin_label_css{
		min-width: 96px;
		line-height: 43px;
	}
	.join_err_msg{
		font-size: 12px;
		font-weight: bold;
		color: red;
		visibility: hidden;
	}
	.userJoin_label_attr{
		display: flex;
		width: 400px;
		justify-content: space-between;
	}
	.join_btn{
		background-color: yellow;
		cursor: pointer;
		border-radius:5px;
		width: 300px;
		height: 40px;
		margin-bottom: 28px;
	}
	.join_information_msg{
		font-size: 12px;
		font-weight: bold;		
	}
	#btn_join{
		cursor:no-drop;
	}
</style>
</head>
<body>
	<form:form id="frm_member" modelAttribute="memberDTO" atuocomplete="on">
		<div class="userJoin">
			<div class="userJoin_input_wrap">
				<label for="id" class="userJoin_label_attr" >
					<span class="userJoin_label_css" > 아이디</span>
					<input type="text" name="id" class="userJoin_input_attr" id="uid" placeholder="사용하실 아이디를 입력하세요">				
				</label>				
				<span class="join_err_msg">필수 정보입니다.</span>
			</div>
			<div class="userJoin_input_wrap">
				<label for="idck"class="userJoin_label_attr">
					<span class="userJoin_label_css"> 아이디확인</span>
					<input type="text" name="idck"class="userJoin_input_attr" id="urid"placeholder="사용하실 아이디를 확인하세요">				
				</label>				
				<span class="join_err_msg">필수 정보입니다.</span>		
			</div>
			<div class="userJoin_input_wrap">
				<label for="pw"class="userJoin_label_attr">
					<span class="userJoin_label_css"> 비밀번호</span>
					<input type="password" name="pw"class="userJoin_input_attr"id="upw"placeholder="사용하실 비밀번호를 입력하세요">						
				</label>
				<span class="join_err_msg">필수 정보입니다.</span>
			</div>
			<div class="userJoin_input_wrap">
				<label for="pwck"class="userJoin_label_attr">
					<span class="userJoin_label_css"> 비밀번호확인</span>
					<input type="password" name="pwck"class="userJoin_input_attr"id="urpw"placeholder="사용하실 비밀번호를 확인하세요">						
				</label>
				<span class="join_err_msg">필수 정보입니다.</span>
			</div>
			<button type="button" class="join_btn" id="btn_join">가입하기</button><span class="join_information_msg">가입하기를 클릭함으로써 벼락의 <a href="">이용약관</a>, <a href="">개인정보취급방침</a> 에 동의합니다.</span>			
		</div>		
	</form:form>
</body>
<%@ include file = "../include/footer.jsp" %>
<script src="${path}/resources/js/validation_n.js"></script>
<script type="text/javascript">
	$(function(){
		var checkArr = new Array(4).fill(false);
		function ckDesign(code, desc, line, msg){
			if(code == 0 || code == 10 ){				
				$('.userJoin_input_wrap:eq('+line+')').css('border', '2px solid #3885ca');				
				$('.join_err_msg:eq('+msg+')').css('visibility', 'visible')
									    .text(desc)
									    .css('color','#3885ca');
				return true;
			}else{				
				$('.userJoin_input_wrap:eq('+line+')').css('border', '2px solid #d95339');				 
				$('.join_err_msg:eq('+msg+')').css('visibility', 'visible')
									    .text(desc)
									    .css('color','#d95339');
			   return false;
			}
	   }
		var pwFlag = false;
		var idFlag = false;
		var checkAll = false;
		//id 유효성 
		$('#uid').keyup(function(){
			var id = $(this).val().trim();
			var result = joinValidate.checkId(id);
			if(result.code == 0){
				checkArr[0] = 'true';
				idFlag = true;
			}else{
				checkArr[0] = 'false';
			}
			ckDesign(result.code, result.desc, 0,0);
		});
		//id재확인 유효성 체크
		$('#urid').keyup(function(){
			var id = $.trim($('#uid').val());
			var rid = $.trim($('#urid').val());
		
			var result = joinValidate.checkRid(id, rid, idFlag);
			if(result.code == 10){
				checkArr[1] = true;
				$('.join_info_box_content:eq(1)').css('border', '2px solid #3885ca');
				
			}else if(result.code == 6){
				checkArr[1] = false;
				$('.join_info_box_content:eq(1)').css('border', '2px solid #3885ca');
				
			}else{
				checkArr[1] = false;
			}
			ckDesign(result.code, result.desc, 1, 1);
		});
		
	});



</script>
</html>