<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table style="width: 90%;">
		<tr>
			<td class="best" colspan="2">전체상품</td>
			<td id="home" style="text-align: right;"><a href="HC">홈 > </a></td>
			<td id="all" style="text-align: right;"><a href="AllC" id="all2">전체상품(총
					4개) ▼ </a></td>
		</tr>
		<tr>
			<td id="most" colspan="2" align="left"><i class="fas fa-check"></i> 인기도순</td>
			<td align="right" colspan="2"><select>
					<option value="A" selected="selected">5개씩 보기</option>
					<!-- 옵션 기본 선택 -->
					<option value="B">10개씩 보기</option>
					<option value="C">15개씩 보기</option>
					<option value="D">20개씩 보기</option>
			</select></td>
		</tr>
	</table>
	<table style="width: 100%;">
		<tr>
			<c:forEach var="a" items="${all }">
				<td class="img2" align="center"><a href="${a.con }"><img
						style="object-fit: contain; width: 100%;" src="img/${a.photo }"></a>
				</td>
			</c:forEach>
		</tr>

		<tr>
			<c:forEach var="n" items="${all }">
				<td class="best2">${n.name }</td>
			</c:forEach>
		</tr>

		<tr>
			<c:forEach var="p" items="${all }">
				<td class="best3"><fmt:formatNumber type="currency">
					${p.price }</fmt:formatNumber></td>
			</c:forEach>
		</tr>
	</table>

	<table class="page_nus">
		<tr>
			<td id="page_nu"><a href="All" id="page_nu">1</a></td>
		</tr>
	</table>

	<hr>
	<table>
		<tr>
			<td id="page_down"><i class="fas fa-exclamation" id="icon"></i>
				반품 배송비, 반품 배송주소 등은 해당 상품 페이지 내 안내를 참고해주세요.</td>
		</tr>
	</table>
</body>
</html>