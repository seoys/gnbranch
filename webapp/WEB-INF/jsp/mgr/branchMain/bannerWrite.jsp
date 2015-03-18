<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
	<%@ include file="/mgr/include/inc_header.jsp" %>
			<!-- pageContents -->
			<div id="page-wrapper">
				<!-- pageTitle -->
				<%@ include file="/mgr/include/inc_pageTitle.jsp" %>

				<div class="contents">
					<!-- admin page contents start -->
					<!-- write -->
					<fieldset>
						<legend>메인페이지 이벤트 배너 등록</legend>
						<form name="frm" id="frm" method="post" action="/mgr/bannerProc.gn" onSubmit="return false;" enctype="multipart/form-data">
						<!-- board write -->
						<table class="table table-bordered table-write">
							<caption>메인페이지 이벤트 배너 등록</caption>
							<colgroup>
								<col width="200"/>
								<col width=""/>
							</colgroup>
							<tbody>
								<!-- 마스터관리자 -->
								<tr>
									<th scope="row">적용그룹</th>
									<td>
										<select name="group_sq" id="sel_groupsq" class="form-control">
											<c:forEach var="list" items="${resultList}" varStatus="status">
                                            	<c:set var="selected" value=""/>
                                            	<c:if test="${list.group_sq == resultMap['GROUP_SQ'] }">
                                            		<c:set var="selected" value="selected=\"selected\""/>
                                            	</c:if>
                                                <option value="${list.group_sq}" ${selected}>${list.group_nm}</option>
                                            </c:forEach>
										</select>
									</td>
								</tr>
								<!-- //마스터관리자 -->
								<!-- 지부관리자 -->
								<tr>
									<th scope="row">노출순서</th>
									<td>
										<select name="orderby_cnt" id="txt_orderbycnt" class="form-control">
											<c:choose>
												<c:when test="${sessionVO.group_sq == 1}">
													<option value="1">1</option>	
												</c:when>
												<c:otherwise>
													<option value="2" <c:if test="${resultMap['ORDERBY_CNT'] == '2'}">selected="selected"</c:if>>2</option>
													<option value="3" <c:if test="${resultMap['ORDERBY_CNT'] == '3'}">selected="selected"</c:if>>3</option>
													<option value="4" <c:if test="${resultMap['ORDERBY_CNT'] == '4'}">selected="selected"</c:if>>4</option>
												</c:otherwise>
											</c:choose>
										</select>
									</td>
									
								</tr>
								<!-- //지부관리자 -->
								
								<!-- 공통부분 -->
								<tr>
									<th scope="row">배너명</th>
									<td>
										<input type="text" name="banner_nm" id="txt_bannernm" value="${resultMap['BANNER_NM']}" class="form-control col-unit9">
									
									</td>
								</tr>
								<tr>
									<th scope="row">배너 링크 URL</th>
									<td><input type="text" name="banner_url" id="txt_bannerurl" value="${resultMap['BANNER_URL']}" class="form-control col-unit9"></td><!-- 새창연결 옵션 필요없는지? -->
								</tr>
								<tr>
									<th scope="row">배너 노출기간</th>
									<td><label for="txt_startdt">시작일</label> : <input type="text" name="start_dt" id="txt_startdt" value="${fn:substring(resultMap['START_DT'],0,10)}" class="form-control" readyOnly/> ~ <label for="txt_enddt">종료일</label> : <input type="text" name="end_dt" id="txt_enddt" value="${fn:substring(resultMap['END_DT'],0,10)}"  class="form-control" readyOnly/></td>
								</tr>
								<tr>
									<th scope="row">배너 이미지</th>
									<td>
										<!-- 메인빅배너 [그룹구분] 시도본부 / 복지관 / 해외지부 -->	<span class="s_text">이미지 형식: JPG / GIF, 배너사이즈: 998 * 309 / 3MB 이하</span>
										<!-- 메인빅배너 [그룹구분] 좋은마음센터 -->						<span class="s_text">이미지 형식: JPG / GIF, 배너사이즈: 508 * 358 / 3MB 이하</span>
										<!-- 메인빅배너 [그룹구분] 아동권리지원센터 -->				<span class="s_text">이미지 형식: JPG / GIF, 배너사이즈: 508 * 358 / 3MB 이하</span>
										<!-- 메인빅배너 [그룹구분] 아동보호전문기관_ 법인 -->		<span class="s_text">이미지 형식: JPG / GIF, 배너사이즈: 658 * 285 / 3MB 이하</span>
										<!-- 메인빅배너 [그룹구분] 아동보호전문기관_ 위탁 -->		<span class="s_text">이미지 형식: JPG / GIF, 배너사이즈: 658 * 285 / 3MB 이하</span>
										<!-- 패밀리배너 : 마스터관리자 업로드 -->							<span class="s_text">이미지 형식: JPG / GIF, 배너사이즈: 114 * 41 / 3MB 이하</span>
										<!-- 패밀리배너 : 지부관리자 업로드 -->							<span class="s_text">이미지 형식: JPG / GIF, 배너사이즈: 90 * 39 / 3MB 이하</span>
										<input type="file" name="file[]" id="txt_file1">
										<!-- 수정페이지일 경우 -->
										<c:if test="${!empty resultMap['FNAME_NM'] }">
										<p><img src="/cmm/fms/getImage.gn?atchFileId=${resultMap['BANNER_SQ']}&fileKeyCd=BANNER" alt="" class="img-logo" style="width:100px;height:100px;"/> <span class="s_text">${resultMap['FNAME_NM'] }</span></p>
										</c:if>
									</td>
								</tr>
								<tr>
									<th scope="row">노출여부</th>
									<td>
										<c:set var="useyn1" value="checked='checked'"/>
										<c:choose>
											<c:when test="${ resultMap['USE_FL'] == 'Y'}">
												<c:set var="useyn1" value="checked='checked'"/>
											</c:when>
											<c:when test="${ resultMap['USE_FL'] == 'N'}">
												<c:set var="useyn2" value="checked='checked'"/>
											</c:when>
										</c:choose>
										<label for="rad_use1fl1" class="radio-inline"><input type="radio" name="use_fl" id="rad_use1fl1" value="Y" ${useyn1}/> Yes</label>
										<label for="rad_use1fl2" class="radio-inline"><input type="radio" name="use_fl" id="rad_use1fl2" value="N" ${useyn2}/> No</label>
									</td>
								</tr>
								<!-- //공통부분 -->
							</tbody>
						</table>
						<input type="hidden" name="kind_fl" value="${kind}" />
						<input type="hidden" name="banner_sq" value="${mstBannerTdVO.banner_sq}" />
						</form>
						<!-- //board write -->
						<!-- button -->
						<div class="btnarea">
							<div class="fl">
								<a href="/mgr/banner${kind}List.gn" class="btn btn-green">목록</a>
							</div>
							<div class="fr">
								
								<c:choose>
	                           		<c:when test="${mstBannerTdVO.banner_sq > 0}">
	                           			<!-- 등록페이지 -->
	                               		<button class="btn btn-green" id="btn_submit">수정</button>
	                               		<button class="btn btn-green" id="btn_del">삭제</button>	
	                           		</c:when>
	                           		<c:otherwise>
	                           			<button class="btn btn-green" id="btn_submit">등록</button>
	                               		<button class="btn btn-green" id="btn_cancel">취소</button>
	                           		</c:otherwise>	
	                           	</c:choose>
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
	
	 <%@ include file="/mgr/include/inc_footer.jsp" %>
	<script type="text/javascript" src="/js/bower_components/jquery-validation/dist/jquery.validate.min.js"></script>
    <script type="text/javascript" src="/js/msg.js"></script>
    <script type="text/javascript" src="/js/bower_components/jquery.inputmask/dist/inputmask/jquery.inputmask.min.js"></script>
    <script type="text/javascript">
    	$( "#txt_startdt, #txt_enddt" ).datepicker({"dateFormat":"yy-mm-dd"});
    	
    	$("#frm").validate({
    		debug: true,
	        success: "valid",
	        rules: {
	        	banner_nm: {required : true},
	        	banner_url: {required : true},
	        	start_dt: {required : true},
	        	end_dt: {required : true}
	        }
    		/* ,submitHandler: function(form) {
	            //log("ok");
	            //form.submit();
	        } */
	    }); 
    	
    	/* 등록 */
        $("#btn_submit").on("click",function(){
            /* if($("#frm").valid()){
            	document.frm.submit();
            } */
            
            document.frm.submit();
        });
    	
        /* 취소 */
        $("#btn_cancel").on("click",function(){
            custom.cus_confirm("입력[수정]을 취소하시겠습니까?", "Message","move","/mgr/bannerList.gn");
        });
        
        /* 삭제 */
        $("#btn_del").on("click",function(){
        	 custom.cus_confirm("삭제하시겠습니까?", "Message","move","/mgr/bannerDel.gn?index_sq=${accountVO.index_sq}");
        });
    </script>
</body>
</html>