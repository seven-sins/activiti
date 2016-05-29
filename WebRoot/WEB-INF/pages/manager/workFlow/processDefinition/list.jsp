<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../base.jsp" %>
<!doctype html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
<link href="${ctx}/resources/manager/css/list.css" type="text/css" rel="stylesheet">
</head>
<body>
<div class="title"><h2>流程定义</h2></div>
<div class="query">
	<div class="query-conditions ue-clear">
        <div class="conditions input-box ue-clear">
            <label>流程定义：</label>
            <input type="text" placeholder="请输入查询的流程定义" />
        </div>
    </div>
    <div class="query-btn ue-clear">
    	<a href="javascript:;" class="confirm">查询</a>
        <a href="javascript:;" class="clear">清空条件</a> 
    </div>
</div>
<div class="table-box">
	<table>
    	<thead>
        	<tr>
            	<th class="num hide">id</th>
                <th>名称</th>
                <th>流程定义key</th>
                <th>版本</th>
                <th>文件名称</th>
                <th>图片名称</th>
                <th>部署id</th>
                <th>操作</th>
            </tr>
        </thead>
        <tbody>
        	<t:forEach items="${dataList }" var="o">
        		<tr>
	            	<td class="num hide">${o.id }</td>
	                <td>${o.name }</td>
	                <td>${o.key }</td>
	                <td>${o.version }</td>
	                <td>${o.resourceName }</td>
	                <td>${o.diagramResourceName }</td>
	                <td>${o.deploymentId }</td>
	                <td class="operate">
	                	<a href="${ctx }/workFlow/processDefinition/viewImg?deploymentId=${o.deploymentId}&diagramResourceName=${o.diagramResourceName}" target="_blank">查看流程图</a>
	                </td>
	            </tr>
        	</t:forEach>
        </tbody>
    </table>
</div>
</body>
</html>