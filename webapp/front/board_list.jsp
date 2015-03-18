<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:include page="/front/include/inc_header.jsp" flush="false" />
	<!-- CONTENTS BODY -->
	<jsp:include page="/front/include/inc_path.jsp" flush="false" />
	<div id="container">
		<div class="contents_wrap">
			<jsp:include page="/front/include/inc_lnb.jsp" flush="false" />
			<!-- CONTENTS -->
			<div class="contentsBox">
				<h3>투뎁스메뉴명</h3>
				<p class="subdiscription">서브타이틀 노출영역</p>
				<div class="contents board list"><!-- 리스트형식 페이지에 검색이 있으면 "list" class 추가 -->
					<!-- search area -->
					<div class="searchArea">
						<div><input type="text" name="" id="" title="게시판 검색어 입력"/><button>게시글검색</button></div>
					</div>
					<!-- //search area -->
					<!-- board list : 일반테이블리스트 1페이지 게시글 10개 -->
					<!-- case1 : 일반게시판 -->
					<table class="table table-bordered table-list">
						<caption>게시판 리스트</caption>
						<colgroup>
							<col width="7%"/>
							<col width=""/>
							<col width="14%"/>
							<col width="14%"/>
							<col width="9%"/>
						</colgroup>
						<thead>
							<tr>
								<th scope="col">번호</th>
								<th scope="col">제목</th>
								<th scope="col">등록일</th>
								<th scope="col">작성자</th>
								<th scope="col">조회</th>
							</tr>
						</thead>
						<tbody>
							<!-- 게시판 반복시작 -->
							<tr>
								<td>10</td>
								<td class="textL"><a href="#">[말머리] 게시글 제목이 나오는 곳</a><img src="/images/front/common/ico_new.gif" alt="새글" class="img_ico"/></td>
								<td>2014/12/12</td>
								<td>굿네이버스</td>
								<td>99999</td>
							</tr>
							<!-- //게시판 반복시작 -->
							<tr>
								<td>9</td>
								<td class="textL"><a href="#">말머리 없을 수도 있음 게시글 제목이 나오는 곳</a></td>
								<td>2014/12/12</td>
								<td>굿네이버스</td>
								<td>99999</td>
							</tr>
							<tr>
								<td>8</td>
								<td class="textL"><a href="#">게시글 제목이 나오는 곳</a></td>
								<td>2014/12/12</td>
								<td>굿네이버스</td>
								<td>99999</td>
							</tr>
						</tbody>
					</table>
					<!-- case2 : 사용기간 있는 경우 -->
					<table class="table table-bordered table-list">
						<caption>게시판 리스트</caption>
						<colgroup>
							<col width="7%"/>
							<col width=""/>
							<col width="22%"/>
							<col width="14%"/>
							<col width="9%"/>
						</colgroup>
						<thead>
							<tr>
								<th scope="col">번호</th>
								<th scope="col">제목</th>
								<th scope="col">기간</th>
								<th scope="col">작성자</th>
								<th scope="col">조회</th>
							</tr>
						</thead>
						<tbody>
							<!-- 게시판 반복시작 -->
							<tr>
								<td>10</td>
								<td class="textL"><a href="#">게시글 제목이 나오는 곳</a></td>
								<td>2014/12/12~2014/12/12</td>
								<td>굿네이버스</td>
								<td>99999</td>
							</tr>
							<!-- //게시판 반복시작 -->
							<tr>
								<td>9</td>
								<td class="textL"><a href="#">게시글 제목이 나오는 곳</a></td>
								<td>2014/12/12~2014/12/12</td>
								<td>굿네이버스</td>
								<td>99999</td>
							</tr>
							<tr>
								<td>8</td>
								<td class="textL"><a href="#">게시글 제목이 나오는 곳</a></td>
								<td>2014/12/12~2014/12/12</td>
								<td>굿네이버스</td>
								<td>99999</td>
							</tr>
						</tbody>
					</table>
					<!-- //board list -->
					<jsp:include page="/front/include/inc_page.jsp" flush="false" />
				</div>
			</div>
			<!-- //CONTENTS -->
		</div>
	</div>
	<!-- //CONTENTS BODY -->
	
	<jsp:include page="/front/include/inc_footer.jsp" flush="false" />
</body>
</html>