<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<%@ page import="java.sql.*" %>
<%@ page import="DB.DBconnect" %>

<%
	String sql = "select max(custno) from member_tbl_02";
	
	Connection conn = DBconnect.getConnection();
	PreparedStatement ps = conn.prepareStatement(sql);
	ResultSet rs = ps.executeQuery();
	rs.next();
	
	int num = rs.getInt(1) + 1;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/style.css">
<title>Insert title here</title>
<script type = "text/javascript">
	function checkValue() {
		if(!document.data.custname.value) {
			alert("회원성명이 입력되지 않았습니다.");
			data.custname.focus();
			return false;
		} else if(!document.data.phone.value) {
			alert("전화번호가 입력되지 않았습니다.");
			data.phone.focus();
			return false;
		} else if(!document.data.address.value) {
			alert("주소가 입력되지 않았습니다.");
			data.address.focus();
			return false;
		} else if(!document.data.joindate.value) {
			alert("가입일자가 입력되지 않았습니다.");
			data.joindate.focus();
			return false;
		} else if(!document.data.grade.value) {
			alert("고객등급이 입력되지 않았습니다.");
			data.grade.focus();
			return false;
		} else if(!document.data.city.value) {
			alert("도시코드가 입력되지 않았습니다.");
			data.city.focus();
			return false;
		}
		alert("회원정보가 등록되었습니다.");
		return true;
	}

</script>
</head>
<body>
<header>
	<jsp:include page="layout/header.jsp"></jsp:include>
</header>

<nav>
	<jsp:include page="layout/nav.jsp"></jsp:include>
</nav>

<section class="section">

<form name="data" action="join_p.jsp" method="post" onsubmit="return checkValue()">
<h2>홈쇼핑 회원 등록</h2>
	<table class="table_line">
		<tr>
			<th>회원번호(자동발생	)</th>
			<td><input type="text" name="custno" value="<%=num%>" readonly></td>
		</tr>
		<tr>
			<th>회원성명</th>
			<td><input type="text" name="custname"></td>
		</tr>
		<tr>
			<th>회원전화</th>
			<td><input type="text" name="phone"></td>
		</tr>
		<tr>
			<th>회원주소</th>
			<td><input type="text" name="address"></td>
		</tr>
		<tr>
			<th>가입일자</th>
			<td><input type="text" name="joindate"></td>
		</tr>
		<tr>
			<th>고객등급[A:VIP, B:일반, C:직원]</th>
			<td><input type="text" name="grade"></td>
		</tr>
		<tr>
			<th>도시코드</th>
			<td><input type="text" name="city"></td>
		</tr>
		<tr class="center">
			<td colspan="2">
				<input type="submit" value="등록">
				<input type="button" value="취소" onclick = "location.href='join.jsp'"> <!-- "location.href = 는 현재 브라우저에 연결페이지 로딩 -->
				<input type="button" value="조회" onclick = "location.href='member_list.jsp'">
			</td>
		</tr>
	</table>
</form>
</section>

<footer>
	<jsp:include page="layout/footer.jsp"></jsp:include>
</footer>
</body>
</html>
