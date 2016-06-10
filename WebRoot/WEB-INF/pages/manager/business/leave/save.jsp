<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../base.jsp" %>
<!doctype html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
<link href="${ctx}/resources/manager/css/save.css" type="text/css" rel="stylesheet">
</head>
<body>
<div class="title">
	<h2>
		<c:choose>
			<c:when test="${role != null }">
				修改
			</c:when>
			<c:otherwise>
				添加
			</c:otherwise>
		</c:choose>
	</h2>
</div>
<div class="main">
<form id="form1" autocomplete="off">
	<p class="short-input ue-clear">
    	<label>请假类别：</label>
        <input type="text" name="name" value="${role != null ? role.name : '' }" placeholder="请假类别"  />
        <span><em>*</em></span>
    </p>
</form> 
</div>

<div class="btn ue-clear">
	<a url="${ctx }/business/leave/${role != null ? role.id : ''}" onclick="save(this, '${ctx }/business/leave')" class="confirm">确定</a>
    <a href="${ctx }/business/leave" class="clear">返回</a>
</div>
</body>
<script type="text/javascript">
// 保存
function save(obj, redirectUrl){
	var url = $(obj).attr("url");
	var regex = /\d+$/;
	var type = "POST";
	if(regex.test(url)){
		type = "PUT";
	}
	var data = $("#form1").serialize();
	if($.isNull(data.name)){
		$.msg({msg: "角色名称不能为空！", second: 0});
		return false;
	}
	
	$.ajax({
		url: url,
		type: type,
		data: data,
		success: function(result){
			result = JSON.parse(result);
			if(result.code == 200){
				window.location.href = redirectUrl;
			}else{
				$.msg({msg: result.data, second: 0});
			}
		}
	})
}
</script>
</html>