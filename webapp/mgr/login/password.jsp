<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
	<jsp:include page="/mgr/include/inc_header.jsp" flush="false" />
			<!-- pageContents -->
			<div id="page-wrapper">
				<!-- pageTitle -->
				<jsp:include page="/mgr/include/inc_pageTitle.jsp" flush="false" />

				<div class="contents">
					<!-- admin page contents start -->
					<fieldset>
						<legend>비밀번호 변경 입력폼</legend>
						<!-- board write -->
						<table class="table table-bordered table-write">
							<caption>비밀번호 변경 입력폼</caption>
							<colgroup>
								<col width="150"/>
								<col width=""/>
							</colgroup>
							<tbody>
								<tr>
									<th scope="row">현재 비밀번호</th>
									<td><input type="password" class="form-control col-unit5" title="현재 비밀번호 입력"></td>
								</tr>
								<tr>
									<th scope="row">새 비밀번호 입력</th>
									<td><input type="password" class="form-control col-unit5" title="새 비밀번호 입력"> <span class="s_text">영문, 숫자 혼합 8자리 이상</span></td>
								</tr>
								<tr>
									<th scope="row">새 비밀번호 확인</th>
									<td><input type="password" class="form-control col-unit5" title="새 비밀번호 다시 입력"></td>
								</tr>
							</tbody>
						</table>
						<!-- //board write -->
						<!-- button -->
						<div class="btnarea">
							<div class="fr">
								<button class="btn btn-green">비밀번호 변경</button>
								<button class="btn btn-green">다음에 변경하기</button>
							</div>
						</div>
						<!-- //button -->
					</fieldset>
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