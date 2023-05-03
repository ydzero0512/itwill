<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
  <head>
  <%@ include file="layout/head.jsp" %>
  <script type="text/javascript">

		function checkData() {
			if (document.fr.id.value == "") {
				alert(" 아이디를 입력하세요! ");
				document.fr.id.focus();
				return false;
			}
				if (document.fr.password.value == "") {
					alert(" 비밀번호를 입력하세요! ");
					document.fr.password.focus();
					return false;
				}
			
		};//아이디 체크

  
  </script>
  </head>    
<body>
 <%@ include file="layout/nav.jsp" %><!-- nav 삽입 -->
	
 <div class="container" id="login-con">
  <form action="./MemberLoginAction.me" name="fr" onsubmit="return checkData();" method="post"> 
    <div class="form-group" id="log-form">
     <div style="text-align: center;"><a class="navbar-brand" href="./Main.me" style="font-size: 40px;"><span>CODELESS</span></a></div>
     
      <input type="email" class="form-control"  placeholder="아이디를 입력해주세요." name="id" style="margin-bottom: 10px;" id="id">
	 
      <input type="password" class="form-control" placeholder="비밀번호를 입력해주세요." name="password">

      <button type="submit" class="btn btn-primary btn-block" style="margin-top: 30px;" >로그인</button>
     
      <button type="button" class="btn btn-dark btn-block" style="margin-top: 15px;" onclick="location.href='./MemberJoin.me'" >
      회원가입</button>
      <hr>
               
      <span onclick="location.href='./IdFind.me'" style="margin-left:85px; cursor:pointer;" >아이디 찾기</span>  |
      
      <span onclick="location.href='./PwFind.me'" style="cursor:pointer;" >비밀번호 찾기</span>  
      

    
   </div>
  </form>
</div><!-- 로그인 컨테이너박스 끝 -->
 <%@ include file="layout/footer.jsp" %> <!-- footer 삽입 -->
</body>
</html>