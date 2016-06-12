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
			<c:when test="${action != null }">
				修改Action
			</c:when>
			<c:otherwise>
				添加Action
			</c:otherwise>
		</c:choose>
	</h2>
</div>
<div class="main">
<form id="form1" autocomplete="off">
	<div class="short-input select ue-clear">
    	<label>所属模块：</label>
        <div class="select-wrap">
        	<div class="select-title ue-clear">
        		<span id="parentId" _id="${parent.id != 0 ? parent.id : '0' }">
        			${ parent.id != 0 ? parent.name : '请选择模块' }
        		</span>
        		<i class="icon"></i>
       		</div>
            <ul class="select-list">
            	<c:forEach items="${actionList }" var="action">
            		<li _id="${action.id }">${action.name }</li>
            	</c:forEach>
            </ul>
        </div>
    </div>
	<p class="short-input ue-clear">
    	<label>Action名称：</label>
        <input type="text" name="name" value="${action != null ? action.name : '' }" placeholder="Action名称"  />
        <span><em>*</em></span>
    </p>
    <p class="short-input ue-clear">
    	<label>Url：</label>
        <input type="text" name="url" value="${action != null ? action.url : '' }" placeholder="Url"  />
        <span><em>*</em></span>
    </p>
    <p class="short-input ue-clear">
    	<label>请求方式：</label>
        <input type="text" name="request" value="${action != null ? action.request : '' }" placeholder="请求方式"  />
        <span><em>*</em></span>
    </p>
    <p class="short-input ue-clear">
    	<label>排序：</label>
        <input type="text" name="position" value="${action != null ? action.position : '' }" onkeyup="number(this)"  placeholder="排序"  />
    </p>
</form> 
</div>

<div class="btn ue-clear">
	<a url="${ctx }/action/${action != null ? action.id : ''}" onclick="save(this, '${ctx }/action')" class="confirm">确定</a>
    <a href="${ctx }/action" class="clear">返回</a>
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
	if($.isNull(data.name)){
		$.msg({msg: "Action名称不能为空！", second: 0});
		return false;
	}
	
	data.parentId = $("#parentId").attr("_id");
	
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