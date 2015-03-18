<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
		<%@ include file="/mgr/include/inc_header.jsp" %>
			<!-- pageContents -->
			<div id="page-wrapper">
				<!-- pageTitle -->
				<%@ include file="/mgr/include/inc_pageTitle.jsp" %>

				<div class="contents">
					<!-- admin page contents start -->
					<!-- 지부관리자일 경우에 노출 --><p class="table_dis">* 메인 배너는 최대 2개까지만 등록 가능 </p>
					<!-- board list -->
					<table class="table table-bordered table-list">
						<caption>메인페이지 이벤트 배너 리스트</caption>
						<colgroup>
							<col width="150"/>
							<col width=""/>
							<col width="200"/>
							<col width="100"/>
							<col width="100"/>
						</colgroup>
						<thead>
							<tr>
								<th scope="col">
									<c:choose>
										<c:when test="${sessionVO.group_sq == 1}">
											적용그룹
										</c:when>
										<c:otherwise>
											노출순서
										</c:otherwise>
									</c:choose>
								</th>
								<th scope="col">배너명</th>
								<th scope="col">노출기간</th>
								<th scope="col">등록일</th>
								<th scope="col">노출여부</th>
							</tr>
						</thead>
						<tbody>
							<!-- 마스터관리자 -->
<c:choose>
	<c:when test="${!empty resultList}">
		<c:forEach items="${resultList }" var="list" varStatus="status">
							<tr>
								<th><input type="checkbox" value="${list.banner_sq}" /> <label for="">${list.orderby_cnt}</label></th>
								<td><!-- 수정페이지 이동 --><a href="/mgr/banner${kind}Write.gn?banner_sq=${list.banner_sq}">${list.banner_nm}</a></td>
								<td>${fn:substring(list.start_dt,0,10)} ~ ${fn:substring(list.end_dt,0,10)}</td>
								<td>${fn:substring(list.reg_dt,0,10)}</td>
								<td>${list.use_fl}</td>
							</tr>
		</c:forEach>
	</c:when>
	<c:otherwise>
							<tr>
								<td colspan="5">등록된 글이 없습니다. </td>
							</tr>
	</c:otherwise>
</c:choose>							
							<!-- <tr>
								노출여부 No일 경우 checkbox disabled=""
								<th><input type="checkbox" id="" disabled=""/> <label for="">좋은마음센터</label></th>
								<td>수정페이지 이동<a href="#">캠페인 배너 제목</a></td>
								<td>2009-01-01 ~ 2009-01-01</td>
								<td>2009-01-01</td>
								<td>No</td>
							</tr> -->
							<!-- //마스터관리자 -->
							
							<!-- 지부관리자 -->
							<!-- 첫번째 슈퍼관리자 등록배너 -->
							<!-- <tr class="lock">
								<th><input type="checkbox" id="" disabled=""/> <label for="">1(고정)</label></th>
								<td>수정페이지 연결 없음캠페인 배너 제목</td>
								<td>2009-01-01 ~ 2009-01-01</td>
								<td>2009-01-01</td>
								<td>Yes</td>
							</tr> -->
							<!-- //첫번째 슈퍼관리자 등록배너 -->
							<!-- <tr>
								<th><input type="checkbox" id="" /> <label for="">2</label></th>
								<td>수정페이지 이동<a href="#">캠페인 배너 제목</a></td>
								<td>2009-01-01 ~ 2009-01-01</td>
								<td>2009-01-01</td>
								<td>Yes</td>
							</tr> -->
							<!-- <tr>
								노출여부 No일 경우 checkbox disabled=""
								<th><input type="checkbox" id="" disabled=""/> <label for="">3</label></th>
								<td>수정페이지 이동<a href="#">캠페인 배너 제목</a></td>
								<td>2009-01-01 ~ 2009-01-01</td>
								<td>2009-01-01</td>
								<td>No</td>
							</tr> -->
							<!-- //지부관리자 -->
						</tbody>
					</table>
					<!-- //board list -->
					<!-- button -->
					<div class="btnarea">
						<div class="fl">
							<button class="btn btn-green" id="btn_del">선택 삭제</button>
						</div>
						<div class="fr">
							<a href="/mgr/banner${kind}Write.gn" class="btn btn-green">등록</a> 
						</div>
					</div>
					<!-- //button -->
					<!-- //admin page contents end -->
				</div>
			</div>
			<!-- pageContents -->
		</div>
		<!-- //contentsWrapper -->
	</div>
	
	<%@ include file="/mgr/include/inc_footer.jsp" %>
<script type="text/javascript">
$(document).ready(function(){
	$("#btn_del").on("click",function(){
		var chkValue = $("table :checked").map(function(i,v){
			return $(this).val()
		}).get().join(",");
		
		log(chkValue);
	});
});
</script>	
</body>
</html>