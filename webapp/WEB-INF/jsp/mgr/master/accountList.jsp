<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
			<%@ include file="/mgr/include/inc_header.jsp" %>
			<!-- pageContents -->
			<div id="page-wrapper">
				<!-- pageTitle -->
				<%@ include file="/mgr/include/inc_pageTitle.jsp" %>

				<div class="contents">
					<!-- admin page contents start -->
					<!-- list -->
					<fieldset>
						<legend>관리지부 리스트</legend>
						<!-- search -->
						<form name="searchfrm" id="searchfrm" method="post" action="/mgr/accountList.gn">
						<div class="well well-sm form-search">
							<label for="sel_search" class="blind">지부그룹 선택</label>
							<select name="searchKey" id="sel_search" class="form-control">
								<option value="">선택</option>
								<c:forEach var="list" items="${resultGList}" varStatus="status">
                                	<c:set var="selected" value=""/>
                                	<c:if test="${list.group_sq == searchVO.searchKey}">
                                		<c:set var="selected" value="selected=\"selected\""/>
                                	</c:if>
                                    <option value="${list.group_sq}" ${selected}>${list.group_nm}</option>
                                </c:forEach>
							</select>
							<label for="txt_search" class="blind">지부검색어 입력</label> <input type="text" name="searchKeyword" id="txt_search" class="form-control" value="${searchVO.searchKeyword}"/>
							<button class="btn btn-default">검색</button>
							<c:if test="${!empty searchVO.searchKeyword }">
								<a href="/mgr/accountList.gn" class="btn btn-orange">초기화</a>
							</c:if>
						</div>
						</form>
						<!-- //search -->
						<!-- board list -->
						<table class="table table-bordered table-list">
							<caption>관리지부 리스트</caption>
							<colgroup>
								<col width="50"/>
								<col width=""/>
								<col width=""/>
								<col width="90"/>
								<col width=""/>
								<col width="70"/>
							</colgroup>
							<thead>
								<tr>
									<th scope="col">번호</th>
									<th scope="col">그룹</th>
									<th scope="col">지부명</th>
									<th scope="col">개설일자</th>
									<th scope="col">홈페이지 URL</th>
									<th scope="col">바로가기</th>
								</tr>
							</thead>
							<tbody>
<c:choose>
	<c:when test="${!empty selectList}">
		<c:forEach var="list" items="${selectList}" varStatus="status">
		<c:set var="num" value="${paginationInfo.totalRecordCount - (searchVO.pageIndex-1) * searchVO.pageUnit - status.index}"/>
								<tr>
									<td><input type="checkbox" id="id_num${list.index_sq}" value="${list.index_sq}"/><label for="id_num${list.index_sq}">${num}</label></td>
									<td>${list.val1}</td>
									<td><!-- 수정페이지 이동 --><a href="/mgr/accountWrite.gn?index_sq=${list.index_sq}">${list.val2}</a></td>
									<td>${fn:substring(list.val3,0,10)}</td>
									<td>http://${list.val4}.goodneighbors.kr</td>
									<td><a href="http://${list.val4}.goodneighbors.kr" target="_blak" class="btn btn-orange">보기</a></td>
								</tr>
		</c:forEach>
	</c:when>
	<c:otherwise>
								<tr>
									<td colspan="6"> 데이터가 존재하지 않습니다. </td>
								</tr>
	</c:otherwise>
</c:choose>							
							</tbody>
						</table>
						<!-- //board list -->
						<!-- button -->
						<div class="btnarea">
							<div class="fl">
								<button class="btn btn-green" id="btn_excel">엑셀 다운로드</button>
								<button class="btn btn-green" id="btn_del">선택 삭제</button>
							</div>
							<div class="fr">
								<a href="<c:url value="/mgr/accountWrite.gn"/>" class="btn btn-green" id="btn_write">등록</a>
							</div>
						</div>
						<!-- //button -->
						<!-- paging -->
						<div class="dataTables_paginate">
							<ul class="pagination">
								<ui:pagination paginationInfo = "${paginationInfo}" type="image" jsFunction="custom.pagingLink" />
							</ul>
						</div>
						<!-- //paging -->
					</fieldset>
					<!-- //list -->
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
	$("#btn_excel").on("click",function(){
		custom.cus_confirm("엑셀 다운로드를 진행하시겠습니까?", "Message","move","/excelDownload.gn");
	});
	
	$("#btn_del").on("click",function(){
		var chklist = $("[type='checkbox']:checked").map(function(){
			return "'" + $(this).val() + "'";
			}).get().join(",");
				
		$("#id_dindexsq").val(chklist);
		if(chklist != ''){
			custom.cus_confirm("선택한 항목을 삭제하시겠니까?", "Message","submit","/mgr/accountDel.gn");	
		}else{
			custom.cus_alert("삭제할 항목을 선택해주세요.", "Message");
		}
	});
});
</script>
<form id="dfrm" name="dfrm" method="post">
	<input type="hidden" name="index_sq" id="id_dindexsq"/>
</form>	
</body>
</html>