<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
	<%@ include file="/mgr/include/inc_header.jsp" %>
	<link rel="stylesheet" type="text/css" href="/js/bower_components/jstree/dist/themes/default/style.min.css" />
			<!-- pageContents -->
			<div id="page-wrapper">
				<!-- pageTitle -->
				<%@ include file="/mgr/include/inc_pageTitle.jsp" %>

				<div class="contents">
					<!-- admin page contents start -->
					<h3>사이트 카테고리 관리 · 설정</h3>
					<div class="menusetBox">
						<!-- 카테고리 리스트 -->
						<div class="fl">
							<!-- button -->
							<div class="btnarea">
								<!-- <button class="btn2 add"><span></span>카테고리 추가</button> -->
								<button class="btn2 delete" id="btn_catedel"><span></span>삭제</button>
							</div>
							<!-- //button -->
							
							<!-- 카테고리 트리 -->
							<div class="category_list" id="catelist"></div>
							<!-- //카테고리 트리 -->
						</div>
						<!-- //카테고리 리스트 -->
						
						<!-- 카테고리 설정 -->
						<div class="category_set fl">
							<fieldset>
								<legend>메뉴 설정</legend>
								<form name="dfrm" id="dfrm" method="post" onSubmit="return false;">
								<!-- 메뉴입력 -->
								<div class="menu_name">
									<p class="tit">카테고리명 입력</p>
									<div class="con"><input type="text" name="menu_nm" id="txt_menunm" title="메뉴명 입력필드" class="form-control"/> <button class="btn btn-default" id="btn_submit">저장</button></div>
								</div>
								<input type="hidden" name="use_fl" value="Y"/>
								<input type="hidden" name="cate_cd" id="hid_catecd"/>
								<input type="hidden" name="sel_cate" id="hid_selcate"/>
								</form>
								<!-- 페이지연결 -->
								<div class="menu_page">
									<p class="tit">메뉴연결 페이지 선택</p>
									<div class="con">
										<!-- 연결된 페이지 있는 경우 -->
										<p class="currentPage">- 현재 연결되어 있는 페이지 : [HTML] <em>인사말(페이지명표시)</em></p>
										<ul>
											<li>
												<label for="radio1" class="sel_temp"><input type="radio" name="sel_temp" id="radio1" value="" /> HTML 페이지</label>
												<div class="pageBox">
													<ul class="pageList">
														<!-- 생성한 페이지명으로 노출 -->
														<li><label for=""><input type="radio" name="sel_html" id="" value="" /> 인사말</label></li>
														<li><label for=""><input type="radio" name="sel_html" id="" value="" /> 지부소개</label></li>
														<li><label for=""><input type="radio" name="sel_html" id="" value="" /> 연혁</label></li>
													</ul>
												</div>
											</li>
											<li class="sec">
												<label for="radio2" class="sel_temp"><input type="radio" name="sel_temp" id="radio2" value="" class="sel_temp" /> 게시판</label>
												<div class="pageBox">
													<ul class="pageList">
														<!-- 생성한 게시판명으로 노출 -->
														<li><label for=""><input type="radio" name="sel_board" id="" value="" /> 공지사항</label></li>
														<li><label for=""><input type="radio" name="sel_board" id="" value="" /> 자원봉사모집</label></li>
														<li><label for=""><input type="radio" name="sel_board" id="" value="" /> 이벤트</label></li>
													</ul>	
												</div>
											</li>
											<li class="thi">
												<label for="radio3" class="sel_temp"><input type="radio" name="sel_temp" id="radio3" value="" /> 별도 URL 입력</label>
												<div class="pageBox">
													<p class="s_text">* 입력하신 주소로 새창연결 됩니다.</p>
													<input type="text" id="" title="별도 연결URL 주소" class="form-control con-unit8"/>
												</div>
											</li>
											<li>
												<label for="radio4" class="sel_temp"><input type="radio" name="sel_temp" id="radio4" value="" /> 지부 맵</label>
											</li>
										</ul>
										<!-- //연결된 페이지 있는 경우 -->
										<!-- 생성페이지 없는 경우 -->
										<p class="currentPage">- 페이지 선택은 페이지 생성작업 후 가능합니다. <a href="#" target="_blak" class="btn btn-orange">메뉴로 이동</a></p>
										<ul>
											<li>
												<label for="radio1" class="sel_temp"><input type="radio" name="sel_temp" id="radio1" value="" disabled="" /> HTML 페이지</label>
											</li>
											<li class="sec">
												<label for="radio2" class="sel_temp"><input type="radio" name="sel_temp" id="radio2" value="" disabled="" /> 게시판</label>
											</li>
											<li class="thi">
												<label for="radio3" class="sel_temp"><input type="radio" name="sel_temp" id="radio3" value="" /> 별도 URL 입력</label>
												<div class="pageBox">
													<p class="s_text">* 입력하신 주소로 새창연결 됩니다.</p>
													<input type="text" id="" title="별도 연결URL 주소" class="form-control con-unit8"/>
												</div>
											</li>
											<li>
												<label for="radio4" class="sel_temp"><input type="radio" name="sel_temp" id="radio4" value="" /> 지부 맵</label>
											</li>
										</ul>
										<!-- //생성페이지 없는 경우 -->
										<!-- button공통 -->
										<div class="btnarea">
											<div class="fr"><button class="btn btn-green">페이지 연결저장</button></div>
										</div>
										<!-- //button공통 -->
									</div>
								</div>
							</fieldset>
						</div>
						<!-- //카테고리 설정 -->
					</div>
					
					<!-- //admin page contents end -->
				</div>
			</div>
			<!-- pageContents -->
		</div>
		<!-- //contentsWrapper -->
	</div>
	<%@ include file="/mgr/include/inc_footer.jsp" %>
	
	<script type="text/javascript" src="/js/bower_components/jstree/dist/jstree.min.js"></script>
	<script type="text/javascript">
		$(function() {
			// 메뉴연결 페이지 선택 라디오버튼
			$(".menu_page label.sel_temp").click(function(){
				$(".menu_page li").removeClass('on');
				$(this).parent().addClass('on');
			});
		});
		
		$(document).ready(function(){
			jsonData();
			
			// submit..
			$("#btn_submit").click(function(){
				var send = "/mgr/menuCategoryProc.gn";
				var $txt_menunm = $("#txt_menunm").val();
				var pars = $("#dfrm").serialize();
				
				if($.trim($txt_menunm) != ""){
					$.post(send,pars,function(xdata){
						$("#txt_menunm").val('');
						jsonData();
					});	
				}else{
					custom.cus_alert("메뉴명을 입력하세요.","Message");
				}
				
				
			});
			
			$("#btn_catedel").on("click",function(){
				var $sel_value = $("#hid_selcate").val();
				
				if($.trim($sel_value) == ""){
					custom.cus_alert("삭제할 메뉴를 선택하세요.","Message");
				}else{
					custom.cus_confirm("메뉴를 삭제하시겠습니까?<br/>삭제된 메뉴는 복원되지 않습니다.","Message","move","/mgr/menuCategoryDel.gn?cate_cd=" + $sel_value);
				}
			});
		});
		
		
		var jsonData = function(){
			var send = "/mgr/menuList.gn";
			var pars = "";
			
			$.getJSON(send,pars,function(xdata){
				var sdata =  [];
				var lastcatdcd = 0;
				$.each(xdata,function(i,v){
					sdata.push({"id":v.cate_cd,"parent":"#","text":v.menu_nm});
					lastcatdcd = v.cate_cd;
				});
				
				var lastcatdcd = parseInt(lastcatdcd) + 1000000;
				$("#hid_catecd").val(lastcatdcd);
				
				createJSTrees(sdata);
			});
		};
		
		
		/* tree make.. */
		var createJSTrees = function(jsonData) {
			$('.category_list').jstree({ 'core' : {'data' : jsonData} }).bind("select_node.jstree", function(event, data) {
				/* node 선택값을 지정된 id에 저장 */
				$("#hid_selcate").val(data.node.id);	
			});
			$('.category_list').jstree(true).redraw();
		};
	</script>
</body>
</html>
	