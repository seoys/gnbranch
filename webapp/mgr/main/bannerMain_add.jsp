<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
	<jsp:include page="/mgr/include/inc_header.jsp" flush="false" />
			<!-- pageContents -->
			<div id="page-wrapper">
				<!-- pageTitle -->
				<jsp:include page="/mgr/include/inc_pageTitle.jsp" flush="false" />

				<div class="contents">
					<!-- admin page contents start -->
					<!-- write -->
					<fieldset>
						<legend>메인페이지 이벤트 배너 등록</legend>
						<!-- board write -->
						<table class="table table-bordered table-write">
							<caption>메인페이지 이벤트 배너 등록</caption>
							<colgroup>
								<col width="200"/>
								<col width=""/>
							</colgroup>
							<tbody>
								<!-- 마스터관리자 -->
								<tr>
									<th scope="row">적용그룹</th>
									<td>
										<select name="" id="" class="form-control">
											<option value="">전체 공통</option>
										</select>
									</td>
								</tr>
								<!-- //마스터관리자 -->
								<!-- 지부관리자 -->
								<tr>
									<th scope="row">노출순서</th>
									<td><input type="text" class="form-control"></td>
								</tr>
								<!-- //지부관리자 -->
								
								<!-- 공통부분 -->
								<tr>
									<th scope="row">배너명</th>
									<td><input type="text" class="form-control col-unit9"></td>
								</tr>
								<tr>
									<th scope="row">배너 링크 URL</th>
									<td><input type="text" class="form-control col-unit9"></td><!-- 새창연결 옵션 필요없는지? -->
								</tr>
								<tr>
									<th scope="row">배너 노출기간</th>
									<td><label for="">시작일</label> : <input type="text" id="" class="form-control"/> ~ <label for="">종료일</label> : <input type="text" id="" class="form-control"/></td>
								</tr>
								<tr>
									<th scope="row">배너 이미지</th>
									<td>
										<span class="s_text">이미지 형식: JPG / GIF, 배너사이즈: 000 * 00 / 3MB 이하</span>
										<input type="file"> 
										<!-- 수정페이지일 경우 -->
										<p><img src="/images/mgr/common/h1_logo.gif" alt="지부로고" class="img-logo"/> <span class="s_text">현재 등록된 이미지 경기1본부_230.jpg(230*43)</span></p>
									</td>
								</tr>
								<tr>
									<th scope="row">노출여부</th>
									<td>
										<label for="" class="radio-inline"><input type="radio" name="" id="" value="" /> Yes</label>
										<label for="" class="radio-inline"><input type="radio" name="" id="" value="" /> No</label>
									</td>
								</tr>
								<!-- //공통부분 -->
							</tbody>
						</table>
						<!-- //board write -->
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
					</fieldset>
					<!-- //write -->
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