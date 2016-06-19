<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../manager/base.jsp" %>
<!doctype html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
<link href="${ctx}/resources/manager/css/list.css" type="text/css" rel="stylesheet">
</head>
<body>
<div class="title"><h2>任务</h2></div>
<div class="query">
	<div class="query-conditions ue-clear">
        <div class="conditions input-box ue-clear">
            <label>任务名称：</label>
            <input type="text" placeholder="请输入查询的任务名称" />
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
                <th>任务名称</th>
                <th>办理人</th>
                <th>描述</th>
                <th>创建时间</th>
                <th>操作</th>
            </tr>
        </thead>
        <tbody>
        	<t:forEach items="${dataList }" var="o">
        		<tr>
	            	<td class="num hide">${o.id }</td>
					<td>${o.name }</td>
					<td>${o.assignee }</td>
					<td>${o.description }</td>
					<td><t:date date="${o.createTime }" format="yyyy-MM-dd HH:mm"></t:date></td>
					<td class="operate">
						<t:choose>
							<t:when test="${empty o.assignee }">
								<a>签收</a>
							</t:when>
							<t:otherwise>
								<a>办理</a>
							</t:otherwise>
						</t:choose>
					</td>
	            </tr>
        	</t:forEach>
        </tbody>
    </table>
</div>
</body>
</html>