<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>::Soldesk Shop::</title>
</head>
<link rel="stylesheet" href="css.css">

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />
<script type="text/javascript">
	function call() {
		alert('장바구니는 구현을 못했습니다ㅠㅠ');
		return false;
	}
	function zzim() {
		alert('진짜 네이버가 아니라서 찜은 못해용^^');
		return false;
	}
</script>
<body>
	<table class="Banner">
		<tr>
			<td class="nbsp"></td>
			<td align="left" class="naver"><a href="https://www.naver.com">Naver</a></td>
			<td align="left" class="naver_shop"><a
				href="https://shopping.naver.com/"><i
					class="fas fa-shopping-basket"></i>네이버쇼핑</a></td>
			<td align="right" class="naver_shop"><a
				href="https://shopping.naver.com/my/keep-stores">찜한 스토어</a></td>
			<td align="right" id="cart_banner"><a onclick="return call();">장바구니</a></td>
			<td class="nbsp"></td>
		</tr>
	</table>

	<table class="Banner_down">
		<tr>
			<td class="nbsp"></td>
			<td id="banner_imgS"><img src="img/솔데스크.png" id="banner_img"></td>
			<td align="left" id="store">믿음과 신뢰가 있는 빠른 스토어입니다.</td>
			<td align="left" colspan="2">| 스토어찜</td>
		</tr>
	</table>

	<table class="Banner2">
		<tr>
			<td class="nbsp"></td>
			<td><a onclick="zzim();" id="button"><i class="fas fa-heart"></i>찜하기</a></td>
			<td align="center"><a href="HC"
				class="r-link text-flat text-flat_v12"> <span
					class="text-flat__label">솔데스크샵</span>
			</a></td>
			<td align="right" id="service">서비스만족 구매만족/문의응답</td>
			<td><span id="button2">우수</span></td>
			<td class="nbsp"></td>
		</tr>
	</table>

	<hr>

	<table class="Banner3">
		<tr>
			<td width="5%"></td>
			<td align="center" width="11%"><a href="AllC" id="all_product">전체상품</a></td>
			<td align="center" width="11%"><a href="PersonC">인신매매</a></td>
			<td align="center" width="11%"><a href="LifeC">생활 소도구</a></td>
			<td align="center" width="11%"><a href="EtcC">기타상품</a></td>
			<td align="center" width="11%"><a href="SellerC">판매자 정보</a></td>
			<td width="40%"></td>
		</tr>
	</table>
	<hr>
	<jsp:include page="${contentPage }"></jsp:include>
</body>

</html>