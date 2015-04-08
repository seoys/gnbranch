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
						<legend>HTML 페이지 등록</legend>
						<!-- board write -->
						<table class="table table-bordered table-write">
							<caption>HTML 페이지 등록</caption>
							<colgroup>
								<col width="200"/>
								<col width=""/>
							</colgroup>
							<tbody>
								<tr>
									<th scope="row">적용그룹</th>
									<td>아동보호전문기관</td>
								</tr>
								<tr>
									<th scope="row">페이지종류 &amp; 형태 </th>
									<!-- 페이지선택 항목 노출 -->
									<td>종류 : <em>HTML</em> 템플릿형태 : <em>없음</em></td>
								</tr>
								<tr>
									<th scope="row">HTML 페이지명</th>
									<td><input type="text" class="form-control col-unit9"></td>
								</tr>
								<tr>
									<th scope="row">서브 타이틀</th>
									<td><input type="text" class="form-control col-unit9"></td>
								</tr>
								<tr>
									<th scope="row">내용</th>
									<td class="editorWrap">
										<!-- 에디터영역 -->
									</td>
								</tr>
								<tr>
									<th scope="row">사용 여부</th>
									<td>
										<label for="" class="radio-inline"><input type="radio" name="" id="" value="" /> Yes</label>
										<label for="" class="radio-inline"><input type="radio" name="" id="" value="" /> No</label>
									</td>
								</tr>
								<tr>
									<th scope="row">수정 권한</th>
									<td>
										<label for="" class="radio-inline"><input type="radio" name="" id="" value="" /> Yes</label>
										<label for="" class="radio-inline"><input type="radio" name="" id="" value="" /> No</label>
									</td>
								</tr>
							</tbody>
						</table>
						<!-- //board write -->
						<!-- button -->
						<div class="btnarea">
							<div class="fr">
								<button class="btn btn-green">등록</button>
								<button class="btn btn-green">취소</button>
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