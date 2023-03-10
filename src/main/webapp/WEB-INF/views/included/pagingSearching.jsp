<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>


<script defer type="text/javascript" src="${contextPath }/js/included/pagingSearching.js"></script>


<!-- 페이징 -->
<div class="paging">
	<ul>
		<li><a
			href="${contextPath }/board/${requestScope.bcategoryVO.catnum}/1/${pagingComponent.searchCriteria.searchType}/${pagingComponent.searchCriteria.searchKeyword}">처음페이지</a>
		</li>
		<!-- 이전페이지 여부에 따라 표현  -->
		<c:if test="${pagingComponent.pageCriteria.prevPage }">
			<li><a
				href="${contextPath }/board/${requestScope.bcategoryVO.catnum}/${pagingComponent.pageCriteria.pagingNumFrom -1}">이전페이지</a>
			</li>
		</c:if>
		<c:forEach var="reqPage"
			begin="${pagingComponent.pageCriteria.pagingNumFrom }"
			end="${pagingComponent.pageCriteria.pagingNumTo }">
			<li><a
				href="${contextPath }/board/${requestScope.bcategoryVO.catnum}/${reqPage}/${pagingComponent.searchCriteria.searchType}/${pagingComponent.searchCriteria.searchKeyword}">${reqPage }</a>
			</li>
		</c:forEach>
		
		<c:if test="${pagingComponent.pageCriteria.nextPage }">
			<li><a
				href="${contextPath }/board/${requestScope.bcategoryVO.catnum}/${pagingComponent.pageCriteria.pagingNumTo+1 }">다음페이지</a>
			</li>
		</c:if>
		<li><a
			href="${contextPath }/board/${requestScope.bcategoryVO.catnum}/${pagingComponent.pageCriteria.endPagingNum}/${pagingComponent.searchCriteria.searchType}/${pagingComponent.searchCriteria.searchKeyword}">끝페이지</a>
		</li>
	</ul>
</div>

<!-- 검색 -->
<div class="search">
	<form action="">
		<select name="searchType" id="searchType">
			<option value="A"
				<c:if test="${pagingComponent.searchCriteria.searchType == 'A'}"> selected="selected" </c:if>>전체</option>
			<option value="TC"
				<c:if test="${pagingComponent.searchCriteria.searchType == 'TC'}"> selected="selected" </c:if>>제목+내용</option>
			<option value="T"
				<c:if test="${pagingComponent.searchCriteria.searchType == 'T'}"> selected="selected" </c:if>>제목</option>
			<option value="C"
				<c:if test="${pagingComponent.searchCriteria.searchType == 'C'}"> selected="selected" </c:if>>내용</option>
			<option value="N"
				<c:if test="${pagingComponent.searchCriteria.searchType == 'N'}"> selected="selected" </c:if>>작성자</option>
		</select>
	</form>
	<input type="text" name="searchKeyword" id="searchKeyword"
		value="${pagingComponent.searchCriteria.searchKeyword}">
	<button type="button" class="btn" id="searchBtn">검색</button>
</div>