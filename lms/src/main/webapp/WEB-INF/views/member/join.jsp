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
<script src="${path}/resources/js/validation.js"></script>
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
		var checkAll = true;
		//ID유효성체크:	
		$('#uid').keyup(function(){			
			var id = $(this).val().trim();					
			var result = joinValidate.checkId(id);
			if(result.code == 0){
				checkArr[0] = 'true';
				idFlag=true;
			}else {
				checkArr[0] = 'flase';
			}
			ckDesign(result.code, result.desc, 0, 0);
		});
		//ID재확인 유효성체크
		$('#urid').keyup(function(){
			var id = $.trim($('#uid').val());
			var rid = $.trim($('#urid').val());
			// console.log(pw+', '+rpw);

			var result = joinValidate.checkRid(id, rid, idFlag);
			// console.log(pw+', '+rpw);
			// alert(result.code+', '+ result.desc);
			if(result.code == 10){
				checkArr[1] = true;
				$('.join_info_box_content:eq(1)').css('border', '2px solid #3885ca');				
			}else if(result.code==6){
				checkArr[1] = false;
				$('.join_info_box_content:eq(1)').css('border', '2px solid #3885ca');				
			}else{
				checkArr[1] = false;
			}
		
			printCheckArr(checkArr);		
			ckDesign(result.code, result.desc, 1, 1);
		});

		//비밀번호 유효성 체크
		$('#upw').keyup(function(){			
			var pw = $.trim($('#upw').val());
			var rpw = $.trim($('#urpw').val());			
			var result = joinValidate.checkPw("", pw, rpw);
			if(result.code == 0 || result.code == 10 || result.code == 6){
				pwFlag = true;
			}else{
				pwFlag=false
			}
			if(result.code == 0){
				checkArr[2] = true;
				$('.join_info_box_content:eq(3)').css('border', '2px solid #3885ca');				
			}else if(result.code == 6){
				checkArr[2] = false;
				$('.join_info_box_content:eq(3)').css('border', '2px solid #3885ca');				
			}else {
				checkArr[2] = false;
			}			
			printCheckArr(checkArr);
			//3. 체크 결과에 따라 디자인하기
			ckDesign(result.code, result.desc, 2, 2);
		});	

		//비밀번호 재확인 유효성 체크
		$('#urpw').keyup(function(){
			var pw = $.trim($('#upw').val());
			var rpw = $.trim($('#urpw').val());
			// console.log(pw+', '+rpw);

			var result = joinValidate.checkRpw(pw, rpw, pwFlag);
			// console.log(pw+', '+rpw);
			// alert(result.code+', '+ result.desc);
			if(result.code == 10){
				checkArr[3] = true;
				$('.join_info_box_content:eq(4)').css('border', '2px solid #3885ca');				
			}else if(result.code==6){
				checkArr[3] = false;
				$('.join_info_box_content:eq(4)').css('border', '2px solid #3885ca');				
			}else{
				checkArr[3] = false;
			}	
			
			printCheckArr(checkArr);		
			ckDesign(result.code, result.desc, 3, 3);
		});

		//버튼활성화!
		$('.userJoin_input_attr').keyup(function(){
			ckColorBtn();
		});
		function ckColorBtn(){
			var checkAll = true;
			for(var i = 0; i < checkArr.length; i++){
				if(!checkArr[i]){
					checkAll = false;
				}
			}
			if(checkAll){
				$('#btn_join').addClass('btn-primary');
				// $('#btn_join').prop('disabled', false);
				$('#btn_join').css('cursor', 'pointer');
			}else{
				$('#btn_join').removeClass('btn-primary');
				// $('#btn_join').prop('disabled', true);
				$('#btn_join').css('cursor', 'no-drop');
			} 
		}

	
		//회원가입 버튼 클릭!
		$('#btn_join').click(function(){
			var invalidAll = true;
			for(var i = 0; i < checkArr.length; i++){
				if(!checkArr[i]){
					invalidAll = false;
					$('.join_err_msg:eq('+i+')').css('visibility', 'visible')					
												.css('color', '#d95339');
				}				
			}			
			printCheckArr(checkArr);
			if(invalidAll){
				alert('회원가입 성공!');
				FunLoadingBarStart();
				$('#frm_member').submit(); 				
			}else{	
				alert('유효성체크를 진행해주세요!');
			}	
		});

	});


		   	//개발시 사용: 유효성체크 전체여부를 출력해주는 함수(true, false)
		   	//재사용 하기 위해 메서드화 시킨것이다. 
		   function printCheckArr(checkArr){// 매개변수 보내주면 아래 배열로 해서 출력을 해준다. 
		   	for(var i=0; i<checkArr.length; i++){ // 자주 쓸거니까 메서드로 빼자.
				 console.log(i +'번지:' + checkArr[i]);
				}
		   }
		   
		   //로딩바 출력
		   function FunLoadingBarStart(){
			   var loadingBarImage = '';//가운데 띄어 줄 이미지
			   loadingBarImage += "<div id='back'>";
			   loadingBarImage += "<div id='loadingBar'>";
			   loadingBarImage += "<i class='fas fa-spinner loading_img'></i>";
			   loadingBarImage += "</div></div>";
			   $('body').append(loadingBarImage);
			   $('#back').css('display', 'flex');
			   $('#loadingImg').show();
			}



</script>
</html>