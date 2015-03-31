<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
	<%@ include file="/mgr/include/inc_header.jsp" %>
			<!-- pageContents -->
			<div id="page-wrapper" ng-app="menuApp">
				<!-- pageTitle -->
				<%@ include file="/mgr/include/inc_pageTitle.jsp" %>

				<div class="contents" ng-controller="menuController">
					<!-- admin page contents start -->
					<h3>사이트 카테고리 관리 · 설정</h3>
					<div class="menusetBox">
						<!-- 카테고리 리스트 -->
						<div class="fl">
							<!-- button -->
							<div class="btnarea">
								<button class="btn2 add"><span></span>카테고리 추가</button>
								<button class="btn2 delete"><span></span>삭제</button>
							</div>
							<!-- //button -->
							
							<!-- 카테고리 트리 -->
							<div class="category_list">
								<ol>
									<!-- <li class="one"> -->
										<!-- label 클릭시 class="active" 추가 : 서브메뉴 동일 -->
										<!-- <label class="active">1Depths메뉴명</label>
										<ol>
											<li class="two">
												<label>2Depths메뉴명</label>
												<ol>
													<li class="two"><label>3Depths메뉴명</label><div class="btnbox"><button class="btn_up">메뉴위로 이동</button><button class="btn_down">메뉴아래로 이동</button></div></li>
												</ol>
												<div class="btnbox"><button class="btn_up">메뉴위로 이동</button><button class="btn_down">메뉴아래로 이동</button></div>
											</li>
											<li class="two"><label>2Depths메뉴명</label><div class="btnbox"><button class="btn_up">메뉴위로 이동</button><button class="btn_down">메뉴아래로 이동</button></div></li>
										</ol>
										<div class="btnbox"><button class="btn_up">메뉴위로 이동</button><button class="btn_down">메뉴아래로 이동</button></div> -->
									<!-- </li> -->
									<!-- <li class="one">
										<label>1Depths메뉴명</label>
										<ol>
											<li class="two"><label>2Depths메뉴명</label><div class="btnbox"><button class="btn_up">메뉴위로 이동</button><button class="btn_down">메뉴아래로 이동</button></div></li>
										</ol>
										<div class="btnbox"><button class="btn_up">메뉴위로 이동</button><button class="btn_down">메뉴아래로 이동</button></div>
									</li> -->
								</ol>
							</div>
							<!-- //카테고리 트리 -->
						</div>
						<!-- //카테고리 리스트 -->
						
						<!-- 카테고리 설정 -->
						<div class="category_set fl">
							<fieldset>
								<legend>메뉴 설정</legend>
								<!-- 메뉴입력 -->
								<div class="menu_name">
									<p class="tit">카테고리명 입력</p>
									<div class="con"><input type="text" ng-model="catename" title="메뉴명 입력필드" class="form-control"/> <button class="btn btn-default" ng-click="cateAdd()">저장</button></div>
								</div>
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
			<div ng-contorller="SomeController">
				<expander class="expander" expander-titles="{{title}}">
				{{text}}
				</expander>
			</div>
		</div>
		<!-- //contentsWrapper -->
	</div>
	
	<%@ include file="/mgr/include/inc_footer.jsp" %>
	<script type="text/javascript" src="/js/bower_components/angular/angular.min.js"></script>
	<script type="text/javascript">
		$(function() {
			// 메뉴연결 페이지 선택 라디오버튼
			$(".menu_page label.sel_temp").click(function(){
				$(".menu_page li").removeClass('on');
				$(this).parent().addClass('on');
			});
		});
	</script>
	<script type="text/javascript">
	var menuApp = angular.module("menuApp",[]);
	menuApp.directive('expander', ['', function(){
		// Runs during compile
		return {
			// name: '',
			// priority: 1,
			// terminal: true,
			 scope: {title='=expanderTitle'}, // {} = isolate, true = child, false/undefined = no change
			// controller: function($scope, $element, $attrs, $transclude) {},
			// require: 'ngModel', // Array = multiple requires, ? = optional, ^ = check parent elements
			 restrict: 'EA', // E = Element, A = Attribute, C = Class, M = Comment
			 template: '<div>{{title}}</div><div>title ng-click="toggle()">{{title}}</div>',
			// templateUrl: '',
			 replace: true,
			 transclude: true,
			// compile: function(tElement, tAttrs, function transclude(function(scope, cloneLinkingFn){ return function linking(scope, elm, attrs){}})),
			link: function($scope, iElm, iAttrs, controller) {
				$scope.showMe = false;
				$scope.toggle = function toggle(){
					scope.showMe = !scope.showMe;
				}
			}
		};
	}]);
	menuApp.controller('menuController', ['$scope', function($scope){
		
	}]);
	menuApp.controller('SomeController', ['$scope', function($scope){
		
	}]);
	</script>
	
</body>
</html>
	