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
		流程图
	</h2>
</div>
<div class="main">
	<div class="container" style="position:relative;">
		<img src="${ctx }/workflow/processDefinition/showImg?deploymentId=${workflow.deploymentId}&diagramResourceName=${workflow.diagramResourceName}"  />
		<t:if test="${coord != null }">
			<div style="position:absolute;left:${coord.x + 10}px;top:${coord.y + 10}px;width:${coord.width}px;height:${coord.height}px;border:1px solid red;"></div>	
		</t:if>
	</div>
</div>
</body>
</html>