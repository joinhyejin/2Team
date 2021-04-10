<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<script type="text/javascript">
	function fnCalCount(type, ths) {
		var $input = $(ths).parents("td").find("input[name='quantity']");
		var tCount = Number($input.val());
		var tEqCount = Number($(ths).parents("tr").find("td.bseq_ea").html());

		if (type == 'p') {
			if (tCount < tEqCount)
				$input.val(Number(tCount) + 1);
		} else {
			if (tCount > 0)
				$input.val(Number(tCount) - 1);
		}
	}
	function count() {
		let quantity = document.getElementById('quantity').value;
		let price = document.getElementById('price').value;

		let coupon = document.getElementById('coupon');

		if (coupon.checked) {
			price = 0.9 * price;
		}

		let total = quantity * price;
		document.getElementById('total').value = total;
	}
</script>
<body>
	<table style="width: 90%;">
		<tr>
			<td class="best" colspan="2">인신매매</td>
			<td id="home" style="text-align: right;"><a href="HC">홈 > </a></td>
			<td id="all" style="text-align: right;"><a href="PersonC"
				id="all2">인신매매 ▼</a></td>
		</tr>

	</table>
	<p>
	<form action="BuyC">
		<table style="width: 70%;" class="intro">
			<tr>
				<td rowspan="10" align="center" width="60%"><img
					src="img/${all[2].photo }"
					style="object-fit: contain; width: 100%;">
					<input type="hidden" value="${all[2].photo }" name="photo" id="photo">
					</td>
				<td colspan="3" align="center" id="Pname"><input id="name"
					name="name" type="hidden" value="${all[2].name }">${all[2].name }</td>
			</tr>
			<tr>
				<td colspan="3" align="center" id="Pprice"><input type="hidden"
					value="${all[2].price }" id="price" name="price"> <fmt:formatNumber
						type="currency">${all[2].price }</fmt:formatNumber></td>
			</tr>
			<tr>
				<td colspan="3" align="center">한정 판매</td>
			</tr>
			<tr style="text-align: center;">
				<td>수량</td>
				<td class="bseq_ea">5</td>
				<td>
					<button type="button" onclick="fnCalCount('p',this); count();">+</button>
					<input type="text" id="quantity" name="quantity" value="0"
					readonly="readonly" style="text-align: center;" />
					<button type="button" onclick="fnCalCount('m', this); count();">-</button>
				</td>
			</tr>
			<tr>
				<td colspan="3" align="center">쿠폰 적용 여부 <input type="checkbox"
					name="coupon" id="coupon" value="coupon" onclick="count();">
				</td>
			</tr>
			<tr>
				<td colspan="3" align="center" id="Pcoupon">총 <input
					type="number" readonly="readonly" name="total" id="total"
					class="total" value="0"> 원
				</td>
			</tr>

			<tr>
				<td colspan="3" class="Pwrite">무이자할부: 카드</td>
			</tr>
			<tr>
				<td colspan="3" class="Pwrite">원산지: 한국</td>
			</tr>
			<tr>
				<td colspan="2" class="Pwrite">택배배송: 지역에 따라 다름</td>
				<td id="Pwrite2">(주문시 결제)</td>
			</tr>

			<tr>
				<td align="center" colspan="3"><button id="Pbuy">
						<i class="fas fa-credit-card"></i> &nbsp; 구매하기
					</button> <a onclick="return call();" id="Pcart"><i
						class="fas fa-cart-arrow-down"></i> &nbsp; 장바구니</a></td>
			</tr>

		</table>
	</form>
	<p>
		<!-- 상품정보테이블 -->
	<table>
		<tr>
			<td class="nbsp2"></td>
		</tr>
	</table>


	<table style="width: 70%;">
		<tr>
			<td id="detail">상세정보</td>
		</tr>

		<tr>
			<td align="center">
				<table>
					<tr>
						<td id="waring"><i class="fas fa-exclamation-triangle"
							id="waring"></i>직거래 유도 주의 안내</td>
					</tr>
					<tr>
						<td id="W_write">스마트스토어를 통해 톡톡 / 상품문의 등을 활용하여 <span
							id="W_span">현금결제를 유도하는 경우 사기의 가능성이 있으니 절대 결제하지 마시고 </span>네이버페이
							고객센터로 문의 주시기 바랍니다.
						</td>
					</tr>
				</table>
			</td>
		</tr>


		<tr>
			<td>
				<table style="width: 100%;" class="t">
					<tr>
						<td colspan="4" id="table_a">상품정보</td>
					</tr>
					<tr>
						<td>상품번호</td>
						<td>802802</td>
						<td>상품상태</td>
						<td>신상품</td>
					</tr>

					<tr>
						<td>제조사</td>
						<td>솔데스크</td>
						<td>브랜드</td>
						<td>솔데스크</td>
					</tr>

					<tr>
						<td>모델명</td>
						<td>솔데스크</td>
						<td>원산지</td>
						<td>한국</td>
					</tr>
				</table>

				<table style="width: 100%;" class="t">
					<tr>
						<td colspan="4" id="Btable"></td>
					</tr>
					<tr>
						<td>보관방법</td>
						<td>실온보관</td>
						<td>높이</td>
						<td>cm</td>
					</tr>


					<tr>
						<td>무게</td>
						<td>kg</td>
						<td>판매형태</td>
						<td>개별&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
					</tr>
				</table>
			</td>
		</tr>


		<tr>
			<td>
				<table style="width: 100%;" class="t">
					<tr>
						<td colspan="4" id="Btable"></td>
					</tr>
					<tr>
						<td>영수증 발급</td>
						<td>신용카드전표, 현금영수증발급</td>
					</tr>
					<tr>
						<td>A/S 안내</td>
						<td>(솔)02-6901-7077 <br> 평일 오전 9시부터 오후 5시까지
							(솔)02-6901-7077로 상담가능합니다.<br> 네이버 톡톡 스토어팜으로 문의주시면 빠른 답변
							가능합니다.
						</td>
					</tr>
				</table>
			</td>
		</tr>


		<!-- 상품 소개 테이블 -->
		<tr>
			<td>
				<table style="width: 100%;" class="t">
					<tr>
						<td colspan="4" id="table_a">상품소개</td>
					</tr>
					<tr>
						<td>상세 정보</td>
					</tr>
				</table>
			</td>
		</tr>

		<tr>
			<td>
				<table>
					<tr>
						<td><img style="object-fit: contain; width: 100%;"
							src="${pageContext.request.contextPath}\img/${all[2].info}"></td>
					</tr>
					<tr>

					</tr>
				</table>
			</td>
		</tr>

	</table>
	<table>
		<tr>
			<td class="nbsp2"></td>
		</tr>
	</table>

	<a id="top" href="#">▲</a>


	<table>
		<tr>
			<td id="page_down" align="center"><i class="fas fa-exclamation"
				id="icon"></i> 반품 배송비, 반품 배송주소 등은 해당 상품 페이지 내 안내를 참고해주세요.</td>
		</tr>
	</table>
</body>
</html>