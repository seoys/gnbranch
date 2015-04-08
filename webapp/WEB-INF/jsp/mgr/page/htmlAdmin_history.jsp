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
									<td>종류 : <em>HTML</em> 템플릿형태 : <em>연혁</em></td>
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
									<th scope="row">연혁내용</th>
									<td class="historyBox">
										<!-- 년도추가 클릭시 <div> 내용추가 -->
										<div>
											<p class="sel_year">
												<select name="" id="" class="form-control">
													<option value="">2014</option>
												</select>
												<button class="btn2 add"><span></span>추가</button>
												<button class="btn2 delete"><span></span>삭제</button>
											</p>
											<table>
												<colgroup> 
													<col width="170"/>
													<col width=""/>
												</colgroup>
												<thead>
													<tr>
														<th scope="col">날짜</th>
														<th scope="col">내용</th>
													</tr>
												</thead>
												<tbody>
													<!-- 상세내용추가 버튼클릭시 <tr>내용 추가 -->
													<tr>
														<td class="text-center"><!-- 클릭시 달력UI --><input type="text" class="form-control"></td>
														<td>
															<input type="text" class="form-control col-unit8">
															<button class="btn2 add"><span></span>추가</button>
															<button class="btn2 delete"><span></span>삭제</button>
														</td>
													</tr>
													<!-- //상세내용추가 버튼클릭시 <tr>내용 추가 -->
												</tbody>
											</table>
										</div>
										<!-- //년도추가 클릭시 <div> 내용추가 -->
										<div>
											<p class="sel_year">
												<select name="" id="" class="form-control">
													<option value="">2014</option>
												</select>
												<button class="btn2 add"><span></span>추가</button>
												<button class="btn2 delete"><span></span>삭제</button>
											</p>
											<table>
												<colgroup> 
													<col width="170"/>
													<col width=""/>
												</colgroup>
												<thead>
													<tr>
														<th scope="col">날짜</th>
														<th scope="col">내용</th>
													</tr>
												</thead>
												<tbody>
													<!-- 상세내용추가 버튼클릭시 <tr>내용 추가 -->
													<tr>
														<td class="text-center"><!-- 클릭시 달력UI --><input type="text" class="form-control"></td>
														<td>
															<input type="text" class="form-control col-unit8">
															<button class="btn2 add"><span></span>추가</button>
															<button class="btn2 delete"><span></span>삭제</button>
														</td>
													</tr>
													<tr>
														<td class="text-center"><input type="text" class="form-control"></td>
														<td>
															<input type="text" class="form-control col-unit8">
															<button class="btn2 add"><span></span>추가</button>
															<button class="btn2 delete"><span></span>삭제</button>
														</td>
													</tr>
													<!-- //상세내용추가 버튼클릭시 <tr>내용 추가 -->
												</tbody>
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