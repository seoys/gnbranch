jQuery.validator.setDefaults({
	onkeyup:false,
	onclick:false,
	onfocusout:false,
	errorPlacement: function(error, element) {
//		log("Error: " + element.attr("name") );
		
		if (element.is('textarea')) {
			element.next().css('border', '1px solid red');
        }
	},
	highlight: function (element, errorClass, validClass) {
		$(element).removeClass("has-success").addClass("has-error");
    },
    unhighlight: function (element, errorClass, validClass) {
    	$(element).removeClass("has-error").addClass("has-success");
    }
	/* showErrors:function(errorMap, errorList){
		var caption = $(errorList[0].element).attr('caption') || $(errorList[0].element).attr('name');
		alert('[' + caption + ']' + errorList[0].message);
	} */
});


// 메세지 생성
var msg ={
	errorHtml: function(){
		return '<span class="glyphicon glyphicon-remove form-control-feedback" aria-hidden="true"></span>';
	},
	successHtml: function(){
		return '<span class="glyphicon glyphicon-ok form-control-feedback" aria-hidden="true"></span>';
	}
};

// 연락처정보 생성
var selInfo = {
	phone : function(){
		var info = {"02" : "서울특별시",
				"031" : "경기도",
				"032" : "인천광역시",
				"033" : "강원도",
				"041" : "충청남도",
				"042" : "대전광역시",
				"043" : "충청북도",
				"044" : "세종특별자치시[1]",
				"049" : "개성공업지구",
				"051" : "부산광역시",
				"052" : "울산광역시",
				"053" : "대구광역시",
				"054" : "경상북도",
				"055" : "경상남도",
				"061" : "전라남도",
				"062" : "광주광역시",
				"063" : "전라북도",
				"064" : "제주특별자치도"};
		
		return info;
	},
	mobile: function(){
		var info = {"010" :"이동전화",
				"011" :"2G 이동전화",
				"016" :"2G 이동전화",
				"017" :"2G 이동전화",
				"018" :"2G 이동전화",
				"019" :"2G 이동전화"};
		
		return info;
	}
};
