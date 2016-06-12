<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../base.jsp" %>
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
			<c:when test="${user != null }">
				修改用户
			</c:when>
			<c:otherwise>
				添加用户
			</c:otherwise>
		</c:choose>
	</h2>
</div>
<div class="main">
<form id="form1" autocomplete="off">
	<div class="short-input select ue-clear">
    	<label>角色：</label>
        <div class="select-wrap">
        	<div class="select-title ue-clear">
        		<span id="roleId" _id="${user != null ? user.role.id : '0' }">
        			${user != null ? user.role.name : '请选择角色' }
        		</span>
        		<i class="icon"></i>
       		</div>
            <ul class="select-list">
            	<c:forEach items="${roleList }" var="role">
            		<li _id="${role.id }">${role.name }</li>
            	</c:forEach>
            </ul>
        </div>
    </div>
	<p class="short-input ue-clear">
    	<label>用户名：</label>
        <input type="text" name="userName" value="${user != null ? user.userName : '' }" placeholder="用户名"  />
        <span><em>*</em></span>
    </p>
    <p class="short-input ue-clear">
    	<label>密码：</label>
    	<input type="password" class="hide" />
        <input type="password" name="passWord" placeholder="密码" />
        <span><em>*</em></span>
    </p>
    <p class="short-input ue-clear">
    	<label>确认密码：</label>
        <input type="password" name="confirmPassWord" placeholder="确认密码" />
        <span><em>*</em></span>
    </p>
    <p class="short-input ue-clear">
    	<label>姓名：</label>
        <input type="text" name="name" value="${user != null ? user.name : '' }" placeholder="姓名" />
        <span><em>*</em></span>
    </p>
</form> 
</div>

<div class="btn ue-clear">
	<a url="${ctx }/user/${user != null ? user.id : ''}" onclick="save(this, '${ctx }/user')" class="confirm">确定</a>
    <a href="${ctx }/user" class="clear">返回</a>
</div>
</body>
<script type="text/javascript">
$(".select-title").on("click",function(){
	$(".select-list").toggle();
	return false;
});
$(".select-list li").on("click",function(){
	var txt = $(this).text();
	$(".select-title").find("span").text(txt);
	$(".select-title").find("span").attr("_id", $(this).attr("_id"));
	$(".select-list").hide();
});

// 保存
function save(obj, redirectUrl){
	var url = $(obj).attr("url");
	var regex = /\d+$/;
	var type = "POST";
	if(regex.test(url)){
		type = "PUT";
	}
	var data = $("#form1").serialize();
	if($("#roleId").attr("_id") == "0"){
		$.msg({msg: "请选择角色", second: 0});
		return false;
	}else{
		data.roleId = $("#roleId").attr("_id");
	}
	if(type == "POST"){
		if($.isNull(data.userName) || $.isNull(data.passWord) || $.isNull(data.confirmPassWord) || $.isNull(data.name)){
			$.msg({msg: "输入不能为空！", second: 0});
			return false;
		}
		if(data.passWord != data.confirmPassWord){
			$.msg({msg: "密码输入不一致！", second: 0});
			return false;
		}
	}else{
		if($.isNull(data.userName) || $.isNull(data.name)){
			$.msg({msg: "用户名和姓名不能为空！", second: 0});
			return false;
		}
	}
	
	$.ajax({
		url: url,
		type: type,
		data: data,
		success: function(result){
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