var joinValidate = {
	// 결과 메시지 출력시 사용하는 Text
	resultCode : {
		// 공통
		empty_val : {
			code: 1,
			desc : '필수 정보입니다.'
		},
		space_length_val : {
			code: 2,
			desc : '공백없이 입력해주세요.'
		},
		// ID
		success_id : {
			code: 0,
			desc : '멋진 아이디네요:)'
		},		
		overlap_id : {
			code: 7,
			desc : '이미 사용 중인 ID 입니다.'
		},
		equal_success_id:{
			code:10,
			desc:'사용가능한 ID 입니다.'
		},other_id:{
			code:6,
			desc:'입력하신 ID가 일치하지 않습니다.'
				
		},overlap_id : {
			code: 7,
			desc : '이미 사용 중인 ID 입니다.'
		},
		
		// pw
		success_pw : {
			code: 0,
			desc : '사용가능한 비밀번호입니다.'
		},
		equal_success_pw : {
			code: 10,
			desc : '사용가능한 비밀번호입니다.'
		},
		invalid_pw : {
			code: 3,
			desc : '비밀번호는 8자 이상이어야 하며, 숫자/대문자/소문자/특수문자를 모두 포함해야 합니다.'
		},
		stream_pw : {
			code: 4,
			desc : '같은 문자를 4번 이상 사용하실 수 없습니다.'
		},
		hangle_pw : {
			code: 5,
			desc : '비밀번호에 한글은 사용하실 수 없습니다.'
		},
		other_pw : {
			code: 6,
			desc : '입력하신 비밀번호가 일치하지 않습니다.'
		},
		equal_pw : {
			code: 7,
			desc : '현재비밀번호와 다르게 입력해주세요.'
		},
		success_nowpw:{
			code: 100,
			desc: '확인되었습니다.'
		},
		
		// email
		success_email : {
			code: 0,
			desc : '사용가능한 이메일입니다.'
		},
		invalid_email : {
			code: 3,
			desc : '올바른 이메일을 입력해주세요.'
		},
		
	},
	// 아이디 유효성 체크
	checkId : function(id) {
		var regEmpty = /\s/g; // 공백문자
		var regEmail = /^[-A-Za-z0-9_]+[-A-Za-z0-9_.]*[@]{1}[-A-Za-z0-9_]+[-A-Za-z0-9_.]*[.]{1}[A-Za-z]{1,5}$/g;
		if(id == '' || id.length == 0) { // 1.값 유무
			return this.resultCode.empty_val;
		} else if(id.match(regEmpty)) { // 2.공백 유무
			return this.resultCode.space_length_val;
		} else if(!id.match(regEmail)) { // 3.유효한 이메일
			return this.resultCode.invalid_email;
		} else if(idCheck(id)){
			return this.resultCode.overlap_id;
		} else { // 통과!
			return this.resultCode.success_id;
		}
	}, checkRid : function(id, rid, idFlag) {
		if(rid == '' || rid.length == 0) { // 
			return this.resultCode.empty_val;
		} else if(!idFlag) { // 
			return this.resultCode.invalid_id;
		} else { // 3.
			if(id == rid && idFlag) {
				return this.resultCode.equal_success_id;
			} else {
				return this.resultCode.other_id;
			}
		}
	},
	
}
//function idCheck(id){
//	var return_val = true;
//	$.ajax({
//		type: 'POST',
//		url: 'idoverlap?id='+id,
//		async: false,
//		success: function(data){
//			console.log(data);
//			if(data>=1){
//				return_val = true;
//			} else{
//				return_val = false;
//			}			
//		},
//		error: function(){
//			alert('syserr');
//		}
//	});
//	return return_val;
//}
//function pwCheck(pw){
//	var return_val = true;
//	
//	$.ajax({
//		type: 'POST',
//		url: 'pwCheck?pw='+pw,
//		async:false,
//		success: function(data){
//			console.log(data);
//			if(data==1){
//					return_val = false;
//				} else{
//					return_val = true;
//				}
//		},
//		error: function(){
//			
//		}
//	});
//	return return_val;
//}