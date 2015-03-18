<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	response.setHeader("Pragma", "No-cache");
	response.setHeader("Cache-Control", "no-cache");
	response.setHeader("Cache-Control", "no-store");
	response.setHeader("Expires", "1");
 %>
<!DOCTYPE HTML>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>굿네이버스 지부 어드민</title>
	<link rel="stylesheet" type="text/css" href="/css/mgr/base.css" />
	<link rel="stylesheet" type="text/css" href="/js/bower_components/bootstrap/dist/css/bootstrap.css" />
	<link rel="stylesheet" type="text/css" href="/js/bower_components/bootstrap/dist/css/bootstrap-theme.min.css" />
</head>
<body>
	<form name="frm" id="frm" method="post" onSubmit="return false;" action="/mgr/memLoginProc.gn">
	<div class="login-box">
		<h1><img src="/images/mgr/common/h1_logo.gif" alt="굿네이버스" /></h1>
		<h2>Admin</h2>
		<fieldset>
			<legend>로그인</legend>
			<div class="login-form">
				<!-- <div class="pwbox has-success has-error"> 
				<span class="glyphicon glyphicon-ok form-control-feedback" aria-hidden="true"></span>
				<span class="glyphicon glyphicon-remove form-control-feedback" aria-hidden="true"></span>
				-->
				<div class="idbox">
					<input type="text" 
						name="user_id" 
						id="txt_id" 
						title="아이디입력" 
						class="form-control"
						placeholder="아이디를 입력해 주세요"
						value="mgrgni"
					/>
											
				</div>
				<div class="pwbox">
					<input type="password" 
						name="user_pwd" 
						id="txt_pwd" 
						title="비밀번호입력" 
						class="form-control"
						placeholder="비밀번호를 입력해 주세요"
						value="mgrgni123"
						/>
				</div>
				<p class="check"><input type="checkbox" name="chk_cookie" id="chk_cookie" value="1"/> <label for="chk_cookie">아이디 저장</label></p>
				<button class="btn btn-green" id="btn_submit">Login</button>
			</div>
		</fieldset>
	</div>
	</form>
	<script type="text/javascript" src="/js/jquery-1.10.2.js"></script>
	<script type="text/javascript" src="/js/bower_components/lodash/dist/lodash.min.js"></script>
	<script type="text/javascript" src="/js/bower_components/jquery-validation/dist/jquery.validate.min.js"></script>
	<script type="text/javascript" src="/js/msg.js"></script>
	<script type="text/javascript" src="/js/custom_ys-1.0.js"></script>
	<script type="text/javascript" src="/js/log.js"></script>
	<script type="text/javascript">
		$("#frm").validate({
			debug: true,
			rules: {
				user_id: {
					required : true,
					minlength: 5,
					maxlength: 20
				},
				user_pwd: {
					required : true,
					minlength: 8,
					maxlength: 20
				}
			},
			submitHandler: function(form) {
                form.submit();
            }
		});
	</script>
</body>
</html>