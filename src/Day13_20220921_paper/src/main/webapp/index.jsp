<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
	tr{
		height: 50px;
	}
	th{
		font-size: large;
	}
	td{
		padding: 5px;
	}
	table{
		background-color: gray;
		border:thin;
		border-color: green;
	}
	

</style>
<!-- 방법1. 직접 다운로드, src=""는 외부로 import해준다. 
기능을 사용하려면 반드시 js 밑으로 실행할 함수, 예제들을 넣어야 한다. -->
<script src="./js/jquery-3.6.1.min.js"></script>


<!-- 방법2. CDN 방식, 네트워크로 직접 접근해서 다운로드 받음.(인터넷 연결 필요) 
<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
-->
<script type="text/javascript">

	

	function onClick(){
				
		
		alert();
		
	}

</SCRIPT>
</script>
</head>
<body>

	<center>
	<div style="padding-top: 150px;">
	<hr width="700">
	<form action="" method="post">
	<section>간단한 회원 정보 입력 양식</section>
	<table border-color="green" border="1" width="680">
		<tr>
			<th>이름</th>
			<td><input type="text" formmethod="post" size="28"></td>
		</tr>
		<tr>
			<th>암호</th>
			<td><input type="password" formmethod="post" size="28"></td>
		</tr>
		<tr>
			<th>전화번호</th>
			<td>
			<input type="tel" formmethod="post" size="5">
			<label for=""> - </label>
			<input type="tel" formmethod="post" size="5">
			<label for=""> - </label>
			<input type="tel" formmethod="post" size="5"></td>
		</tr>
		<tr>
			<th>직업</th>
			<td>
			<select>
				<option>학생</option>
				<option>직장</option>
				<option>주부</option>
			</select>
			</td>
		</tr>
		<tr>
			<th>성별</th>
			<td>
			
			<div>
			  <input type="radio" value="남" id="inlineRadio1" name="gender">
			  <label for="inlineRadio1">남</label>
			
			  <input type="radio" value="여" id="inlineRadio2" name="gender">
			  <label for="inlineRadio2">여</label>
			</div>
			
		</tr>
		<tr>
			<th>취미</th>
			<td>
			<div class="form-check form-check-inline">
			  <input type="checkbox">
			  <label class="" for="inlineRadio1">바둑</label>
			
			  <input type="checkbox">
			  <label class="" for="inlineRadio1">게임</label>
			
			  <input type="checkbox">
			  <label class="" for="inlineRadio1">낚시</label>
			
			  <input type="checkbox">
			  <label class="" for="inlineRadio1">독서</label>
			</div>
			</td>
		</tr>
		<tr>
			<th>자기 소개하는 글</th>
			<td><textarea name="title" rows="5" cols="70" class="" >자기를 소개하는 글을 쓰세요.</textarea></td>
		</tr>
		<tr>
			<th colspan="2">
			<label></label>
			<input type="submit" onmousedown="onClick()" value="등록하기" >
			<input type="reset" class="" value="취소하기">			 
			</th>
		</tr>
	</table>
	</form>
	</div>
	
	</center>
</body>
</html>