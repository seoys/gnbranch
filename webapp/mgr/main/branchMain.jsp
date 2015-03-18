<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
	<jsp:include page="/mgr/include/inc_header.jsp" flush="false" />
			<!-- pageContents -->
			<div id="page-wrapper">
				<!-- pageTitle -->
				<jsp:include page="/mgr/include/inc_pageTitle.jsp" flush="false" />

				<div class="contents">
					<!-- admin page contents start -->
					<div class="mainTempWrap">
						<div class="fl">
							<!-- [그룹구분] 시도본부 / 복지관 / 해외지부 -->	
							<!-- <img src="/images/mgr/temp/mainTypeA.jpg" alt="" /> -->
							<!-- [그룹구분] 좋은마음센터 -->
							<img src="/images/mgr/temp/mainTypeB.jpg" alt="" />
							<!-- [그룹구분] 아동권리지원센터 -->
							<!-- <img src="/images/mgr/temp/mainTypeC.jpg" alt="" /> -->
							<!-- [그룹구분] 아동보호전문기관_ 법인 -->
							<!-- <img src="/images/mgr/temp/mainTypeD.jpg" alt="" /> -->
							<!-- [그룹구분] 아동보호전문기관_ 위탁 -->
							<!-- <img src="/images/mgr/temp/mainTypeE.jpg" alt="" /> -->
						</div>
						<div class="selectBbs">
							<!-- list -->
							<fieldset>
								<legend>메인페이지 노출컨켄츠 관리</legend>
								<!-- list -->
								<table class="table table-bordered table-list">
									<caption>관리자 그룹 리스트</caption>
									<colgroup>
										<col width="30%"/>
										<col width="70%"/>
									</colgroup>
									<thead>
										<tr>
											<th scope="col">영역 선택</th>
											<th scope="col">노출 컨텐츠</th>
										</tr>
									</thead>
									<!-- [그룹구분] 시도본부 / 복지관 / 해외지부 -->
									<tbody>
										<!-- 게시판선택 -->
										<tr>
											<th>게시판영역 1</th>
											<td><!-- 메뉴 생성에서 연결된 게시판만 노출됨 -->
												<select name="" id="">
													<option value="">선택</option>
												</select>
											</td>
										</tr>
										<!-- 링크수정 -->
										<tr>
											<th>링크영역1</th>
											<td>
												<input type="text" name="" id="" />
												<label for="" class="blind">타겟선택</label>
												<select name="" id="">
													<option value="">_self</option>
													<option value="">_blank</option>
												</select>
											</td>
										</tr>
									</tbody>
								</table>
								<!-- //board list -->				
								<!-- button -->
								<div class="btnarea">
									<div class="fr">
										<a href="#"class="btn btn-green">적용</a> 
									</div>
								</div>
								<!-- //button -->
							</fieldset>
							<!-- //list -->
						</div>
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