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
                        <legend>관리지부 등록</legend>
                        <!-- board write -->
                        <form name="frm" id="frm" method="post" action="/mgr/accountProc.gn" onSubmit="return false;" enctype="multipart/form-data">
                        
                        <table class="table table-bordered table-write">
                            <caption>관리지부 등록</caption>
                            <colgroup>
                                <col width="200"/>
                                <col width=""/>
                            </colgroup>
                            <tbody>
                                <tr>
                                    <th scope="row">그룹</th>
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
                                <tr>
                                    <th scope="row">지부명</th>
                                    <td>
                                        <c:choose>
                                            <c:when test="${!empty resultMap}">
                                                ${resultMap['BRANCH_NM']}
                                            </c:when>
                                            <c:otherwise>
                                                <input type="text" class="form-control" name="branch_nm" id="txt_branchnm" value="${resultMap['BRANCH_NM']}">
                                                <button class="btn btn-form" id="btn_accountCheck">중복확인</button>
                                            </c:otherwise>
                                        </c:choose>
                                        
                                    </td>
                                </tr>
                                <tr>
                                    <th scope="row">지부 홈페이지 URL</th>
                                    <td>http:// <input type="text" class="form-control" name="homepage_url" id="txt_url" value="${resultMap['HOMEPAGE_URL'] }">.goodneighbors.kr</td>
                                </tr>
                                <tr>
                                    <th scope="row">ID / PASS</th>
                                    <td>
                                        <label for="txt_userid">ID</label> : admin <input type="text" name="user_id" id="txt_userid" value="${resultMap['USER_ID'] }" class="form-control col-unit4" placeholder="영문, 숫자 혼합 5~20자리"/>
                                        <label for="txt_userpwd" class="mgl15">PASS</label> : <input type="password" name="user_pwd" id="txt_userpwd"  value="${resultMap['USER_PWD'] }" class="form-control col-unit4" placeholder="영문, 숫자 혼합 8~20자리"/> <span class="s_text"></span></td>
                                </tr>
                                <tr>
                                    <th scope="row">지부 담당자 명</th>
                                    <td><input type="text" name="damdang_nm" id="txt_damdangnm" value="${resultMap['DAMDANG_NM'] }" class="form-control"/></td>
                                </tr>
                                <tr>
                                    <th scope="row">지부 주소</th>
                                    <td>
                                        <p><input type="text" name="post_nm" id="txt_postnm" class="form-control col-unit3" value="${resultMap['POST_NM'] }"><button class="btn btn-form" id="btn_searchzip">우편번호 검색</button></p>
                                        <input type="text" name="addr1_nm" id="txt_addr1nm" value="${resultMap['ADDR1_NM'] }" class="form-control mt5 col-unit10">
                                        <input type="text" name="addr2_nm" id="txt_addr2nm" value="${resultMap['ADDR2_NM'] }"  class="form-control mt5 col-unit10">
                                    </td>
                                </tr>
                                <tr>
                                    <th scope="row">지부 주소 위도 / 경도</th>
                                    <td>
                                        <label for="txt_latnm">위도</label> : <input type="text" name="lat_nm" id="txt_latnm" value="${resultMap['LAT_NM'] }"  class="form-control"/>
                                        <label for="txt_lonnm">경도</label> : <input type="text" name="lon_nm" id="txt_lonnm" value="${resultMap['LON_NM'] }"  class="form-control"/>
                                        <button class="btn btn-default" onClick="window.open('http://www.iegate.net/maps/rgeogoogle.php','','');return false;">위도경도 검색</button>
                                        </td>
                                </tr>
                                <tr>
                                    <th scope="row">지부 연락처</th>
                                    <td><select name="phone1_nm" id="sel_phone1nm" class="form-control col-unit2" title="연락처 국번 선택">
                                        </select> - 
                                        <input type="text" name="phone2_nm" id="txt_phone2nm" value="${resultMap['PHONE2_NM'] }" class="form-control col-unit2" title="연락처 앞자리 입력"/> - 
                                        <input type="text" name="phone3_nm" id="txt_phone3nm" value="${resultMap['PHONE3_NM'] }" class="form-control col-unit2" title="연락처 뒷자리 입력"/></td>
                                </tr>
                                <tr>
                                    <th scope="col">지부 팩스번호</th>
                                    <td><select name="fax1_nm" id="sel_fax1nm" class="form-control col-unit2" title="팩스번호 국번 선택">
                                        </select> - 
                                        <input type="text" name="fax2_nm" id="txt_fax2nm" value="${resultMap['FAX2_NM'] }" class="form-control col-unit2" title="팩스번호 앞자리 입력"/> - 
                                        <input type="text" name="fax3_nm" id="txt_fax3nm" value="${resultMap['FAX3_NM'] }" class="form-control col-unit2" title="팩스번호 뒷자리 입력"/></td>
                                </tr>
                                <tr>
                                    <th scope="col">교통편</th>
                                    <td><textarea name="traffic_nm" id="txt_trafficnm" rows="5"  class="form-control col-unit12">${resultMap['TRAFFIC_NM'] }</textarea></td>
                                </tr>
                                <tr>
                                    <th scope="row">지부 이메일</th>
                                    <td>
                                        <input type="text" name="email_nm" id="txt_emailnm" value="${resultMap['EMAIL_NM'] }" class="form-control col-unit5">
                                    </td>
                                </tr>
                                <tr>
                                    <th scope="row">지부 로고 이미지</th>
                                    <td>
                                    	<input type="file" name="file[]" id="txt_file1"><span class="s_text">(로고 사이즈:  000 * 00)</span>
                                        <!-- 수정페이지일 경우 -->
                                        <c:if test="${!empty resultMap['FNAME_NM'] }">
                                        <p><img src="/cmm/fms/getImage.gn?atchFileId=${resultMap['INDEX_SQ']}&fileKeyCd=FILEUPLOAD" alt="지부로고" class="img-logo" style="width:70px;height:70px;"/> ${resultMap['FNAME_NM'] }<span class="s_text"></span></p>
                                        </c:if>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                        <input type="hidden" name=index_sq id="hid_indexSq" value="${accountVO.index_sq}"/>
                        </form>
                        <!-- //board write -->
                        <!-- button -->
                        <div class="btnarea">
                            <div class="fl">
                                <a href="accountList.gn" class="btn btn-green">목록</a>
                            </div>
                            <div class="fr">
                            	<c:choose>
                            		<c:when test="${!empty accountVO.index_sq}">
                            			<!-- 등록페이지 -->
                                		<button class="btn btn-green" id="btn_submit">수정</button>
                                		<button class="btn btn-green" id="btn_del">삭제</button>	
                            		</c:when>
                            		<c:otherwise>
                            			<button class="btn btn-green" id="btn_submit">등록</button>
                                		<button class="btn btn-green" id="btn_cancel">취소</button>
                            		</c:otherwise>	
                            	</c:choose>
                            	
                                
                                <!-- 수정페이지 -->
                                <!-- <button class="btn btn-green">수정</button>
                                <button class="btn btn-green">삭제</button> -->
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
    <script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
    <script type="text/javascript" src="/js/bower_components/jquery-validation/dist/jquery.validate.min.js"></script>
    <script type="text/javascript" src="/js/msg.js"></script>
    <script type="text/javascript" src="/js/bower_components/jquery.inputmask/dist/inputmask/jquery.inputmask.min.js"></script>
    <script type="text/javascript">
        $.extend($.inputmask.defaults.definitions, {
            '#': {
                validator: "[A-Za-z\u0410-\u044F\u0401\u04510-9]",
                cardinality: 1
            }
        });
        
       /*  $("#frm").validate({
            success: "valid",
            rules: {
                email_nm: {required : true}
            },
            submitHandler: function(form) {
                log("ok");
                //form.submit();
            }
        }); */
        
        $(document).ready(function(){
        	
            var phoneList = selInfo.phone();
            /* 연락처/팩스번호 생성 */
            $.each(phoneList,function(i,v){
            	if($.trim("${resultMap['PHONE1_NM']}") == $.trim(i)){
            		$("#sel_phone1nm").append("<option value='" + i + "' selected='selected'>" + i + "(" + v + ")</option>");
            	}else{
            		$("#sel_phone1nm").append("<option value='" + i + "'>" + i + "(" + v + ")</option>");	
            	}
            	
            });
            $.each(phoneList,function(i,v){
            	if($.trim("${resultMap['FAX1_NM']}") == $.trim(i)){
            		$("#sel_fax1nm").append("<option value='" + i + "' selected='selected'>" + i + "(" +v + ")</option>");
            	}else{
            		$("#sel_fax1nm").append("<option value='" + i + "'>" + i + "(" +v + ")</option>");	
            	}
            	
            });
            
            /* mask 생성 */
            $("#txt_phone2nm, #txt_phone3nm, #txt_fax2nm, #txt_fax3nm").inputmask({mask:"9999",placeholder: ""});
            $("#txt_userid, #txt_userpwd").inputmask({mask:"#",repeat: 20,placeholder: ""});
             
            /* 지부명 중복체크 */          
            $("#btn_accountCheck").on("click",function(){
                var send = "/mgr/mgrCheck.gn";
                var $txt_branchnm = $("#txt_branchnm");
                var pars = $("#txt_branchnm").serialize();
                
                if($.trim($txt_branchnm.val()) != ""){
                    $.post(send,pars,function(xdata){
                        if(xdata == 0){
                            custom.cus_confirm("입력하신 지부명은 사용 가능합니다.<br/>사용하시겠습니까?", "Success","hidden","txt_branchnm");
                        }else{
                            custom.cus_alert("지부명이 중복입니다.", "Error");
                        }
                    }); 
                }else{
                    custom.cus_alert("지부명을 입력해 주세요.", "Error");
                }

            });
            
            
            /* 등록 */
            $("#btn_submit").on("click",function(){
                //$("#frm").valid();
                document.frm.submit();
            });
            
            /* 취소 */
            $("#btn_cancel").on("click",function(){
                custom.cus_confirm("입력[수정]을 취소하시겠습니까?", "Message","move","/mgr/accountList.gn");
            });
            
            /* 삭제 */
            $("#btn_del").on("click",function(){
            	 custom.cus_confirm("삭제하시겠습니까?", "Message","move","/mgr/accountDel.gn?index_sq=${accountVO.index_sq}");
            });
            
            /* 우편번호검색  */
            $("#btn_searchzip").on("click",function(){
            	new daum.Postcode({
                    oncomplete: function(data) {
                    	//log(data);
	                    $("#txt_postnm").val(data.postcode);
	                    $("#txt_addr1nm").val(data.address);
	                    $("#txt_addr2nm").focus();
                    }
                }).open();
            });
        });
    </script>
</body>
</html>