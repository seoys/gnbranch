<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>BEFE</title>
</head>
<body>
<form name="form1" id="form1" method="post" action="${msgVO.url}">
	<c:if test="${!empty msgVO.list}">
		<c:forEach items="${msgVO.list}" var="item">
			<input type="hidden" name="${item.name}" value="${item.value}" />
		</c:forEach>
	</c:if>
</form>

<script type="text/javascript">
/* document.domain = "goodneighbors.kr"; */

var post_yn = "${msgVO.post_yn}";
var target = "${msgVO.target}";
var msg = "${msgVO.msg}";
var url = "${msgVO.url}";
if(msg != ""){
	alert(msg);
}

if(url == "")
	url = "/";

if(post_yn == "Y"){
	tar = target;
	with(document.form1){
		action = url;
		if(tar == "T"){
			target = "_top";
		}else if(tar == "C"){
			target = "_opener";
		}else if(tar == "PR"){
			target = "_parent";
		}

		if(tar != "NO") submit();
		if(tar == "C") self.close();
	}
} 

else {
	if(target == "T"){
		top.location.href = url;
	}else if(target == "C"){
		self.close();	
	}else if(target == "B"){
		history.back(-1);
	}else if(target == "CR"){
		if (opener) {
			opener.location.reload();
		}
		self.close();		
	}else if(target == "PR"){
		parent.location.reload();
	}else if(target == "CL"){
		if (opener) {
			opener.location.href = url;
		}
		self.close();	
	}else if(target == "NO"){
		url = "";
	}else{
		location.href = url;
	}
}
</script>
</body>
</html>