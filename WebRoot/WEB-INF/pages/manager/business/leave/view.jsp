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
		查看
	</h2>
</div>
<div class="main">
<form id="form1" autocomplete="off">
	<p class="short-input ue-clear">
    	<label>请假类别：</label>
        <input type="text"  disabled="disabled"  value="${leave.category }"   />
    </p>
    <p class="short-input ue-clear">
    	<label>原因：</label>
        <input type="text"  disabled="disabled"  value="${ leave.reason  }"   />
    </p>
    <p class="short-input ue-clear">
    	<label>天数：</label>
        <input type="text"  disabled="disabled"  value="${leave.days }"   />
    </p>
    <p class="short-input ue-clear">
    	<label>小时：</label>
        <input type="text"   disabled="disabled"  value="${leave.hours }"   />
    </p>
    <p class="short-input ue-clear">
    	<label>开始时间：</label>
        <input type="text"  disabled="disabled"  
	        	value ="<t:date date="${leave.startTime }" format="yyyy-MM-dd HH:mm"></t:date>" />
    </p>
    <p class="short-input ue-clear">
    	<label>结束时间：</label>
        <input type="text"  disabled="disabled"  
	        value = "<t:date date="${leave.endTime }" format="yyyy-MM-dd HH:mm"></t:date>" />
    </p>
    <p class="short-input ue-clear">
    	<label>流程Id：</label>
        <input type="text"   disabled="disabled"  value="${leave.processInstanceId }"   />
    </p>
    <p class="short-input ue-clear">
    	<label>当前节点：</label>
        <input type="text"   disabled="disabled"  value="${leave.currentStep }"   />
    </p>
    <p class="short-input ue-clear">
    	<label>当前办理人：</label>
        <input type="text"   disabled="disabled"  value="${leave.currentAssignee }"   />
    </p>
</form> 
</div>

<div class="btn ue-clear">
    <a href="${ctx }/business/leave" class="clear">返回</a>
</div>

<div>
	<img src="${ctx }/workflow/trace/diagram/${leave.processInstanceId}" />
</div>
</body>
</html>