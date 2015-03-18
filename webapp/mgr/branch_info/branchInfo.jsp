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
						<legend>관리지부 등록</legend>
						<!-- board write -->
						<table class="table table-bordered table-write">
							<caption>관리지부 등록</caption>
							<colgroup>
								<col width="200"/>
								<col width=""/>
							</colgroup>
							<tbody>
								<tr>
									<th scope="row">그룹</th>
									<td>아동보호전문기관</td>
								</tr>
								<tr>
									<th scope="row">지부명</th>
									<td>영등포 아동보호전문기관</td>
								</tr>
								<tr>
									<th scope="row">지부 홈페이지 URL</th>
									<td><a href="http://yongdungpo.goodneighbors.kr" target="_blank">http://yongdungpo.goodneighbors.kr</a></td>
								</tr>
								<tr>
									<th scope="row">ID / PASS</th>
									<td><b>ID</b> : adminyongdungpo <label for="" class="mgl15">PASS</label> : <input type="text" id="" class="form-control"/> <span class="s_text">영문, 숫자, 특수문자 혼합 8~12자리</span></td>
								</tr>
								<tr>
									<th scope="row">지부 담당자 명</th>
									<td><input type="text" id="" class="form-control"/></td>
								</tr>
								<tr>
									<th scope="row">지부 주소</th>
									<td>
										<p><input type="text" class="form-control col-unit3"><button class="btn btn-form">우편번호 검색</button></p>
										<input type="text" class="form-control mt5 col-unit10">
									</td>
								</tr>
								<tr>
									<th scope="row">지부 주소 위도 / 경도</th>
									<td><label for="">위도</label> : <input type="text" id="" class="form-control"/><label for="">경도</label> : <input type="text" id="" class="form-control"/></td>
								</tr>
								<tr>
									<th scope="row">지부 연락처</th>
									<td><select name="" id="" class="form-control col-unit2" title="연락처 국번 선택">
											<option value="">선택</option>
										</select> - <input type="text" id="" class="form-control col-unit2" title="연락처 앞자리 입력"/> - <input type="text" id="" class="form-control col-unit2" title="연락처 뒷자리 입력"/></td>
								</tr>
								<tr>
									<th scope="col">지부 팩스번호</th>
									<td><select name="" id="" class="form-control col-unit2" title="팩스번호 국번 선택">
											<option value="">선택</option>
										</select> - <input type="text" id="" class="form-control col-unit2" title="팩스번호 앞자리 입력"/> - <input type="text" id="" class="form-control col-unit2" title="팩스번호 뒷자리 입력"/></td>
								</tr>
								<tr>
									<th scope="row">지부 이메일</th>
									<td><input type="text" class="form-control"></td>
								</tr>
								<tr>
									<th scope="row">지부 로고 이미지</th>
									<td>
										<input type="file"> <span class="s_text">(로고 사이즈:  000 * 00)</span>
										<!-- 수정페이지일 경우 -->
										<p><img src="/images/mgr/common/h1_logo.gif" alt="지부로고" class="img-logo"/> <span class="s_text">현재 등록된 이미지 경기1본부_230.jpg(230*43)</span></p>
									</td>
								</tr>
								<tr>
									<th scope="row">지부 개설일</th>
									<td>2014-12-12</td>
								</tr>
								<tr>
									<th scope="row">지부 수정일</th>
									<td>2014-12-12</td>
								</tr>
							</tbody>
						</table>
						<!-- //board write -->
						<!-- button -->
						<div class="btnarea">
							<div class="fr">
								<button class="btn btn-green">수정</button>
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