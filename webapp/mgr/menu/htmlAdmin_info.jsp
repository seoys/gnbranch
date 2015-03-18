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
									<th scope="row">페이지종류 &amp; 형태 </th>
									<!-- 페이지선택 항목 노출 -->
									<td>종류 : <em>HTML</em> 템플릿형태 : <em>지부소개</em></td>
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
									<th scope="row">이미지</th>
									<td>
										<span class="s_text">이미지 형식: JPG / GIF, 이미지사이즈: 000 * 00 / 3MB 이하</span>
										<input type="file"> 
										<!-- 수정페이지일 경우 -->
										<p><img src="/images/mgr/common/h1_logo.gif" alt="지부로고" class="img-logo"/> <span class="s_text">현재 등록된 이미지 경기1본부_230.jpg(230*43)</span></p>
									</td>
								</tr>
								<tr>
									<th scope="row">내용</th>
									<td class="editorWrap">
										<!-- 에디터영역 -->
									</td>
								</tr>
								<tr>
									<th scope="row">지부 포토갤러리 사용</th>
									<td class="insideBox">
										<p>
											<label for="" class="radio-inline"><input type="radio" name="" id="" value="" /> Yes</label>
											<label for="" class="radio-inline"><input type="radio" name="" id="" value="" /> No</label>
										</p>
										<!-- YES선택시에 하단 div 노출 -->
										<div>
											<p class="s_text">- 이미지는 최대 6개까지 등록 가능<br />- 이미지 형식: JPG / GIF, 이미지사이즈: 000 * 00 / 3MB 이하</p>
											<!-- 이미지추가 버튼클릭시 <table>내용 추가 -->
											<table>
												<caption>지부소개 이미지</caption>
												<colgroup>
													<col width="100"/>
													<col width=""/>
												</colgroup>
												<!-- 이미지추가 버튼 -->
												<tfoot>
													<tr>
														<td colspan="2">
															<button class="btn2 add"><span></span>추가</button><button class="btn2 delete"><span></span>삭제</button>
														</td>
													</tr>
												</tfoot>
												<!-- //이미지추가 버튼 -->
												<!-- 이미지추가 내용 -->
												<tbody>													
													<tr>
														<th>첨부이미지</th>
														<td>
															<input type="file"> 
															<!-- 수정페이지일 경우 이전등록 이미지 노출 -->
															<p><img src="/images/front/temp/info.jpg" alt="" width="50%"/></p>
														</td>
													</tr>
													<tr>
														<th>이미지설명</th>
														<td>
															<input type="text" class="form-control col-unit9">
														</td>
													</tr>
												</tbody>
												<!-- //이미지추가 내용 -->
											</table>
											<!-- //이미지추가 버튼클릭시 <table>내용 추가 -->
											<table>
												<caption>지부소개 이미지</caption>
												<colgroup>
													<col width="100"/>
													<col width=""/>
												</colgroup>
												<!-- 이미지추가 버튼 -->
												<tfoot>
													<tr>
														<td colspan="2">
															<button class="btn2 add"><span></span>추가</button><button class="btn2 delete"><span></span>삭제</button>
														</td>
													</tr>
												</tfoot>
												<!-- //이미지추가 버튼 -->
												<!-- 이미지추가 내용 -->
												<tbody>													
													<tr>
														<th>첨부이미지</th>
														<td>
															<input type="file"> 
															<!-- 수정페이지일 경우 이전등록 이미지 노출 -->
															<p><img src="/images/front/temp/info.jpg" alt="" width="50%"/></p>
														</td>
													</tr>
													<tr>
														<th>이미지설명</th>
														<td>
															<input type="text" class="form-control col-unit9">
														</td>
													</tr>
												</tbody>
												<!-- //이미지추가 내용 -->
											</table>
										</div>
									</td>
								</tr>
								<tr>
									<th scope="row">사용 여부</th>
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
							<div class="fl">
								<button class="btn btn-green">목록</button>
							</div>
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