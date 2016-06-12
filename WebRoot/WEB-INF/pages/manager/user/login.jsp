<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../base.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登录</title>
<script type="text/javascript">
$(function(){
	$.login({
		submit:function(user){
			$.post("${ctx}/dologin", user, function(result){
				if(result.code==200){
					if(window.parent!=window){
						window.location.href="${ctx}/main";
					}else{
						window.location.href="${ctx}/main";
					}
				}else{
					$.msg({msg:result.data, fontSize:"16px", second: 0});
				}
			})
		},
		forget:function(){
			$.msg("- -!");
		}
	});
})
</script>
</head>
<body>

</body>
</html>