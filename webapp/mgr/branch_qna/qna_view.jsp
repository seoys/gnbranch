<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
	<jsp:include page="/mgr/include/inc_header.jsp" flush="false" />
			<!-- pageContents -->
			<div id="page-wrapper">
				<!-- pageTitle -->
				<jsp:include page="/mgr/include/inc_pageTitle.jsp" flush="false" />

				<div class="contents">
					<!-- admin page contents start -->
					<!-- view -->
					<fieldset>
						<legend>상세</legend>
						<!-- board view -->
						<table class="table table-bordered table-write">
							<caption>온라인 문의 상세</caption>
							<colgroup>
								<col width="150"/>
								<col width=""/>
							</colgroup>
							<tbody>
								<tr>
									<th scope="row">구분</th>
									<td>개인</td>
								</tr>
								<tr>
									<th scope="row">이름</th>
									<td>홍길동</td>
								</tr>
								<tr>
									<th scope="row">핸드폰</th>
									<td>010-0000-0000</td>
								</tr>
								<tr>
									<th scope="row">이메일</th>
									<td>aaa@aaa.com</td>
								</tr>
								<tr>
									<th scope="row">제목</th>
									<td>온라인문의 제목</td>
								</tr>
								<tr>
									<th scope="row">내용</th>
									<td>온라인문의 내용 온라인문의 내용 온라인문의 내용 온라인문의 내용 온라인문의 내용 온라인문의 내용 온라인문의 내용 온라인문의 내용온라인문의 내용온라인문의 내용 온라인문의 내용</td>
								</tr>
								<tr>
									<th scope="row">등록일</th>
									<td>2014-00-00</td>
								</tr>
							</tbody>
						</table>
						<!-- //board write -->
						<!-- button -->
						<div class="btnarea">
							<div class="fl">
								<a href="#"class="btn btn-green">목록</a>
							</div>
							<div class="fr">
								<button class="btn btn-green">삭제</button>
							</div>
						</div>
						<!-- //button -->
					</fieldset>
					<!-- //view -->
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