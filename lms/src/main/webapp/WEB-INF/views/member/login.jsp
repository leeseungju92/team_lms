<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ include file = "../include/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" type="text/css" href="${path}/resources/css/common.css">
	<meta charset="utf-8">
	<title>test</title>
	<script src="https://kit.fontawesome.com/2518bc55d6.js" crossorigin="anonymous"></script>
</head>
<style type="text/css">
	*{
		font-family: 'Nanum Gothic', sans-serif;
		box-sizing: border-box;
	}
	body, h1, h2, h3, h4, h5, h6, u1, p, h3, ul, li{
		margin: 0;
		padding: 0;
	}
	body{
		background-color: #FFFFFF;
		font-size: 14px;
		text-align: center;
		align-items: center;
	}
	div{
		display: block;
	}
	ul{
		list-style: none;
	}
	a{
		text-decoration: none;
		color: inherit;
	}
	.wrap{
		width: 1000px;
		height: 1000px;
		margin: 100px auto;
		/* border: 1px solid black; */
	}
	.login_wrap{
		width: 100%;
		height: 100%;
		/* border: 1px solid red; */
	}
	.login_box{
		width: 500px;
		height: 510px;
		border: 1px solid #dbdbdb;
		border-radius: 10px;
		margin: 50px auto;
	}

	/* 회원 로그인 페이지 */
	.login_header{
		/* border: 1px solid red; */
	}
	.login_logo{
		margin: 0 auto;
		/* background-image: url(../lightning/lightning.jpg); */
		height: 100px;
		width: 80px;
		position: relative;
		background-position: center;
		background-repeat: no-repeat;
		background-size: cover;
		font-size: 75px;
		color: gold;
	}
	.login_txt{
		font-size: 26px;
		line-height: 30px;
		font-weight: bold;
		padding: 5px;
	}
	.login_body{
		/* border: 1px solid red; */

	}
	.login_input{
		width: 100%;
		margin: 0 auto;
	}
	
	.login_input_box{
		display: inline-block;
   		margin: 10px 0;
    	position: relative;
    	width: 70%;
    	height: 40px;
		font: 14px Helvetica;
		font-size: 14px;
		box-sizing: border-box;
		padding: 0 10px;
		color: #8d8d8d;
	}
	.err_msg{
		margin: auto;
		width: 70%;
		text-align: left;
		display: block;
		font-size: 12px;
		color: #fe0000;
		box-sizing: border-box;
		/* display: none; */
	}
	.login_check{
		display: flex;
		justify-content: space-between;
		width: 70%;
		margin: auto;
		font-size: 12px;
		color: #8d8d8d;
		margin-top: 10px;

	}
	.user_find:hover{
		color: #3d3d3d;
		text-decoration: underline;
	}
	.login_try{
		
	}
	.login_bottom{
		/* border: 1px solid red; */

	}
	.login_btn_wrap{
		margin: auto;
		width: 70%;
		text-align: center;
		display: block;
		font-size: 12px;
		color: #fe0000;
		box-sizing: border-box;
		

		
	}
	.login_btn{
		width: 100%;
		border: 1px solid gold;
		background-color: gold;
		color: #333;
		border-radius: 3px;
		padding: 0 15px;
		height: 35px;
		font-size: 14px;
		margin-top: 10px;
		cursor: pointer;
	}
	.login_join_txt{
		margin-top: 15px;
		font-size: 14px;
		font-weight: bold;
		color: #3d3d3d;

	}
	.join_txt{
		text-decoration: underline;
	}
	.join_txt:hover{
		color: red;
	}
	.login_footer{

	}


	

</style>
<body>
	<div class="wrap">
		<div class="login_wrap">
			<div class="login_box">


				<div class="login_header">
					<div class="login_logo"><span><i class="fas fa-bolt"></i></span></div>
					<div class="login_txt">
						<span>벼락<br>로그인</span>
						
					</div>
				</div>

				<form:form id="frm_login" modelAttribute="memberDTO" atuocomplete="on">
				<div class="login_body">
					<div class="login_input">
						<div class="login_id ">
							<input class="login_input_box" id="login_id" placeholder="아이디를 입력하세요" type="email" name="id" required>
							
						</div>

						
						<div class="login_pw">
							<input class="login_input_box" id="login_pw" placeholder="비밀번호를 입력하세요" type="password" name="pw" required minlength="8"
								>
							<span class="err_msg">정확한 비밀번호를 입력해주세요.</span>
						</div>
					</div>
					
					<div class="login_check">
						<div class="login_try">
							<input type="checkbox" id="login_ck">
							<label for="login_ck">ID 저장</label>
						</div>
						<div>
							<a href="#" class="user_find">ID/PW 찾기</a>
						</div>
					</div>

					
				</div>
				<div class="login_bottom">
					<div class="login_btn_wrap">
						
						 <button type="button" class="login_btn" id="btn_login">로그인</button>						
						
					</div>
				</div>
				</form:form>

				<div class="login_footer">
					<div class="login_join_txt">
						<span>아직 회원이 아니신가요?</span><br> 
						<a href="#" class="join_txt">회원가입하기</a>
					</div>
				</div>

			</div>
		</div>
	</div>

</body>
<script src="${path}/resources/js/validation.js"></script>
<script type="text/javascript">

$(document).on('click','#btn_login',function(){
	var id = $('#login_id').val();
	var pw = $('#login_pw').val();
	var result = joinValidate.checkId(id);
	
	if(id !='' && pw!='' && pw.length !=0 && id.length !=0 && (result.code==7||result.code==0)){
		$.ajax({
			url:'${path}/login/in',
			type: 'POST',
			data: 'id='+id+'&pw='+pw,
			success:function(data){					
				console.log(data);
				
				if(data==0||data==3){
					$('.err_msg').css('display','block')
					.text('로그인 중 문제가 발생했습니다. 아이디 및 비밀번호를 확인하거나 계정을 생성하십시오.');										
				}else if(data==1){
					console.log('로그인성공');												
											
						location.href="${path}/";	
											
				}else if(data==2){
					$('.err_msg').css('display','block').text('이메일 인증 후 로그인 할 수 있습니다.');
				}
			},
			error:function(){
				alert('System Error:/');
			}				
		});
	}
});
</script>
<%@ include file = "../include/footer.jsp" %>
</html>