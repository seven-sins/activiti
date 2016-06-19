<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../manager/base.jsp" %>
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
		部署流程
	</h2> 
</div>
<div class="main">
<form id="form1" action="${ctx }/workflow/deploy" autocomplete="off" method="POST" enctype="multipart/form-data" >
	<p class="short-input ue-clear">
    	<label>流程名称：</label>
        <input type="text" name="processName" data-require="true" placeholder="上传流程定义"  />
        <span><em>*</em></span>
    </p>
    <p class="short-input ue-clear">
    	<label>流程定义：</label>
    	<!-- 隐藏的控件主图 -->
        <input type="file" name="processFile" id="processFile" class="hide" onchange="openFile()" />
        <input type="text" name="processFile_" data-require="true" readonly="readonly" onclick="clickFile()" placeholder="请输入流程名称"  />
        <span><em>*</em></span>
    </p>
</form> 
</div>

<div class="btn ue-clear">
	<a class="confirm" onclick="save()" >确定</a>
    <a href="${ctx }/workflow/deployment" class="clear">返回</a>
</div>
</body>
<t:if test="${status != null && status == 'success' }">
	<script type="text/javascript" id="tmpScript" >
		$.msg({msg: "部署流程定义成功！", second: 0, fontSize: "16px"});
		$("#tmpScript").remove();
	</script>
</t:if>
<script type="text/javascript">
function openFile(){
	var fileDom = document.getElementById("processFile");
	$("input[name='processFile_']").val(fileDom.files[0].name);
}

function clickFile(){
	document.getElementById("processFile").click();
}

function save(){
	if(!validate()){
		return false;
	}
	
	var data = $("#form1").serialize();
	var isEmpty = false;
	$("input[type='file']").each(function(){
		if($.isNull(this.value)){
			$.msg({msg: "流程定义不能为空！", second: 0, fontSize: "16px"});
			isEmpty = true;
			return false;
		}
	});
	if(isEmpty) return false;
	// 
	var form = document.getElementById("form1");
	form.submit();
}
</script>
</html>