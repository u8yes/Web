<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>



<style>



</style>

</head>
<body>
	<div>
	<form>
	<table border-color="green" border="1" width="700">
		<tr>
			<th>이름</th>
			<td><input type="text" formmethod="post"></td>
		</tr>
		<tr>
			<th>암호</th>
			<td><input type="password" formmethod="post"></td>
		</tr>
		<tr>
			<th>전화번호</th>
			<td><input type="tel" formmethod="post">
			<label for=""> - </label>
			<input type="tel" formmethod="post">
			<label for=""> - </label>
			<input type="tel" formmethod="post"></td>
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
			  <input type="radio" value="남성" id="inlineRadio1" name="gender">
			  <label for="inlineRadio1">남성</label>
			
			  <input type="radio" value="여성" id="inlineRadio2" name="gender">
			  <label for="inlineRadio2">여성</label>
			</div>
			
		</tr>
		<tr>
			<th>취미</th>
			<td>
			<div class="form-check form-check-inline">
			  <input type="checkbox">
			  <label class="form-check-label" for="inlineRadio1">바둑</label>
			
			  <input type="checkbox">
			  <label class="form-check-label" for="inlineRadio1">게임</label>
			
			  <input type="checkbox">
			  <label class="form-check-label" for="inlineRadio1">낚시</label>
			
			  <input type="checkbox">
			  <label class="form-check-label" for="inlineRadio1">독서</label>
			</div>
			</td>
		</tr>
		<tr>
			<th>자기 소개하는 글</th>
			<td><input type="text" formmethod="post" value="자기를 소개하는 글을 쓰세요."></td>
		</tr>
	</table>
	</form>
	</div>
	
	
	<div>
		<label></label>
		<div class="col-sm-5 d-flex justify-content-around">
		<input type="submit" class="btn btn-secondary" value="등록">
		<input type="reset" class="btn btn-dark" value="취소" onclick="reset()">			 
		</div>
	</div>
	
</body>
</html>