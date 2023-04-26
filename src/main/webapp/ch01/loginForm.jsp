<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
	<script>
		/*
			입력폼 태그 안의 값들이 정상적으로 입력되었는지 체크하는 함수
				- event는 event가 발생한 엘리먼트에 대한 정보를 담고 있는 이벤트 객체이다.
		*/
		function checkForm(event){
			// form안의 submit 버튼을 클릭하면 무조건 서버로 페이지를 보내려고 한다.
			// 그 행동을 차단하는 기능을 해준다.
			event.preventDefault();
			
			// 입력값 확인[디버깅 코드]
			console.log('아이디', document.getElementById('id').value);
			console.log('비밀번호',document.getElementById('pwd').value);
			
			var id = document.getElementById('id').value;
			var password = document.getElementById('pwd').value;
			
			
			// 아이디 값 검증(trim()함수는 값 양쪽의 공란 제거,)
			// 강력한 equal 여난자 ===로 체크
			if(id.trim()===''){
				alert('아이디를 입력하세요.');
				// id 입력칸으로 포커스 이동
				document.getElementById('id').focus();
				return;
			}
			
			if(password.trim()===''){
				alert('비밀번호를 입력하세요.');
				document.getElementById('pwd').focus();
				return;
			}
			// 모든 검증이 끝나서 막아 놓았던 submit을 실행함.
			// submit을 하면 console.log 값들이 사라짐.
			document.getElementById('loginForm').submit();
		}
	</script>
</head>
<body>
	<form id="loginForm" action="${pageContext.request.contextPath}/ch01/loginProcessing.jsp" method="post">
	
		<div>
			아이디 : <input type="text" name="id" id="id" value="hong">
		</div>
		
		<div>
			비밀번호 : <input type="password" name="pwd" id="pwd" value="1234">
		</div>
		
		<div>
			<input type="submit" value="전송" onclick="checkForm(event)">
		</div>
	</form>
</body>
</html>