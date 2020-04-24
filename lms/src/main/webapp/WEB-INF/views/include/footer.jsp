<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>team project footer</title>
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.12.0/css/all.css" integrity="sha384-REHJTs1r2ErKBuJB0fCK99gCYsVjwxHrSU0N7I1zl9vZbggVJXRMsv/sLlOAGb4M" crossorigin="anonymous">	
	<style type="text/css">
		*{ margin:0; padding:0; box-sizing: border-box; }
		ul { list-style: none; }

		a { text-decoration: none; cursor: pointer; }
		input, textarea, select { outline: none; }

		.is-mobile { display: none; }
		.button {
			border-radius: 2px;
		    padding: 8px 16px;
		    border: none;
		}
		.button_primary {
			background: #1dc078;
		    color: #fff;
		    font-size: 20px;
		}

		/* main */
		.displaynone { display: none; }


		#main { /* min-height: 800px; */ }
		.policy_container {
			padding: 0rem .5rem;
		}
		.container {
		    flex-grow: 1;
		    margin: 0 auto;
		    position: relative;
		    width: auto;
		    max-width: 1180px;
		}
		.tabs_container {
		    margin: 0 auto;
		    max-width: 880px;
		}

		.tabs { margin-bottom: 1.5rem; }
		.tabs > ul {
			display: flex;
			justify-content: flex-start;
			align-items: center;
			flex-grow: 1;
		    flex-shrink: 0;

		    border-bottom: 1px solid #dbdbdb;		    		    
		}
		.tabs a {
			align-items: center;
		    border-bottom: 1px solid #dbdbdb;
		    color: #454545;
		    display: flex;
		    justify-content: center;
		    margin-bottom: -1px;
		    padding: .5em 1em;
		    vertical-align: top;
		}
		.is-boxed a {
			border: 1px solid transparent;
    		border-radius: 4px 4px 0 0;
		}
		.is-small {
			height: 1rem;
    		width: 1rem;
		}
		.icon {
			margin-right: .5em;
			box-sizing: content-box;
		    font-size: inherit;		    
		    line-height: 1;
		}
		.icon > img { width: 22px; }

		
		.faq_heading {
			font-size: 1.2rem;
		    padding: 2rem;
		    display: block;
		    text-align: center;
		    font-weight: 500;		    
		}
		.list {
			margin-bottom: 1.5rem;
			background-color: #fff;
		    border-radius: 4px;
		    box-shadow: 0 2px 3px rgba(0,10,18,.1), 0 0 0 1px rgba(0,10,18,.1);
		}
		.accordion {
			margin-bottom: 0;
			display: flex;
		    flex-direction: column;
		    background-color: #f5f5f5;
		    border-radius: 4px;
		    font-size: 1rem;
		}		
		.question {
			border-top: 0;
			padding: 0;
		    font-size: 1.2rem;
		    justify-content: unset;
		    border-bottom: 1px solid #f0f0f0;

		}
		.accordion-header {
			align-items: center;
		    background-color: #4a4a4a;
		    border-radius: 4px 4px 0 0;
		    color: #fff;
		    display: flex;
		    line-height: 1.25;
			position: relative;

		}
		.click_button {
			outline: none;
		    padding: .6rem;
		    border: 0;
		    background-color: #f9f9f9;
		    cursor: pointer;
		    width: 100%;
		    display: flex;
		}
		.plus-minus-toggle {
		    margin: 20px 15px 2px;
		    cursor: pointer;
		    height: 21px;
		    position: relative;
		    width: 21px;		    
		}
		.collapsed:before {
		    transform: rotate(0deg);
		}
		.collapsed:after, .collapsed:before {
		    background: #a3a3a3;
		    content: "";
		    height: 2px;
		    left: 0;
		    position: absolute;
		    top: 0;
		    width: 12px;
		    transition: transform .5s ease;
		}
		.collapsed:after {
		    transform: rotate(90deg);
		}
		.plus-minus-toggle:after {
		    transform-origin: center;
		}

		.accordion:hover > div > button > div:after {
		    transform: rotate(0deg);
		}
		.text {
		    font-size: 1rem;
		    color: #000;
		    margin: auto 0;
		}
		.answer {
		    border: 0;
		    background-color: #fff;

		}
		.accordion-body {
		    /*max-height: 100em;*/
		    max-height: 0em;
		    overflow-y: hidden;
		    color: #4a4a4a;
		    border-radius: 4px;
		    border-top-left-radius: 0;
		    border-top-right-radius: 0;
		    transition: max-height .2s ease;
		}
		.accordion-content {
		    padding: 1em 1.25em;
		    border-radius: 0;

		}
		.faq_footer {
			display: block;
		    text-align: center;
		    font-weight: 500;
		    padding: 5rem;
		    font-size: 1.2rem;
		}

		.content { word-break: break-word; }
		.content a {
			color: #545454;
    		cursor: pointer;
			text-decoration-line: underline
    	}
    	.content h3 {
    		font-size: 1.75rem;
    		margin-bottom: .6666em;
    		color: #363636;
    		font-weight: 600;
    		line-height: 1.125;
    	}
		.content h4 {
			font-size: 1.1rem;
			margin-top: 1.5rem;
			margin-bottom: .8em;
			color: #363636;
		    font-weight: 600;
		    line-height: 1.125;
		}
		.content p { font-size: 16px; }
		.content ol:not([type]) { list-style-type: decimal;	}
		.content ol {								
			list-style-position: outside;
		    margin-left: 2em;
		    margin-top: 1em;
		}
		.content ol>li>ol>li { list-style: lower-alpha;	}

		
		.apply_section {
			background: #f3f4f7;
		}
		.wrapper {
			display: flex;
		    padding: 96px 0;
		    max-width: 1200px;
		    margin: 0 auto;
		    justify-content: space-around;
		}
		.apply_card { text-align: center; }
		.apply_title {
			font-size: 24px;
		    color: #333;
		    margin-bottom: 8px;
		}
		.apply_desc {
			font-size: 16px;
		    font-weight: 400;
		    color: #333;
		    margin-bottom: 24px;
		}
		
		.certificate_verification {
			margin-top: 1.5rem;	
		}
		.columns { margin: 0; display: flex; }
		.is-centered { justify-content: center; }		
		.column {
			display: block;
			padding: .75rem;
		}
		.is-half {
			flex: none;
    		width: 50%;
		}
		.control_container { margin-top: 1.5rem; }
		.has-addons {
			display: flex;
    		justify-content: flex-start;	
		}
		.control {			
		    clear: both;
		    font-size: 1rem;
		    position: relative;
		    text-align: left;
		}
		.control:not(:last-child){
			width: 100%;
		}
		.input {
			border-radius: 3px;
		    box-shadow: none;
		    background: #f6f6f6;
		    color: #5f5f5f;
		    border: 1px solid transparent;
		    height: auto;
		    max-width: 100%;
   			width: 100%;
   			-webkit-appearance: none;
   			align-items: center;
   			display: inline-flex;
    		font-size: 1rem;
    		justify-content: flex-start;
		    line-height: 1.5;
		    padding: calc(.375em - 1px) calc(.625em - 1px);
		    position: relative;
		    vertical-align: top;

		}
		.is-info {
			background-color: #3298dc;
		    border-color: transparent;
		    color: #fff;
		}
		p {
			font-size: 16px;
			line-height: 1.6;
		}
		h5 { 
			font-size: 1.25rem;
			font-weight: 400;
		}
		.button {			
			cursor: pointer;
		    justify-content: center;
		    padding: calc(.375em - 1px) .75em;
		    text-align: center;
		    white-space: nowrap;
		    -webkit-appearance: none;
		    align-items: center;
		    border: 1px solid transparent;
		    border-radius: 4px;
		    box-shadow: none;
		    display: inline-flex;
		    font-size: 1rem;
		    height: 2.25em;
		    line-height: 1.5;
		    position: relative;
    		vertical-align: top;
    		user-select: none;
    		border-bottom-left-radius: 0;
    		border-top-left-radius: 0;
		}




		/* footer */
		footer { width: 100%; background-color: #303740; }			
		
		.footer_wrapper {
			display: flex;
    		max-width: 1152px;
    		margin: 0 auto;
    		flex-direction: column;
		}

		/* footer Top menu */
		.footer_top {
			display: flex;
    		justify-content: space-between;
    		padding: 32px 20px;
    		border-bottom: 1px solid #444;
		}
		
		.footer_menu_list { margin-right: 20px; }
		.footer_list_title { 
			font-weight: 700;
    		font-size: 14px;
    		color: #eee;
    		padding: 16px 0;
    		line-height: 1.43;
		}		
		.footer_menu_sublist { 
			max-height: 118px;
			display: flex;
    		flex-direction: column;
    		overflow: hidden;
    		transition: max-height .2s ease-in-out;
		}
		.footer_list_link {
			color: #bdbdbd;
    		font-size: 14px;
    		line-height: 1.43;
    		margin-bottom: 7px;
		}


		/* footer Bottom */
		.footer_bottom {
			display: flex;
    		padding: 32px 20px;
    		justify-content: space-between;
		}
		/* footer Bottom Left */
		.footer_bottom_left {
			display: flex;
    		flex-direction: column;
		}
		.footer_info_top { margin-bottom: 8px; }
		.footer_info_top a {
			font-size: 12px;
		    color: #bdbdbd;
		    line-height: 1.5;
		    font-weight: 700;
		}
		.footer_info_top span+span:before {
		    display: inline-block;
		    content: "|";
		    color: #bdbdbd;
		    margin: 0 8px;
		    font-size: 12px;	    
		}
		.footer_info_bottom {			
			color: #bdbdbd;
			font-size: 12px;
    		line-height: 1.5;    		
		}
		.footer_info_label {
			display: inline-block;
    		margin-bottom: 8px;
		}
		.footer_info_dropdown {
			overflow: hidden;
		    margin-bottom: 8px;
		    word-break: keep-all;
		}
		/* footer Bottom Right */
		.footer_bottom_right {
			width: 210px;
    		display: flex;
    		justify-content: space-between;
    		align-items: center;
    		margin-left: 20px;
		}
		.footer_bottom_right a {
			display: inline-block;
		    width: 34px;
		    height: 34px;
		    border-radius: 100%;
		    background: #bdbdbd;
		    text-align: center;
		    line-height: 34px;		    
		}
		.footer_bottom_right a i {
			display: inline-block;
		    font-size: 18px;
		    vertical-align: center;
		    color: #333;		    
    	}
    	.footer_bottom_right a i.text {
    		font-size: 22px;
    		font-weight: 700;
    		font-style: normal;
    	}
	</style>
</head>
<body>
	<main id="main" class="sticky displaynone">
		<section class="certification_container">
			<div class="container">
				<div class="tabs_container">
					<div class="tabs is-boxed">
						<ul>
							<li>
								<a href="#">
									<span class="icon is-small">
										<!-- <i class="fas fa-award"></i> -->
										<img src="${path}/resources/img/icons8-certificate-64.png" alt="수료증 확인" />		
									</span>
									<span>수료증 확인</span>
								</a>
							</li>
							<li>
								<a href="#">
									<span class="icon is-small"><i class="fas fa-question"></i></span>
									<span>자주 묻는 질문</span>
								</a>
							</li>
							<li>
								<a href="#">
									<span class="icon is-small"><i class="far fa-file-alt"></i></span>
									<span>인프런 이용약관</span>
								</a>
							</li>
							<li>
								<a href="#">
									<span class="icon is-small"><i class="far fa-address-card"></i></span>
									<span>개인정보 취급방침</span>
								</a>
							</li>

						</ul>
					</div>
				</div>
				<div class="columns is-centered certificate_verification">
					<div class="column is-half">
						<p>인증서 우측 상단의 시리얼 넘버로 수료증을 확인할 수 있습니다.</p>
						<div class="control_container">
							<h5>인증서 확인(Serial Code 입력)</h5>
							<div class="field has-addons">
								<div class="control">
									<input class="input" type="text" placeholder="인증서 Serial Number 입력">
								</div>
								<div class="control">
									<a class="button is-info">확인하기</a>
								</div>
							</div>
						</div>
					</div>

				</div>
			</div>
		</section>
		<section class="faq_container displaynone">
			<div class="container">
				<div class="tabs_container">
					<div class="tabs is-boxed">
						<ul>
							<li>
								<a href="#">
									<span class="icon is-small">
										<!-- <i class="fas fa-award"></i> -->
										<img src="${path}/resources/img/icons8-certificate-64.png" alt="수료증 확인" />		
									</span>
									<span>수료증 확인</span>
								</a>
							</li>
							<li>
								<a href="#">
									<span class="icon is-small"><i class="fas fa-question"></i></span>
									<span>자주 묻는 질문</span>
								</a>
							</li>
							<li>
								<a href="#">
									<span class="icon is-small"><i class="far fa-file-alt"></i></span>
									<span>인프런 이용약관</span>
								</a>
							</li>
							<li>
								<a href="#">
									<span class="icon is-small"><i class="far fa-address-card"></i></span>
									<span>개인정보 취급방침</span>
								</a>
							</li>

						</ul>
					</div>
				</div>
				<p class="faq_heading">궁금한 점이 있으신가요? <br>먼저 아래의 자주 묻는 질문 FAQ 리스트를 확인 해주세요!</p>
				<ul class="accordions list">
			      <li class="accordion qna_box">
			        <div class="accordion-header question">
			          <button class="click_button">
			            <div class="plus-minus-toggle collapsed"></div>
			            <p class="text">📱 모바일에서 편하게 보기</p>
			          </button>
			        </div>
			        <div class="accordion-body answer">
			          <div class="accordion-content">
			            <p class="text">안드로이드 앱 스토어에 "인프런"을 검색하시면 인프런 앱을 다운받아 사용하실 수 있습니다. <b>iOS 앱은 현재 출시 준비 중입니다.</b>모바일 웹브라우저에서 학습 가능하며, <span style="font-weight:700">‘홈 화면에 추가하기’</span> 기능을 이용하시면 좀 더 편하게 이용하실 수 있어요!!<a href="/news/12554">(안내 자세히 보기 &gt;&gt;)</a><br>크롬, 사파리 등의 모바일 브라우저를 통해서 접속 부탁드립니다. </p>
			          </div>
			        </div>
			      </li>
			      <li class="accordion qna_box">
			        <div class="accordion-header question">
			          <button class="click_button">
			            <div class="plus-minus-toggle collapsed"></div>
			            <p class="text">🎬 영상 버퍼링이 심해요!!</p>
			          </button>
			        </div>
			        <div class="accordion-body answer">
			          <div class="accordion-content">
			            <p class="text"><a href="https://player.vimeo.com/flags?p=general" target="_blank">https://player.vimeo.com/flags?p=general</a> 로 들어가서 <br><blod>CDN Priority</blod> 설정을 <blod>자신에게 맞는 것</blod>으로 설정 부탁드려요!!<br>(사용자 환경이 다르기 때문에 최적의 조건이 다를 수 있습니다.)<br><br>그래도 문제가 생긴다면 고객센터 상담창에 남겨주세요!</p>
			          </div>
			        </div>
			      </li>
			      <li class="accordion qna_box">
			        <div class="accordion-header question">
			          <button class="click_button">
			            <div class="plus-minus-toggle collapsed"></div>
			            <p class="text">💱 환불하고 싶어요.</p>
			          </button>
			        </div>
			        <div class="accordion-body answer">
			          <div class="accordion-content">
			            <p class="text">수강신청한 유료강좌에 대한 환불을 진행하길 원하시나요? <br>
							<a href="https://www.inflearn.com/orders">프로필 &gt; 구매내역</a>에서 환불을 원하는 '주문명'를 클릭하시면 직접 환불하실 수 있어요!<br>
							-<br>
							<b>회사의 환불 원칙은 다음과 같습니다.</b><br>
							1) 강의 구매일 1주 이내에 진도율 7% 미만일 경우 전액 환불이 가능합니다.<br>
							2) 강의 구매일이 1주일이 넘었거나, 진도율이 7% 이상일 경우 환불이 불가합니다.<br>
							3) 1강으로 구성된 개별강의는 원칙적으로 환불이 불가능 합니다.<br>
							4) 강의자료를 다운로드 받는 경우, 환불이 불가합니다.<br>
							5) 특별강의는 이벤트성 강의, 비정규 강의, 특별기획 강의 등으로서 이는 별도의 수강 취소, 변경 및 환불규정이 적용될 수 있습니다.<br>
							<br>※ 더 자세한 내용은 <a href="https://www.inflearn.com/policy/terms-of-service">이용약관 제20조 청약철회</a>에서 확인하실 수 있습니다.<br></p>
			          </div>
			        </div>
			      </li>
			      <li class="accordion qna_box">
			        <div class="accordion-header question">
			          <button class="click_button">
			            <div class="plus-minus-toggle collapsed"></div>
			            <p class="text">🤔 가상계좌로 입금했는데, 언제 승인되나요?</p>
			          </button>
			        </div>
			        <div class="accordion-body answer">
			          <div class="accordion-content">
			            <p class="text">가상계좌를 통한 무통장입금은 PG사에서 자동으로 처리가됩니다.<br>따라서 5분~10정도의 소요시간이 걸릴 수 있는 점 양해부탁드립니다.</p>
			          </div>
			        </div>
			      </li>
			      <li class="accordion qna_box">
			        <div class="accordion-header question">
			          <button class="click_button">
			            <div class="plus-minus-toggle collapsed"></div>
			            <p class="text">🥑 결제가 안돼요</p>
			          </button>
			        </div>
			        <div class="accordion-body answer">
			          <div class="accordion-content">
			            <p class="text">결제가 잘 안되시나요? 인프런은 구글 크롬 브라우저에 최적화되어 있어요. 그러니 결제시 문제가 발생할 경우 구글 크롬 브라우저로 시도해보시기 바랍니다. 😊<br>또한, xp 버전의 경우에는 모든 브라우저에서 결제가 안되니, 양해부탁드립니다.😢</p>
			          </div>
			        </div>
			      </li>
			      <li class="accordion qna_box">
			        <div class="accordion-header question">
			          <button class="click_button">
			            <div class="plus-minus-toggle collapsed"></div>
			            <p class="text">🏫 그룹 교육에 대해 알고 싶어요. (기업, 학교)</p>
			          </button>
			        </div>
			        <div class="accordion-body answer">
			          <div class="accordion-content">
			            <p class="text">어떤 형태의 기업교육이 필요하신지, 인프런에서 진행하는 기업교육 형태가 궁금하시다면<br><a href="/intro-group">이곳! 을 클릭해 주세요. </a><br>이미 많은 기업 임직원들이 인프런을 통해 학습하고 있답니다!</p>
			          </div>
			        </div>
			      </li>
			      <li class="accordion qna_box">
			        <div class="accordion-header question">
			          <button class="click_button">
			            <div class="plus-minus-toggle collapsed"></div>
			            <p class="text">💳 내일배움카드를 사용할 수 있나요?</p>
			          </button>
			        </div>
			        <div class="accordion-body answer">
			          <div class="accordion-content">
			            <p class="text">현재 인프런은 국가지정 교육기관이 아닌 일반서비스 플랫폼이기 때문에 내일배움카드를 이용하실 수 없습니다. 😢</p>
			          </div>
			        </div>
			      </li>
			      <li class="accordion qna_box">
			        <div class="accordion-header question">
			          <button class="click_button">
			            <div class="plus-minus-toggle collapsed"></div>
			            <p class="text">💎 강의를 올리고 싶어요</p>
			          </button>
			        </div>
			        <div class="accordion-body answer">
			          <div class="accordion-content">
			            <p class="text">지식공유에 흥미가 있으신가요? 그렇다면 <a href="https://www.inflearn.com/open-knowledge/">여기</a>를 클릭하여 자세히 안내된 페이지를 확인하세요. 아주 쉽고 편하게 지식공유자가 될 수 있답니다.<br><a href="https://www.inflearn.com/open-knowledge/">신청하기 👉</a></p>
			          </div>
			        </div>
			      </li>
			      <li class="accordion qna_box">
			        <div class="accordion-header question">
			          <button class="click_button">
			            <div class="plus-minus-toggle collapsed"></div>
			            <p class="text">🙋‍♀ 다른 이메일로 바꾸고 싶어요</p>
			          </button>
			        </div>
			        <div class="accordion-body answer">
			          <div class="accordion-content">
			            <p class="text">프로필 설정에서 직접 수정하실 수 있어요! 하지만 이미 가입된 계정 간 강의를 이동하거나, 데이터 이관하는 것은 타인에게 이전하는것으로 해석하기 때문에 불가능합니다.</p>
			          </div>
			        </div>
			      </li>
			      <li class="accordion qna_box">
			        <div class="accordion-header question">
			          <button class="click_button">
			            <div class="plus-minus-toggle collapsed"></div>
			            <p class="text">👩‍💻 여러 대의 기기에서 이용할 수 있나요?</p>
			          </button>
			        </div>
			        <div class="accordion-body answer">
			          <div class="accordion-content">
			            <p class="text">현재 인프런은 이용약관에 동시접속 부정이용에 대하여 명시하였기에 법적제재를 받으실 수 있습니다. 학습페이지는 1대에서만 접속할 수 있으며 다른 곳에서 로그인하게되면 자동으로 로그인이 풀립니다.</p>
			          </div>
			        </div>
			      </li>
			      <li class="accordion qna_box">
			        <div class="accordion-header question">
			          <button class="click_button">
			            <div class="plus-minus-toggle collapsed"></div>
			            <p class="text">🕵‍♂ 비밀번호를 모르겠어요.</p>
			          </button>
			        </div>
			        <div class="accordion-body answer">
			          <div class="accordion-content">
			            <p class="text">비밀번호를 잊으셨나요? 아니면 소셜로그인으로 비밀번호를 설정한 기억이 없으신가요?<br> 로그인하지 않은 상태에서 "비밀번호 찾기"를 통해서 새로운 비밀번호를 설정하실 수 있습니다.</p>
			          </div>
			        </div>
			      </li>
			      <li class="accordion qna_box">
			        <div class="accordion-header question">
			          <button class="click_button">
			            <div class="plus-minus-toggle collapsed"></div>
			            <p class="text">📜 수료증은 어떻게 발급받나요?</p>
			          </button>
			        </div>
			        <div class="accordion-body answer">
			          <div class="accordion-content">
			            <p class="text">수료증은 유료강좌 및 일부 무료강좌에 한하여 학습창에서 마지막 강의 수강이 완료되면 자동으로 발급됩니다. <br>이후에는 프로필 페이지에서 확인가능하세요 🙂<b>수료증 출력이 안될 경우,</b>수료증 출력시 인쇄 옵션에서 ‘배경 그래픽 표시’를 선택해주시면 이미지가 정상적으로 로드되실거에요~</p>
			          </div>
			        </div>
			      </li>
			      <li class="accordion qna_box">
			        <div class="accordion-header question">
			          <button class="click_button">
			            <div class="plus-minus-toggle collapsed"></div>
			            <p class="text">📜 발급 받은 수료증이 진짜인지 확인하고 싶어요.</p>
			          </button>
			        </div>
			        <div class="accordion-body answer">
			          <div class="accordion-content">
			            <p class="text">획득한 인프런 수료증 우측 상단의 Serial Code  보이시나요??<br>아래 링크로 이동해 그 코드를 그대로 입력해 주세요.<br><a href="/certificate">📜 수료증 확인하러 가기 📜</a></p>
			          </div>
			        </div>
			      </li>
			      <li class="accordion qna_box">
			        <div class="accordion-header question">
			          <button class="click_button">
			            <div class="plus-minus-toggle collapsed"></div>
			            <p class="text">🧾 수료증을 수정할 수 있나요?</p>
			          </button>
			        </div>
			        <div class="accordion-body answer">
			          <div class="accordion-content">
			            <p class="text">이미 발급된 수료증의 데이터는 수정이 불가능합니다. 수료증은 다른 곳에서도 증빙할 수 있는 신의성있는 서류임을 입증하기 위해서 임의로 수정할 수 없는 점 양해부탁드립니다.</p>
			          </div>
			        </div>
			      </li>
			      <li class="accordion qna_box">
			        <div class="accordion-header question">
			          <button class="click_button">
			            <div class="plus-minus-toggle collapsed"></div>
			            <p class="text">🔥 요청하고 싶은 강좌, 기능이 있어요!   </p>
			          </button>
			        </div>
			        <div class="accordion-body answer">
			          <div class="accordion-content">
			            <p class="text">요청이 있다면 얼마든지 요청해 주세요!!아래 링크를 통해 이야기 해주시면 적극적으로 반영하겠습니다.<br><a href="/request-to-inflearn">🔥인프런에 요청하기🔥</a></p>
			          </div>
			        </div>
			      </li>
			    </ul>
				<p class="faq_footer">원하는 답변을 찾지 못하셨나요?<br>그럼 우측 하단의 <span class="emphasis">‘문의하기’</span> 에서 직접 문의 해주세요.<br>최대한 빠르게 답변드리도록 하겠습니다!</p>
			</div>
		</section>
		<section class="policy_container displaynone">
			<div class="container">
				<div class="tabs is-boxed">
					<ul>
						<li>
							<a href="#">
								<span class="icon is-small">
									<!-- <i class="fas fa-award"></i> -->
									<img src="${path}/resources/img/icons8-certificate-64.png" alt="수료증 확인" />		
								</span>
								<span>수료증 확인</span>
							</a>
						</li>
						<li>
							<a href="#">
								<span class="icon is-small"><i class="fas fa-question"></i></span>
								<span>자주 묻는 질문</span>
							</a>
						</li>
						<li>
							<a href="#">
								<span class="icon is-small"><i class="far fa-file-alt"></i></span>
								<span>인프런 이용약관</span>
							</a>
						</li>
						<li>
							<a href="#">
								<span class="icon is-small"><i class="far fa-address-card"></i></span>
								<span>개인정보 취급방침</span>
							</a>
						</li>

					</ul>
				</div>
				<div class="content">
					<div>
						<div>
							<h4>1장. 약관 및 계약</h4>
							<p><b>제1조. 목적</b></p>
							<p>이 이용약관(이하 ‘약관’)은 인프랩(이하 ‘회사’)가 제공하는 인프런(inflearn.com) 및 인프런 관련 제반 서비스(이하 ‘서비스’)를 이용고객(이하 ‘회원’)이 이용함에 있어 회사와 회원과의
        권리, 의무 및 책임사항, 기타 필요한 사항을 구체적으로 규정함을 목적으로 합니다.</p>
        					<p></p>
        					<p><b>제2조. 용어의 정의</b></p>
        					<ol>
						        <li>이 약관에서 사용하는 용어의 정의는 다음과 같습니다.
						          <ol>
						            <li>“서비스”라 함은 구현되는 단말기와 상관없이 “회원” 혹은 웹사이트 방문자가 이용할 수 있는 인프런 서비스를 의미합니다.</li>
						            <li>“회원”이란 “회사”의 서비스에 접속하여 본 약관에 따라 회사와 이용계약을 체결하고 “회사”가 제공하는 “서비스”를 이용하는 고객을 말합니다.</li>
						            <li>“이용계약”이란 이 약관을 포함하여 서비스 이용과 관련하여 회사와 회원 간에 체결하는 모든 계약을 말합니다.</li>
						            <li>“아이디(ID)”라 함은 회원의 식별 및 서비스 이용을 위하여 회원의 신청에 따라 회사가 회원 별로 부여하는 고유한 문자와 숫자의 조합을 말합니다.</li>
						            <li>“이메일”은 회원가입이나 로그인 등에 사용되는 단일한 이메일 주소를 말합니다.</li>
						            <li>“비밀번호(Password)”란 아이디(ID)로 식별되는 회원의 본인 여부를 검증하기 위하여 회원이 설정하여 회사에 등록한 고유의 문자와 숫자의 조합을 말합니다.</li>
						            <li>“유료서비스”라 함은 회사가 유료로 제공하는 각종 온라인디지털콘텐츠(동영상 강의 열람, 프리미엄 교육 정보, 기타 유료 콘텐츠를 포함.) 및 제반 서비스를 의미합니다.</li>
						            <li>“해지”라 함은 회사 또는 회원이 이용계약을 해약하는 것을 말합니다.</li>
						            <li>“강의”라 함은 “회사”가 제공하는 “서비스”내에 제공하는 공간으로서, 동영상 업로드, 동영상 스트리밍, 관리, 과제 및 퀴즈, 설문 등의 교육 활동 전반과 “수강생” 관리를 할 수 있는 공간을
						              말합니다.
						            </li>
						            <li>“강사”라 함은 “서비스”에 교육용 동영상 강의, 과제, 퀴즈 등을 올리고 강의를 개설하는 회원입니다.</li>
						            <li>"수강생"이란 "서비스"에 접속하여 본 "약관"에 동의함으로써 "회사"와 이용계약을 체결하고 "회사"가 제공하는 정보와 "서비스"를 지속적으로 이용할 수 있는 자로 "강의"에 수강신청을 한
						              회원을 의미합니다.
						            </li>
						            <li>“게시물”이라 함은 “회원”이 “서비스”를 이용함에 있어 “서비스” 상에 게시한 글, 사진, 동영상 및 각종 파일과 링크를 의미합니다.</li>
						          </ol>
						        </li>
						        <li>이 약관에서 사용하는 용어 중 제1항에서 정하지 아니한 것은 관계 법령 및 서비스 별 안내에서 정하는 바에 따르며, 그 외에는 일반 관례에 따릅니다.</li>
						    </ol>
						    <p></p>
						    <p><b>제3조. 약관 효력 및 변경</b></p>
						    <ol>
						        <li>"회사”는 이 약관의 내용을 "회원"이 쉽게 알 수 있도록 서비스 초기 화면 또는 링크로 연결된 화면에 게시합니다.</li>
						        <li>“회사”는 “약관의규제에관한법률”, “정보통신망이용촉진및정보보호등에관한법률(이하 “정보통신망법”)” 등 관련법을 위배하지 않는 범위에서 이 약관을 개정할 수 있습니다.</li>
						        <li>"회사"가 약관을 개정할 경우에는 적용일자 및 개정사유를 명시하여 현행약관과 함께 제1항의 방식에 따라 그 개정약관의 적용일자 7일 전부터 적용일자 전일까지 공지합니다. 다만, 회원에게 불리한 약관의
						          개정의 경우에는 최소 30일 전에 공지 하고, 서비스 내 전자우편, 전자쪽지, 로그인시 동의창 등의 전자적 수단을 통해 개별적으로 명확히 통지하도록 합니다.
						        </li>
						        <li>“회사”가 전 항에 따라 개정약관을 공지 또는 통지하면서 회원에게 위 기간 내에 의사표시를 하지 않으면 의사표시가 표명된 것으로 본다는 뜻을 명확하게 공지 또는 통지 하였음에도 회원이 명시적으로 거부의
						          의사표시를 하지 아니한 경우 회원이 개정약관에 동의한 것으로 봅니다.
						        </li>
						        <li>“회원”이 개정약관의 적용에 동의하지 않는 경우 “회사”는 개정 약관의 내용을 적용할 수 없으며, 이 경우 “회사” 또는 “회원”은 이용계약을 해지할 수 있습니다.</li>
						    </ol>
						    <p></p>
						    <p><b>제4조 . 약관 외 준칙</b></p>
						    <p>회사는 필요한 경우 서비스 내의 개별항목에 대하여 개별약관 또는 운영원칙(이하 ‘서비스 별 안내’라 합니다.)를 정할 수 있으며, 회원은 각 서비스 별 안내에 대해 회원가입과 동시에 동의한 것으로
        간주합니다. 본 약관과 서비스 별 안내의 내용이 상충되는 경우에는 서비스 별 안내의 내용을 우선하여 적용합니다.</p>
        					<p></p>
        					<p><b>제5조. 이용계약 체결</b></p>
        					<ol>
						        <li>이용계약은 “회원”이 되고자 하는 자(이하 “가입신청자”)가 약관의 내용에 대하여 동의를 한 다음 회원가입신청을 하고 “회사”가 이러한 신청에 대하여 승낙함으로써 체결됩니다.</li>
						        <li>“회사”는 “가입신청자”의 신청에 대하여 “서비스” 이용을 승낙함을 원칙으로 합니다. 다만, “회사”는 다음 각 호에 해당하는 신청에 대하여는 승낙을 하지 않거나 사후에 이용계약을 해지할 수 있습니다.
						          <ol>
						            <li>가입 신청자가 이 약관에 의하여 이전에 회원자격을 상실한 적이 있는 경우, 단 “회사”의 회원 재가입 승낙을 얻은 경우에는 예외로 함.</li>
						            <li>실명이 아니거나 타인의 명의를 이용한 경우</li>
						            <li>허위의 정보를 기재하거나, “회사”가 제시하는 내용을 기재하지 않은 경우</li>
						            <li>14세 미만 아동이 법정대리인(부모 등)의 동의를 얻지 아니한 경우</li>
						            <li>"서비스"의 위상이나 명예에 부정적인 영향을 줄 수 있는 경우</li>
						            <li>부정한 행위나 과정을 통해 공공질서 및 미풍양속에 저해되는 활동을 하는 경우</li>
						            <li>타인의 명예를 손상시키거나 불이익을 주는 행위를 한 경우</li>
						            <li>영리를 추구할 목적으로 "서비스"를 악용하는 경우</li>
						            <li>"서비스"의 운영을 고의로 방해한 경우</li>
						            <li>이용자의 귀책사유로 인하여 승인이 불가능하거나 기타 규정한 제반 사항을 위반하며 신청하는 경우</li>
						            <li>서비스를 제공하지 않는 국가에서 비정상적이거나 우회적인 방법을 통해 서비스를 이용하는 경우</li>
						            <li>임시 이메일 서비스를 이용하여 회원가입을 하는 경우</li>
						            <li>기타 이 약관에 위배되거나 위법 또는 부당한 이용신청임이 확인된 경우</li>
						            <li> 기타 이 약관에 위배되는 무리한 요청을 하는 경우</li>
						          </ol>
						        </li>
						        <li>제1항에 따른 신청에 있어 “회사”는 “회원”의 종류에 따라 전문기관을 통한 실명확인 및 본인인증을 요청할 수 있습니다.</li>
						        <li>“회사”는 서비스관련설비의 여유가 없거나, 기술상 또는 업무상 문제가 있는 경우에는 승낙을 유보할 수 있습니다.</li>
						        <li>제2항과 제4항에 따라 회원가입신청의 승낙을 하지 아니하거나 유보한 경우, “회사”는 원칙적으로 이를 가입신청자에게 알리도록 합니다.</li>
						        <li>이용계약의 성립 시기는 “회사”가 가입완료를 신청절차 상에서 표시한 시점으로 합니다.</li>
						        <li>회사”는 “회원”에 대해 회사정책에 따라 등급별로 구분하여 이용시간, 이용횟수, 서비스 메뉴 등을 세분하여 이용에 차등을 둘 수 있습니다.</li>
						        <li>“회사”는 “회원”에 대하여 “영화및비디오물의진흥에관한법률” 및 “청소년보호법”등에 따른 등급 및 연령 준수를 위해 이용제한이나 등급별 제한을 할 수 있습니다.</li>
						    </ol>
						    <p></p>
						</div>
						<div>
							<h4>제 2장. 정보 및 서비스</h4>
							<p><b>제6조. 회원정보 변경</b></p>
							<ol>
						        <li>“회원”은 개인정보관리화면을 통하여 언제든지 본인의 개인정보를 열람하고 수정할 수 있습니다. 다만, 서비스 관리를 위해 필요한 아이디등은 수정이 불가능합니다.</li>
						        <li>“회원”은 회원가입신청 시 기재한 사항이 변경되었을 경우 온라인으로 수정을 하거나 전자우편 기타 방법으로 “회사”에 대하여 그 변경사항을 알려야 합니다.</li>
						        <li> 제2항의 변경사항을 “회사”에 알리지 않아 발생한 불이익에 대하여 “회사”는 책임지지 않습니다.</li>
						    </ol>
							<p></p>
							<p><b>제7조. 개인정보보호 의무</b></p>
							<ol>
						        <li>회사는 회원에게 서비스를 제공하는 과정에서 정보통신망 이용촉진 및 정보보호 등에 관한 법률, 개인정보보호법 등 관련법령이 규정한 절차와 방법에 따라 회원의 개인정보를 보호하기 위해 노력합니다.
						          개인정보의 보호 및 이용에 대해서는 관련법령 및 회사의 개인정보처리방침이 적용됩니다.
						        </li>
						        <li>서비스 외의 단순히 링크된 제3자 제공의 서비스에 대하여는 회사의 개인정보처리방침이 적용되지 않습니다.</li>
						        <li>회사는 회원의 귀책사유로 인하여 노출된 회원의 회원정보를 포함한 모든 정보에 대해서 일체의 책임을 지지 않습니다.</li>
						        <li>회사는 정보통신망 이용촉진 및 정보보호 등에 관한 법률 및 동법 시행령에 따라 1년간 서비스를 이용하지 않은 회원의 개인정보를 보호하기 위해 개인정보 파기 등 필요한 조치를 취합니다. 또한, 회사는
						          객관적으로 계정정보 도용 피해가 우려되는 경우에는 회원정보의 보호 및 운영의 효율성을 위해 임시조치, 이용제한, 계정정보 삭제 등 필요한 조치를 취할 수 있습니다. 본 항에 따른 조치가 취해지는 경우,
						          회사는 조치일 30일 전까지 개인정보 파기 등 필요한 조치가 취해진다는 사실, 일시 및 항목을 명시하여 제19조에 따라 통지합니다.
						        </li>
						    </ol>
						    <p></p>
						    <p><b>제8조. “회원”의 개인정보 관리</b></p>
						    <ol>
						        <li>“회원”의 “아이디”와 “비밀번호” 그리고 “이메일”에 관한 관리책임은 “회원”에게 있으며, 이를 제3자가 이용하도록 하여서는 안 됩니다.</li>
						        <li>“회사”는 “회원”의 “아이디”가 개인정보 유출 우려가 있거나, 반사회적 또는 미풍양속에 어긋나거나 “회사” 및 “회사”의 운영자로 오인한 우려가 있는 경우, 해당 “아이디”의 이용을 제한할 수
						          있습니다.
						        </li>
						        <li>“회원”은 “아이디” 및 “비밀번호”가 도용되거나 제3자가 사용하고 있음을 인지한 경우에는 이를 즉시 “회사”에 통지하고 “회사”의 안내에 따라야 합니다.</li>
						        <li>제3항의 경우에 해당 “회원”이 “회사”에 그 사실을 통지하지 않거나, 통지한 경우에도 “회사”의 안내에 따르지 않아 발생한 불이익에 대하여 “회사”는 책임지지 않습니다.</li>
						    </ol>
						    <p></p>
						    <p><b>제9조. “회원”에 대한 통지</b></p>
						    <ol>
						        <li>“회사”가 “회원”에 대한 통지를 하는 경우 이 약관에 별도 규정이 없는 한 서비스 내 전자우편주소, 전자쪽지 등으로 할 수 있습니다.</li>
						        <li>“회사”는 “회원” 전체에 대한 통지의 경우 7일 이상 “회사”의 게시판에 게시함으로서 제1항의 통지에 갈음할 수 있습니다.</li>
						    </ol>
						    <p></p>
						    <p><b>제10조. “회사”의 의무</b></p>
						    <ol>
						        <li>“회사”는 관련법과 이 약관이 금지하거나 미풍양속에 반하는 행위를 하지 않으며, 계속적이고 안정적으로 “서비스”를 제공하기 위하여 최선을 다하여 노력합니다.</li>
						        <li>“회사”는 “회원”이 안전하게 “서비스”를 이용할 수 있도록 개인정보(신용정보 포함)보호를 위해 보안시스템을 갖추어야 하며 개인정보취급방침을 공시하고 준수합니다.</li>
						        <li>“회사”는 서비스이용과 관련하여 “회원”으로부터 제기된 의견이나 불만이 정당하다고 인정할 경우에는 이를 처리하여야 합니다. “회원”이 제기한 의견이나 불만사항에 대해서는 게시판을 활용하거나 전자우편
						          등을 통하여 “회원”에게 처리과정 및 결과를 전달합니다.
						        </li>
						    </ol>
						    <p></p>
						    <p><b>제11조. “회원”의 의무</b></p>
						    <ol>
						        <li>“회원”은 다음 행위를 하여서는 안 됩니다.
						          <ol>
						            <li>신청 또는 변경 시 허위내용의 등록</li>
						            <li>타인의 정보도용</li>
						            <li>“회사”가 게시한 정보의 변경</li>
						            <li>“회사”가 정한 정보 이외의 정보(컴퓨터 프로그램 등) 등의 송신 또는 게시</li>
						            <li>“회사”와 기타 제3자의 저작권 등 지적재산권에 대한 침해</li>
						            <li>“회사” 및 기타 제3자의 명예를 손상시키거나 업무를 방해하는 행위</li>
						            <li>외설 또는 폭력적인 메시지, 화상, 음성, 기타 공서양속에 반하는 정보를 “서비스”에 공개 또는 게시하는 행위</li>
						            <li>회사의 동의 없이 영리를 목적으로 “서비스”를 사용하는 행위</li>
						            <li>이 약관에 위배되는 내용을 “회사”에 요구하는 행위</li>
						            <li>기타 불법적이거나 부당한 행위</li>
						          </ol>
						        </li>
						        <li>“회원”은 관계법, 이 약관의 규정, 이용안내 및 “서비스”와 관련하여 공지한 주의사항, “회사”가 통지하는 사항 등을 준수하여야 하며, 기타 “회사”의 업무에 방해되는 행위를 하여서는 안 됩니다.
						        </li>
						    </ol>
						    <p></p>
						    <p><b>제12조. 강사 및 수강생의 역할과 권한</b></p>
						    <ol>
						        <li>“강사”는 “서비스”에서 아래와 같은 역할 및 권한과 의무를 가집니다.
						          <ol>
						            <li>“강사”는 법령과 이 약관을 준수하는 범위 내에서 강의의 구성원을 설정할 수 있습니다.</li>
						            <li>“강사”는 해당 강의를 수강할 대상들을 초대할 수 있으며, 수강 신청 대상 중 승인 또는 반려할 수 있고, 수강생 중 수업에 위해가 될 경우 “회사”의 동의하에 강제 탈퇴 시킬 수 있습니다.
						            </li>
						            <li>“강사”, “수강생” 등 모든 회원은 어떠한 경우에도 회원의 사전 서면 허락 없이 개인의 개인정보를 타인에게 공개할 수 없으며, 이를 위반하여 발생하는 모든 법적 책임은 위반하는 회원에게
						              있습니다.
						            </li>
						            <li>“강사”는 강의 공간을 해당 교육을 위한 합법적인 목적 이외 개인의 영리추구, 불법 또는 사기 등과 같은 서비스 목적에 합당하지 않은 용도로 이용을 할 수 없습니다.</li>
						            <li>“강사”가 "서비스" 회원 탈퇴를 한 경우, “강사”로서의 모든 권한은 상실 됩니다.</li>
						            <li>“강사”는 강의 성격에 부합하지 않은 게시물이 신고된 경우 임의로 삭제할 수 있습니다.</li>
						            <li>“강사”는 양질의 교육 환경과 교육 컨텐츠를 제공하는데 성실히 역할을 이행합니다.</li>
						          </ol>
						        </li>
						        <li>“수강생”은 “서비스”에서 아래와 같은 역할 및 권한과 의무를 가집니다.
						          <ol>
						            <li>본인 이외의 계정으로 서비스에 접근하지 않으며, 타인이 본인의 계정을 사용하도록 허용하지 않습니다.</li>
						            <li>과제나 퀴즈, 설문, 동료 평가 등과 같은 강의 내 학습 진행 시 불법 복제, 허위사실 기재 등의 부정행위를 하지 않습니다.</li>
						            <li>본인이 수강 중인 강의에 강의의 성격에 부합하지 않는 게시물을 게시하지 않으며, 이를 위반하여 신고된 경우 삭제조치 될 수 있음에 동의합니다.</li>
						            <li>강의에 대한 수료 시, 추후 수료증이 발급될 경우 불법 복제를 하거나 수료자의 명의 변경 등과 같은 행동을 일체 하지 않습니다.</li>
						            <li>“강사" 및 “회사"의 명예를 손상시키거나 업무를 방해하는 행위</li>
						            <li>이 약관에 위배되는 내용을 “회사”에 요구하는 행위</li>
						            <li>본 항의 각 수강생의 역할을 이행하지 않은 경우, "회사"는 회원 자격을 박탈하고 "서비스" 접근 또는 참여를 제한할 수 있습니다.</li>
						          </ol>
						        </li>
						    </ol>
						    <p></p>
						    <p><b>제13조. 서비스의 제공</b></p>
						    <ol>
						        <li>회사는 회원에게 아래와 같은 서비스를 제공합니다.
						          <ol>
						            <li>온라인 동영상 강의 서비스</li>
						            <li>동영상 외 텍스트 강의, 강의 관련 다양한 형태의 교육용 서비스</li>
						            <li>LMS 서비스(토론, 퀴즈, 과제, 평가, 수료)</li>
						            <li>강의제작 지원 서비스</li>
						            <li>기타 “회사”가 추가 개발하거나 다른 회사와의 제휴계약 등을 통해 “회원”에게 제공하는 일체의 서비스</li>
						          </ol>
						        </li>
						        <li>서비스 이용은 회사의 업무상 또는 기술상 특별한 지장이 없는 한 연중무휴, 1일 24시간 운영을 원칙으로 합니다.</li>
						        <li>회사는 일부 서비스의 이용 가능 시간을 별도로 정할 수 있습니다. 이 경우 서비스 이용안내를 통해 공지합니다.</li>
						    </ol>
						    <p></p>
						    <p><b>제14조. 서비스 제공의 변경 및 중지</b></p>
						    <ol>
						        <li>"회사"는 상당한 이유가 있는 경우에 운영상, 기술상의 필요에 따라 제공하고 있는 "서비스"의 전부 또는 일부를 변경할 수 있습니다.</li>
						        <li>"서비스"의 내용, 이용방법, 이용시간에 대하여 변경이 있는 경우에는 변경사유, 변경될 서비스의 내용 및 제공일자 등은 그 변경 전에 해당 서비스 초기화면에 게시하여야 합니다.</li>
						        <li>“회사”는 무료로 제공되는 서비스의 일부 또는 전부를 회사의 정책 및 운영의 필요상 수정, 중단, 변경할 수 있으며, 이에 대하여 관련법에 특별한 규정이 없는 한 “회원”에게 별도의 보상을 하지
						          않습니다.
						        </li>
						        <li>"회사”는 컴퓨터 등 정보통신설비의 보수점검, 교체 및 고장, 통신두절 또는 운영상 상당한 이유가 있는 경우 "서비스"의 제공을 일시적으로 중단할 수 있습니다. 이 경우 "회사"는 제9조에 정한
						          방법으로 "회원"에게 통지합니다. 다만, “회사"가 사전에 통지할 수 없는 부득이한 사유가 있는 경우, 해당 사유가 해소된 후 즉시 사후에 통지할 수 있습니다.
						        </li>
						    </ol>
						    <p></p>
						    <p><b>제15조. 회원의 게시물 관리</b></p>
						    <ol>
						        <li>회원이 서비스에 등록하는 게시물 등으로 인하여 본인 또는 타인에게 손해나 기타 문제가 발생하는 경우, 회원은 이에 대한 전적인 책임을 지게 되며, 회사는 이에 대하여 어떤 경우에도 책임을 지지
						          않습니다.
						        </li>
						        <li>회사는 다음 각 호에 해당하는 게시물 등을 회원의 사전 동의 없이 임시게시 중단, 수정, 삭제, 이동 또는 등록 거부 등의 관련 조치를 취할 수 있습니다.
						          <ol>
						            <li>다른 회원 또는 제 3자에게 심한 모욕을 주거나 명예를 손상시키는 내용인 경우</li>
						            <li>공공질서 및 미풍양속에 위반되는 내용을 유포하거나 링크시키는 경우</li>
						            <li>불법복제 또는 해킹을 조장하는 내용인 경우</li>
						            <li>영리를 목적으로 하는 광고일 경우</li>
						            <li>범죄와 결부된다고 객관적으로 인정되는 내용일 경우</li>
						            <li>다른 이용자 또는 제 3자의 저작권 등 기타 권리를 침해하는 내용인 경우</li>
						            <li>“회사”의 자체적 판단 아래 해당 “게시물”이 “서비스”의 성격에 부합하지 않는 경우</li>
						            <li>기타 관계법령에 위배된다고 판단되는 경우</li>
						          </ol>
						        </li>
						        <li>회사는 게시물 등에 대하여 제3자로부터 명예훼손, 지적재산권 등의 권리 침해를 이유로 게시중단 요청을 받은 경우 이를 임시로 삭제 할 수 있으며, 이의를 제기한 자와 게시물 등록자 간에 소송, 합의
						          등을 통해 당해 게시물에 관한 법적 문제가 종결된 후 이를 근거로 회사에 신청이 있는 경우에만 상기 임시 삭제된 게시물은 다시 등록될 수 있습니다.
						        </li>
						    </ol>
						    <p></p>
						    <p><b>제16조. 정보의 편집 및 삭제</b></p>
						    <p>“회사”는 다음 각 호의 경우, "강사"와 협의를 통해 이를 추가, 수정, 변경 또는 삭제할 수 있도록 요청할 수 있습니다. 다만, "강사"가 합리적인 사유 없이 이를 거부하거나, 현저한 정책위반 또는
        불법성이 명백한 경우 등 사전 협의절차를 거치기에 부적절하다고 판단될 경우, "회사”는 “강사”의 사전승인 없이 추가, 수정, 변경 또는 삭제할 수 있으며, "강사"에게 사후에 이메일로 통보합니다.</p>
        					<ol>
						        <li>"강사"가 운영하는 "강의"의 강의 컨텐츠가 속한 "카테고리" 등의 정보가 적절하지 않다고 판단될 경우</li>
						        <li>"강의"와 관련된 강의 제목, 동영상 제목, 강사 프로필 이미지, 강의 커버 이미지 등이 "회사"의 정책에 부합하지 않거나 사회 통념상 적절하지 않다고 판단할 경우</li>
						        <li>"강의"에 속한 내용이나 운영사항 또는 "강의"에 속한 동영상의 내용이 "회사”의 정책에 부합하지 않을 경우</li>
						    </ol>
						    <p></p>
						    <p><b>제17조. 게시물에 대한 저작권</b></p>
						    <ol>
						        <li>"회원"이 "서비스" 내에 게시한 "게시물"의 저작권은 해당 게시물의 저작자에게 귀속됩니다.</li>
						        <li>"회원"은 "회사"가 제공하는 "서비스"를 이용함으로써 얻은 정보를 저작권자의 사전 승낙 없이 녹화ㆍ복제ㆍ편집ㆍ전시ㆍ전송ㆍ배포ㆍ판매ㆍ방송ㆍ공연하는 등의 행위로 저작권을 침해하여서는 안됩니다.</li>
						        <li>"회원"이 "서비스" 내에 게시하는 "게시물"은 검색 엔진 내지 "서비스" 및 관련 프로모션 등에 노출될 수 있으며, 해당 노출을 위해 필요한 범위 내에서는 일부 수정, 복제, 편집되어 게시될 수
						          있습니다. 이 경우, “회사”는 저작권법 규정을 준수하며, "회원"은 언제든지 고객문의 또는 "서비스" 내 관리기능을 통해 해당 게시물에 대해 삭제, 검색결과 제외, 비공개 등의 조치를 취할 수 있습니다.
						        </li>
						        <li>회원이 올린 “게시물”이 회원의 동의 없이 타인에 의해 무단, 불법 복제되어 회원뿐 아니라 회사의 이익에 상충할 경우 회사는 회원을 대리해 저작권을 행사할 수 있습니다. 단, 이 경우 회사는 회원에게
						          개별적 동의를 구합니다.
						        </li>
						        <li>회사는 본 조 제 4항 이외의 목적으로 회원의 게시물을 사용하고자 하는 경우 사전에 회원의 동의를 얻어 사용합니다.</li>
						    </ol>
						    <p></p>
						    <p><b>제18조. 정보의 제공</b></p>
						    <ol>
						        <li>회사는 회원에게 서비스 이용에 필요가 있다고 인정되는 각종 정보에 대해서 전자우편이나 서신, 우편, SMS, 전화 등의 방법으로 회원에게 제공할 수 있습니다.</li>
						        <li>회사는 서비스 개선 및 회원 대상의 서비스 소개 등의 목적으로 회원의 동의 하에 관련 법령에 따라 추가적인 개인 정보를 수집할 수 있습니다.</li>
						    </ol>
						    <p></p>
						</div>
					</div>
				</div>
			</div>
		</section>
		<section class="policy_container displaynone">
			<div class="container">
				<div class="tabs is-boxed">
					<ul>
						<li>
							<a href="#">
								<span class="icon is-small">
									<!-- <i class="fas fa-award"></i> -->
									<img src="${path}/resources/img/icons8-certificate-64.png" alt="수료증 확인" />	
								</span>
								<span>수료증 확인</span>
							</a>
						</li>
						<li>
							<a href="#">
								<span class="icon is-small"><i class="fas fa-question"></i></span>
								<span>자주 묻는 질문</span>
							</a>
						</li>
						<li>
							<a href="#">
								<span class="icon is-small"><i class="far fa-file-alt"></i></span>
								<span>인프런 이용약관</span>
							</a>
						</li>
						<li>
							<a href="#">
								<span class="icon is-small"><i class="far fa-address-card"></i></span>
								<span>개인정보 취급방침</span>
							</a>
						</li>

					</ul>
				</div>
				<div class="content">
					<a href="/policy/previous-privacy">이전 개인정보 취급방침 보기</a>
					<div class="policy_privacy_container">
					  <h3>개인정보 취급방침</h3>
					    <p>인프랩 (이하 "회사")는 개인정보보호법, 통신비밀보호법, 전기통신사업법, 정보통신망 이용촉진 및 정보보호 등에 관한 법률 등을 준수하고 있습니다. "회사"는 본 개인정보취급방침을 통하여 이용자가 제공하는
					      개인정보가 어떠한 용도와 방식으로 이용되고 있으며, 개인정보보호를 위해 어떠한 조치가 취해지고 있는지 알려드리고자 합니다.</p>
					    <p>본 개인정보취급방침은 정부의 법률 및 지침 변경이나 "회사"의 내부 방침 변경 등으로 인하여 수시로 변경될 수 있으며, 개정된 사항은 개인정보취급방침을 시행하기 최소 7일전에 쉽게 알아 볼 수 있도록
					      "회사"가 제공하는 서비스 페이지에 공지하도록 하겠습니다.</p>
					    <p>"회사"의 개인정보취급방침은 다음과 같은 내용을 포함하고 있습니다.</p>
					    <ol>
					      <li>개인정보의 수집 및 이용 목적, 수집하는 개인정보의 항목 및 수집방법</li>
					      <li>개인정보의 제3자 제공</li>
					      <li>개인정보 보유 및 이용기간</li>
					      <li>회원의 권리와 행사 방법</li>
					      <li>개인정보 자동 수집 장치의 설치/운영 및 거부에 관한 사항</li>
					      <li>개인정보 보호를 위한 기술적·관리적 대책</li>
					      <li>개인정보 관리 책임자의 성명, 연락처, 부서</li>
					      <li>고지의 의무</li>
					    </ol>
					    <h5>1. 개인정보의 수집 및 이용 목적, 수집하는 개인정보의 항목 및 수집방법</h5>
					    <ol>
					      <li>개인정보란 생존하는 개인에 관한 정보로서 당해 개인을 식별할 수 있는 정보(당해 정보만으로는 특정 개인을 식별할 수 없더라도 다른 정보와 용이하게 결합하여 식별할 수 있는 것을 포함합니다.)를
					        말합니다.
					      </li>
					      <li>"회사"는 수집된 개인정보를 다음의 목적을 위해 활용합니다.
					        <ol>
					          <li>회원가입 및 의사소통에 관한 사항: 회원 본인확인, 부정 가입방지, 가입 의사확인, 연령확인, 고충상담 및 처리, 공지사항 안내 등</li>
					          <li>콘텐츠 및 서비스 제공에 관한 사항: 캐시 결제, 개인 및 법인사업자의 서비스 이용 및 판매대금 정산, 금융거래 시 본인 인증 및 금융서비스 등</li>
					          <li>이벤트 및 마케팅, 자료조사에 관한 사항: 이벤트 및 홍보성 정보전달, 서비스이용에 관한 통계조사 등</li>
					          <li>기타 서비스 제공 등</li>
					        </ol>
					      </li>
					      <li>
					        "회사"는 위에 명시한 목적을 위해 다음과 같은 개인정보를 수집하고 있습니다.
					        <ol>
					          <li>필수항목: 이름(실명), 이메일, 비밀번호, 생년월일</li>
					          <li>선택항목:
					            <ol>
					              <li>성별, 관심사, 캐시 충전 시 신용카드 정보, 은행계좌 정보, 통신사 정보 와 같은 대금결제를 위한 추가정보 등</li>
					              <li>강사 등록 시 사업자 등록을 하지 않은 개인인 경우
					                <ol>
					                  <li>필수정보: 이름(실명), 휴대전화번호, 우편번호, 주소</li>
					                  <li>추가정보: 주민등록번호, 정산계좌정보(은행명, 계좌번호, 예금주)</li>
					                </ol>
					              </li>
					              <li>강사 등록 시 사업자 등록을 한 개인사업자 및 법인사업자
					                <ol>
					                  <li>필수정보: 회사명, 사업자등록번호, 대표자명, 회사 전화번호, 우편번호, 주소, 담당자명, 담당자 휴대전화번호</li>
					                  <li>추가정보: 통신판매업신고번호, 수익입금계좌정보(은행명, 계좌번호, 예금주)</li>
					                </ol>
					              </li>
					              <li>그 외 추가정보 입력 후 제출할 서류
					                <ol>
					                  <li>사업자 등록을 하지 않은 개인: 계좌사본, 신분증사본</li>
					                  <li>사업자 등록을 한 개인사업자 및 법인사업자: 계좌사본, 사업자등록증사본, 통신판매업신고증사본</li>
					                </ol>
					              </li>
					            </ol>
					          </li>
					          <li>수집방법: 홈페이지(회원가입, 게시판 등), 모바일 어플리케이션, 팩스, 전화, 고객센터 문의, 이벤트 응모</li>
					          <li>서비스 이용과정이나 사업 처리 과정에서 서비스 이용기록, 접속 로그, 쿠키, 접속 IP 정보, 결제기록, 이용정지 기록과 같은 정보들이 생성되어 수집 가능</li>
					          <li>부가서비스 또는 이벤트 응모 과정에서 해당 서비스의 이용자에 관한 정보 (개인정보 추가 수집에 대한 동의를 받는 경우에 한정)</li>
					        </ol>
					      </li>
					      <li>"회사"는 이용자의 개인정보의 수집할 경우 반드시 이용자의 동의를 얻어 수집하며, 이용자의 기본적 인권을 침해할 우려가 있는 인종, 출신지, 본적지, 사상, 정치적 성향, 범죄기록, 건강상태 등의
					        정보는 이용자의 동의 또는 법령의 규정에 의한 경우 이외에는 수집하지 않습니다.
					      </li>
					      <li>"회사"는 회원 가입을 만 14세 이상인 경우에 가능하도록 하며 개인정보의 수집·이용에 법정대리인의 동의가 필요한 만 14세 미만 아동의 개인정보는 수집하지 않습니다.</li>
					      <li>"회사"는 다음과 같은 방법으로 개인정보를 수집할 수 있습니다
					        <ol>
					          <li>홈페이지(회원가입, 게시판 등), 모바일 어플리케이션, 팩스, 전화, 고객센터 문의, 이벤트 응모</li>
					          <li>생성정보 수집 툴을 통한 자동 수집</li>
					        </ol>
					      </li>
					    </ol>
					    <h4>2. 개인정보의 제3자 제공 및 위탁</h4>
					    <h5>2-1. 개인정보의 제3자 제공</h5>
					    <p>"회사"는 정보주체의 동의, 법률의 특별한 규정 등 개인정보 보호법 제17조 및 제18조에 해당하는 경우에만 개인정보를 제3자에게 제공합니다.</p>
					    <h5>2-2. 개인정보 처리의 위탁</h5>
					    <p>"회사"는 원활한 업무 처리를 위해서 아래와 같이 개인정보를 위탁하고 있으며, 관계 법령에 따른 위탁계약 시 개인정보가 안전하게 관리될 수 있도록 필요한 사항을 규정하고 있습니다. 회사의 개인정보 위탁처리 기관 및 위탁업무 내용은 아래와 같습니다.</p>
					    <table>
					        <thead>
					          <tr>
					            <th>제공받은 자</th>
					            <th>제공하는 목적</th>
					            <th>제공하는 개인정보 항목</th>
					          </tr>
					        </thead>
					        <tbody>
					          <tr>
					            <td>LGCNS</td>
					            <td>톡드림을 이용한 카카오톡 알림 서비스</td>
					            <td>사용자 이름, 연락처</td>
					          </tr>
					          <tr>
					            <td>지식공유자</td>
					            <td>강의학습 정보 확인 및 발송</td>
					            <td>사용자 이름, 연락처</td>
					          </tr>
					        </tbody>
					    </table>
					    <h4>3. 개인정보 보유 및 이용기간</h4>
					    <ol>
					      <li>"회사"는 회원 가입 시 제공한 정보를 회원 가입시점부터 탈퇴 신청이 접수된 날까지 보관할 수 있습니다. 원칙적으로 회원 탈퇴 처리가 완료된 이후 회원 개인정보는 "회사"의 하드디스크에서 완전히
					        삭제되며, 문서의 경우 분쇄기로 분쇄하여 어떠한 용도로도 이용될 수 없도록 처리됩니다.
					      </li>
					      <li>단, 관계법령의 규정에 의하여 보존할 필요가 있는 경우 "회사"는 아래와 같이 관계법령에서 정한 일정한 기간 동안 회원정보를 보관합니다
					        <ol>
					          <li>개별적으로 회원의 동의를 받은 경우에는 약속한 보유기간</li>
					          <li>보존근거: 전자상거래 등에서의 소비자보호에 관한 법률, 통신비밀보호법</li>
					          <li>보존기간:
					            <ol>
					              <li>계약 또는 청약철회 등에 관한 기록(전자상거래법): 5년</li>
					              <li>대금결제 및 재화 등의 서비스 등의 공급에 관한 기록(전자상거래법): 5년</li>
					              <li>소비자의 불만 또는 분쟁처리에 관한 기록(전자상거래법): 3년</li>
					              <li>접속에 관한 기록 (통신비밀보호법): 3개월</li>
					            </ol>
					          </li>
					        </ol>
					      </li>
					    </ol>
					    <h4>4. 회원 및 법정대리인의 권리와 행사 방법</h4>
					    <ol>
					      <li>회원 및 법정대리인은 언제든지 다음의 사항에 관하여 개인정보 열람, 수정 및 회원 탈퇴를 요구할 수 있습니다.
					        <ol>
					          <li>"회사"가 보유하고 있는 회원의 개인정보</li>
					          <li>"회사"가 이용자의 개인정보를 이용하거나 제3자에게 제공한 내역</li>
					          <li>"회사"에게 개인정보수집ㆍ이용ㆍ제공 등의 동의를 한 내역</li>
					        </ol>
					      </li>
					      <li>회원 및 법정대리인은 "회사" 서비스에서 직접 자신의 정보를 열람, 정정을 할 수 있으며, 별도로 개인정보보호책임자에게 서면, 전화, 이메일 등을 통하여 개인정보의 열람, 정정을 요청할 수 있습니다.</li>
					      <li>회원 및 법정대리인은 언제든지 자신의 개인정보처리의 정지를 요구할 수 있습니다.</li>
					      <li>회원 및 법정대리인은 언제든지 회원가입 시 개인정보의 수집, 이용, 제공 등에 대해 동의하신 의사표시를 철회(회원탈퇴)할 수 있습니다.</li>
					      <li>회원 및 법정대리인이 "회사" 서비스에서 본인 확인 절차를 거친 후 직접 동의철회(회원탈퇴)를 하거나, 별도로 개인정보보호책임자에게 서면, 전화 또는 이메일 등을 통하여 연락하면 지체 없이 이용자의 개인정보를
					        파기하는 등 필요한 조치를 취합니다. 단, 동의철회(회원탈퇴)가 있더라도 관계법령에 따라 최소한의 정보가 보관됩니다.
					      </li>
					    </ol>
					    <h4>5. 개인정보 자동 수집 장치의 설치/운영 및 거부에 관한 사항</h4>
					    <ol>
					      <li>"회사"는 회원의 정보를 수시로 저장하고 불러오는 "쿠키"(cookie)를 사용합니다. "쿠키"는 웹사이트 이용 시 서버가 사용자의 웹브라우저에 보내는 작은 데이터 꾸러미로 회원의 컴퓨터의 하드디스크에
					        저장됩니다. "회사"는 다음과 같은 목적을 위해 "쿠키"를 사용합니다.
					        <ol>
					          <li>사용목적:
					            <ol>
					              <li>이용자의 접속 유지</li>
					              <li>이용자의 접속 빈도나 방문 시간 등을 분석, 이용자의 취향과 관심분야를 파악 및 자취 추적, 각종 이벤트 참여 정도 및 방문 횟수 파악 등을 통한 타겟 마케팅 및 개인 맞춤 서비스
					                제공
					              </li>
					            </ol>
					          </li>
					          <li>이용자는 "쿠키" 설치에 대한 선택권을 가지고 있으며 웹브라우저에서 옵션을 설정함으로써 모든 "쿠키"를 허용하거나, "쿠키"가 저장될 때마다 확인을 거치거나, 아니면 모든 "쿠키"의 저장을
					            거부할 수 있음
					          </li>
					        </ol>
					      </li>
					    </ol>
					    <h4>6. 개인정보 보호를 위한 기술적/관리적 대책</h4>
					    <ol>
					      <li>회원의 개인정보는 비밀번호에 의해 철저히 보호되고 있으며 본인이 제공한 이메일주소에 매칭되는 비밀번호는 본인만이 알고 있습니다. 따라서 개인정보의 확인 및 변경도 비밀번호를 알고 있는 본인에 의해서만
					        가능합니다.
					      </li>
					      <li>회원은 본인의 비밀번호를 누구에게도 알려주면 안됩니다. 이를 위해 "회사"에서는 기본적으로 PC에서의 사용을 마치신 후 온라인상에서 로그아웃(LOG-OUT)하고 웹 브라우저를 종료하도록 권장합니다.
					      </li>
					      <li>"회사"의 개인정보 보호를 위한 기술적/관리적 대책은 다음과 같습니다.
					        <ol>
					          <li>수집한 개인정보 중 비밀번호 등 본인임을 인증하는 정보에 대한 암호화 장치</li>
					          <li>컴퓨터 바이러스에 의한 개인정보의 침해를 막기 위한 백신소프트웨어 설치, 갱신, 점검 조치</li>
					          <li>개인정보 시스템에 대한 접근권한 설정, 관리 및 침입차단 시스템 등을 이용한 접근 통제장치</li>
					          <li>개인정보 취급자에 대한 지정과 권한의 설정 및 교육, 개인정보의 안전한 관리</li>
					        </ol>
					      </li>
					    </ol>
					    <h4>7. 개인정보 관리 책임자의 성명, 연락처, 부서</h4>
					    <p>이용자의 개인정보를 보호하고 개인정보와 관련한 불만을 처리하기 위하여 "회사"는 개인정보관리책임자를 두고 있습니다. 개인정보와 관련한 문의사항이 있으시면 아래의 개인정보관리책임자에게 연락 주시기
					      바랍니다.</p>
					    <ul>
					      <li>이 름: 구자유</li>
					      <li>소 속: 인프랩</li>
					      <li>연락처: 070-4178-0406</li>
					      <li>E-mail: freedom09@inflearn.com</li>
					    </ul>
					    <p>기타 개인정보침해에 관한 상담이 필요한 경우에는 한국정보보호진흥원, 대검찰청 인터넷범죄수사센터, 경찰청 사이버테러대응센터 등으로 문의하실 수 있습니다.</p>
					    <ul>
					      <li>한국정보보호진흥원 (1336)</li>
					      <li>대검찰청 인터넷범죄수사센터 (02-3480-3600)</li>
					      <li>경찰청 사이버테러대응센터 (02-392-0330)</li>
					    </ul>
					    <h4>8. 고지의 의무</h4>
					    <p>현재 개인정보 취급 방침에서 내용의 추가, 삭제 및 수정이 있을 시에는 변경사항의 시행일의 7일 전부터 "회사" 사이트의 공지사항을 통하여 고지 할 것 입니다. 다만, 회원의 권리 또는 의무에 중요한 내용의
					      변경은 최소 30일전에 고지하겠습니다.</p>
					    <p>개인정보취급방침 시행일자: 2019년 11월 18일</p>
					</div>
				</div>
			</div>
		</section>
	</main>
	<section class="apply_section">
		<div class="wrapper">
			<div class="apply_card">
				<div class="apply_title">지식공유자 되기</div>
				<div class="apply_desc">
					많은 사람들에게 배움의 기회를 주고,
					<br>
					경제적 보상을 받아보세요.
				</div>
				<a href="#" class="button button_primary">지식공유참여</a>
			</div>			
			<div class="apply_card">
				<div class="apply_title">기업 교육을 위한 인프런</div>
				<div class="apply_desc">
					“인프런 비즈니스” 를 통해 모든 팀원이 인프런의 강의들을
					<br>
					자유롭게 학습하는 환경을 제공하세요.
				</div>
				<a href="#" class="button button_primary">인프런 비지니스</a>
			</div>
		</div>
	</section>
	<footer>
		<div class="footer_wrapper">
			<div class="footer_top menu_list_cover">
				<div class="footer_menu_list">
					<div class="footer_list_title">
						인프런
						<span class="is-mobile">
							<i class="far fa-angle-up"></i>
							<i class="far fa-angle-down"></i>
						</span>
					</div>
					<div class="footer_menu_sublist">
						<a class="footer_list_link" href="#">공지사항</a>
						<a class="footer_list_link" href="#">인프런 소개</a>
						<a class="footer_list_link" href="#">인프런 이야기</a>
						<a class="footer_list_link" href="#">채용 안내</a>
					</div>
				</div>
				<div class="footer_menu_list">
					<div class="footer_list_title">
						고객센터
						<span class="is-mobile">
							<i class="far fa-angle-up"></i>
							<i class="far fa-angle-down"></i>
						</span>
					</div>
					<div class="footer_menu_sublist">
						<a class="footer_list_link" href="#">자주 묻는 질문</a>
						<a class="footer_list_link" href="#">수료증 확인</a>
						<a class="footer_list_link" href="#">이용약관</a>
						<a class="footer_list_link" href="#">개인정보취급방침</a>
					</div>
				</div>
				<div class="footer_menu_list">
					<div class="footer_list_title">
						신청하기
						<span class="is-mobile">
							<i class="far fa-angle-up"></i>
							<i class="far fa-angle-down"></i>
						</span>
					</div>
					<div class="footer_menu_sublist">
						<a class="footer_list_link" href="#">지식공유참여</a>
						<a class="footer_list_link" href="#">인프런 비지니스</a>
						<a class="footer_list_link" href="#">인프런 X 대학교</a>						
					</div>
				</div>
				<div class="footer_menu_list">
					<div class="footer_list_title">
						학습하기
						<span class="is-mobile">
							<i class="far fa-angle-up"></i>
							<i class="far fa-angle-down"></i>
						</span>
					</div>
					<div class="footer_menu_sublist">
						<a class="footer_list_link" href="#">IT프로그래밍</a>
						<a class="footer_list_link" href="#">크리에이티브</a>
						<a class="footer_list_link" href="#">업무스킬</a>						
					</div>
				</div>
				<div class="footer_menu_list">
					<div class="footer_list_title">
						커뮤니티
						<span class="is-mobile">
							<i class="far fa-angle-up"></i>
							<i class="far fa-angle-down"></i>
						</span>
					</div>
					<div class="footer_menu_sublist">
						<a class="footer_list_link" href="#">학습로드맵</a>
						<a class="footer_list_link" href="#">묻고 답하기</a>
						<a class="footer_list_link" href="#">수강평 모아보기</a>
						<a class="footer_list_link" href="#">강의 · 기능요청</a>
					</div>
				</div>
			</div>
			<div class="footer_bottom">
				<div class="footer_bottom_left">
					<div class="footer_info_top">
						<span class="is-hidden-mobile"><a href="#">inflean logo</a></span>
						<span><a href="#">개인정보취급방침</a></span>
						<span><a href="#">이용약관</a></span>
					</div>
					<div class="footer_info_bottom">
						<div class="footer_info_label">							
            				(주)인프랩 사업자 정보
            				<span class="is-mobile">
								<i class="far fa-angle-up"></i>
								<i class="far fa-angle-down"></i>
							</span>	
						</div>
						<div class="footer_info_dropdown">
							<span class="is-hidden-mobile">(주)인프랩 |</span>
							<span>대표자 : 이형주 |</span>
							<span>사업자번호 : 499-81-00612 |</span>
							<br class="is-mobile">
							<span>개인정보보호책임자 : 구자유 |</span>
							<span>통신판매업 : 2018-성남분당B-0062</span>
							<br class="is-hidden-mobile">
							<span>주소 : 성남시 분당구 삼평동 판교역로 240 삼환하이팩스 A동 208-1호 ㅣ</span>
							 이메일: info@inflearn.com          
						</div>

        			 	 ©INFLAB. ALL RIGHTS RESERVED        
					</div>
				</div>
				<div class="footer_bottom_right">
					<a href="#"><i class="text">N</i></a>
					<a href="#"><i class="text">B</i></a>
					<a href="#"><i class="fab fa-instagram"></i></a>
					<a href="#"><i class="fab fa-youtube"></i></a>
					<a href="#"><i class="fab fa-facebook-f"></i></a>
				</div>
			</div>
		</div>

	</footer>
</body>
<!-- <script src="./js/jquery-3.4.1.min.js"></script> -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">
	// $(document).ready(function() {		
		
	// });	
	$(function(){		
		
		$('.accordion').click(function(){
			console.log("accordion click");
			var width = $(this).children().next().css('max-height');
			console.log(width);


			if (width == '0px') {
				$('.accordion-body').css('max-height', '0em');
				$(this).children().next().css('max-height', '100em');		
			} else {
				$(this).children().next().css('max-height', '0em');
			}
			
		});		

		$('.tabs > ul > li:first-child').click(function(){			
			$('.container').css('max-width','1180px');	
			$('section').eq(0).css('display','block');
			$('section').eq(1).css('display','none');
			$('section').eq(2).css('display','none');
			$('section').eq(3).css('display','none');
		});

		$('.tabs > ul > li:nth-child(2)').click(function(){		
			$('.container').css('max-width','880px');	
			$('section').eq(0).css('display','none');
			$('section').eq(1).css('display','block');
			$('section').eq(2).css('display','none');
			$('section').eq(3).css('display','none');
		});

		$('.tabs > ul > li:nth-child(3)').click(function(){			
			$('.container').css('max-width','880px');	
			$('section').eq(0).css('display','none');
			$('section').eq(1).css('display','none');
			$('section').eq(2).css('display','block');
			$('section').eq(3).css('display','none');
		});

		$('.tabs > ul > li:last-child').click(function(){			
			$('.container').css('max-width','880px');	
			$('section').eq(0).css('display','none');
			$('section').eq(1).css('display','none');
			$('section').eq(2).css('display','none');
			$('section').eq(3).css('display','block');
		});

	});
</script>
</html>