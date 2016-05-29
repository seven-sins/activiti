<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../base.jsp" %>
<!doctype html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
<link href="${ctx}/resources/manager/css/list.css" type="text/css" rel="stylesheet">
</head>
<body>
<div class="title"><h2>Action管理</h2></div>
<div class="query">
	<div class="query-conditions ue-clear">
        <div class="conditions input-box ue-clear">
            <label>名称：</label>
            <input type="text" placeholder="请输入查询的Action" />
        </div>
    </div>
    <div class="query-btn ue-clear">
    	<a href="javascript:;" class="confirm">查询</a>
        <a href="javascript:;" class="clear">清空条件</a> 
    </div>
</div>
<div class="table-operate ue-clear">
	<a href="${ctx }/action/toAdd" class="add">添加</a>
</div>
<div class="table-box">
	<table>
    	<thead>
        	<tr>
            	<th class="num hide">id</th>
                <th>名称</th>
                <th>Url</th>
                <th>请求方式</th>
                <th>排序</th>
                <th>操作</th>
            </tr>
        </thead>
        <tbody>
        	<t:forEach items="${dataList }"  var="o">
        		<t:if test="${o.parentId == 0 }">
	        		<tr>
		            	<td class="num hide">${o.id }</td>
		                <td>${o.name }</td>
		                <td>${o.url }</td>
		                <td>${o.request }</td>
		                <td>${o.position }</td>
		                <td class="operate">
		                	<a href="${ctx }/action/toAdd?parentId=${o.id}">添加</a>
		                	<a href="${ctx }/action/toUpdate?id=${o.id}">修改</a>
		                	<a url="${ctx }/action/${o.id}" onclick="deleteObj(this)">删除</a>
		                </td>
		            </tr>
		            <!-- 子类 -->
		            <t:forEach items="${dataList }"  var="sub">
		            	<t:if test="${o.id == sub.parentId }">
		            		<tr>
				            	<td class="num hide">${sub.id }</td>
				                <td><span class="space"><span class="space">${sub.name }</td>
				                <td>${sub.url }</td>
				                <td>${sub.request }</td>
				                <td>${sub.position }</td>
				                <td class="operate">
				                	<a href="${ctx }/action/toAdd?parentId=${sub.id}" class="hold">添加</a>
				                	<a href="${ctx }/action/toUpdate?id=${sub.id}">修改</a>
				                	<a url="${ctx }/action/${sub.id}" onclick="deleteObj(this)">删除</a>
				                </td>
				            </tr>
		            	</t:if>
		            </t:forEach>
	            </t:if>
        	</t:forEach>
        </tbody>
    </table>
</div>
</body>
</html>