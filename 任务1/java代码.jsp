<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登录界面</title>
</head>
<script type="text/javascript">
function Query()
{
  var name=document.getElementById("name");
  var logincode=document.getElementById("logincode");
  if(name.value!="")
	{
	   if(logincode.value!="")
	     {
	    	if(name.value=="jsj")
	    	  {
	    		 if(logincode.value=="123")
	    		   window.location.href="Success.jsp"
	    			 
	    		 else
	    		   window.location.href="Cuowu.jsp?error=4"
	    	  }
	    	else
	    	  window.location.href="Cuowu.jsp?error=3"
	     }
	   else
		 window.location.href="Cuowu.jsp?error=2"
	 }
  else
	window.location.href="Cuowu.jsp?error=1"
}
</script>
<body>
<table width="1920px" height="400px" style="background-size:100% 100%" background="image/13.jpg">
 <tr>
  <td width="40%"></td>
  <td width="20%">
  <table width="100%" height="20px"></table>
  <form method="post">   
    <table  border="0" cellspacing="0" cellpadding="0">
      <tr><td align="center" width="2000px" height="100px" colspan="2" bgcolor=#FFFFFF> 
          <font style="color:red" size="5"><strong>用户登录</strong></font>
      </td></tr>    
      <tr>
        <td align="right" width="28%" height="50px" bgcolor=#FFFFFF>
          <input disabled="disabled" style="font-size:20px; background:url(image/用户.png); 
           background-size:100% 100%" size="1"/></td>
        <td align="left" bgcolor=#FFFFFF>
          <input style="font-size:20px" type="text" id="name" 
          placeholder="用户名" maxlength="20" required/></td>
      </tr>   
      <tr>
        <td align="right" width="28%" height="50px" bgcolor=#FFFFFF>
        <input disabled="disabled" style="font-size:20px; background:url(image/密码.png); 
          background-size:100% 100%" size="1"/></td>
        <td align="left" bgcolor=#FFFFFF>
          <input style="font-size:20px" type="password" id="logincode" 
           placeholder="密码" maxlength="20" required/></td>
      </tr>  
      <tr><td align="center" height="50px" colspan="2" bgcolor=#FFFFFF>
          <input type="button" value="登   录" onclick="Query()" style="height:40px;width:75%;color:white;
        background-color:red; font-size:20px; border:0;"/>
      </td></tr>   
      <tr><td height="50px" colspan="2" bgcolor=#FFFFFF>
      </td></tr>  
    </table>
  </form>  
  <table width="100%" height="30px"></table>
  </td>  
  <td width="40%"></td>
 </tr>
</table>
</body>
</html>