var custom = {
//		aelrt창 호출
		cus_alert: function(output_msg, title_msg){
			if (!title_msg){title_msg = '메세지';}
		    if (!output_msg){output_msg = '내용이 없습니다.';}

		    $("<div></div>").html(output_msg).dialog({
		        title: title_msg,
		        resizable: false,
		        modal: true,
		        buttons: {
		            "확인": function() 
		            {
		                $( this ).dialog( "close" );
		            }
		        }
		    });
		},
//		confirm창 호출
		cus_confirm: function(output_msg, title_msg,act,moveObj){
			if (!title_msg){title_msg = '메세지';}
		    if (!output_msg){output_msg = '내용이 없습니다.';}

		    $("<div></div>").html(output_msg).dialog({
		        title: title_msg,
		        resizable: false,
		        modal: true,
		        buttons: {
		            "예": function() 
		            {
		            	if(act == "hidden"){
		            		$("#" + moveObj).attr("readonly",true);
		            	}else if(act == "move"){
		            		location.href = moveObj;
		            	}else if(act == "submit"){
		            		document.dfrm.auction = moveObj;
		            		document.dfrm.submit();
		            	};
		            	$( this ).dialog( "close" );
		            },
		            "아니오": function() 
		            {
		                $( this ).dialog( "close" );
		            }
		        }
		    });
		},
		
		pagingLink: function(){
			
		}
};