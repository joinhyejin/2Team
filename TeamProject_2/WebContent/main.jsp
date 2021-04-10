<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../css.css">
<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
</head>

<body>

	<table style="width: 90%;">
		<tr>
			<td class="best" align="center" width="95%">주간베스트</td>
		</tr>
	</table>
	<table style="width: 100%;">
		<tr align="center">
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
	<p>
	<table style="width: 100%">
		<tr>
			<td width="5%"></td>
			<td colspan="4" class="best">신상품</td>
		</tr>
	</table>
	<table>
		<tr>
			<!-- 임시 이미지 -->
			<td rowspan="3"><a href="${all[2].con }"><img
					src="img/${all[2].photo }" class="img3Size"></a></td>
			<td id="new" valign="top"><p>${all[2].name }</p></td>
		</tr>

		<tr>
			<td id="new2" valign="top"><p>
					<fmt:formatNumber type="currency">${all[2].price }</fmt:formatNumber>
				</p></td>
		</tr>

		<tr>
			<td id="button3_" valign="top" align="center"><a
				href=${all[2].con } id="button3">상품상세보기</a></td>
		</tr>

	</table>

	<hr>
	<table>
		<tr>
			<td id="page_down" align="center"><i class="fas fa-exclamation"
				id="icon"></i> 반품 배송비, 반품 배송주소 등은 해당 상품 페이지 내 안내를 참고해주세요.</td>
		</tr>
	</table>
</body>
</html>