<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
	<jsp:include page="/mgr/include/inc_header.jsp" flush="false" />
			<!-- pageContents -->
			<div id="page-wrapper">
				<!-- pageTitle -->
				<jsp:include page="/mgr/include/inc_pageTitle.jsp" flush="false" />

				<div class="contents">
					<!-- admin page contents start -->
					<style type="text/css">p.tit {font-size: 13px;font-family: verdana;font-weight: 800;line-height: 3em;}</style>
					<p class="tit">button</p>
					<div class="well well-sm form-search">
						<button class="btn btn-default">btn-default</button>
						<button class="btn btn-green">btn-green</button>
						<button class="btn btn-form">btn-form</button>
						<a href="#" target="_blak" class="btn btn-orange">btn-orange</a>
					</div>
									
					<p class="tit">board button</p>
					<div class="well well-sm form-search">
						<!-- button -->
						<div class="btnarea">
							<div class="fl">
								<a href="#"class="btn btn-green">목록</a>
							</div>
							<div class="fr">
								<!-- 등록페이지 -->
								<button class="btn btn-green">등록</button>
								<button class="btn btn-green">취소</button>
								<!-- 수정페이지 -->
								<button class="btn btn-green">수정</button>
								<button class="btn btn-green">삭제</button>
							</div>
						</div>
						<!-- //button -->
					</div>
					
					<p class="tit">form</p>
					<div class="well well-sm">
						<select name="" id="" class="form-control">
							<option value="">선택</option>
						</select>
						<input type="text" class="form-control"/>
						<br /><br />
						<input type="file">
						<br />
						<label for="" class="radio-inline"><input type="radio" name="" id="" value="" /> Yes</label>
						<label for="" class="radio-inline"><input type="radio" name="" id="" value="" /> No</label>
					</div>
					
					<p class="tit">paging</p>
					<div class="well well-sm form-search">
						<!-- paging -->
						<div class="dataTables_paginate">
							<ul class="pagination">
								<li class="paginate_button previous disabled" id="dataTables-example_previous"><a href="#">이전</a></li>
								<li class="paginate_button active"><a href="#">1</a></li>
								<li class="paginate_button"><a href="#">2</a></li>
								<li class="paginate_button"><a href="#">3</a></li>
								<li class="paginate_button"><a href="#">4</a></li>
								<li class="paginate_button"><a href="#">5</a></li>
								<li class="paginate_button next" id="dataTables-example_next"><a href="#">다음</a></li>
							</ul>
						</div>
						<!-- //paging -->
					</div>
					<!-- //admin page contents end -->
				</div>
			</div>
			<!-- pageContents -->
		</div>
		<!-- //contentsWrapper -->
	</div>
	
	<jsp:include page="/mgr/include/inc_footer.jsp" flush="false" />
</body>
</html>