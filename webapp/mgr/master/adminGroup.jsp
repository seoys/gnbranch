<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
	<jsp:include page="/mgr/include/inc_header.jsp" flush="false" />

			<!-- pageContents -->
			<div id="page-wrapper">
				<!-- pageTitle -->
				<jsp:include page="/mgr/include/inc_pageTitle.jsp" flush="false" />

				<div class="contents">
					<!-- admin page contents start -->
					<!-- list -->
					<fieldset>
						<legend>관리자 그룹 리스트</legend>
						<!-- list -->
						<table class="table table-bordered table-list">
							<caption>관리자 그룹 리스트</caption>
							<colgroup>
								<col width="70%"/>
								<col width="30%"/>
							</colgroup>
							<thead>
								<tr>
									<th scope="col">관리자 그룹명</th>
									<th scope="col">사용여부</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<th><input type="text" name="" id="" title="관리자 그룹명 입력" value="아동보호전문기관" class="form-control col-unit9"/></th>
									<td>
										<label for="" class="radio-inline"><input type="radio" name="" id="" value="" /> Yes</label>
										<label for="" class="radio-inline"><input type="radio" name="" id="" value="" /> No</label>
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