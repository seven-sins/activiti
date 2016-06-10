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
<div class="title"><h2>请假管理</h2></div>
<div class="query">
	<div class="query-conditions ue-clear">
        <div class="conditions input-box ue-clear">
            <label>类别：</label>
            <input type="text" placeholder="请输入查询的类别名" />
        </div>
    </div>
    <div class="query-btn ue-clear">
    	<a href="javascript:;" class="confirm">查询</a>
        <a href="javascript:;" class="clear">清空条件</a> 
    </div>
</div>
<div class="table-operate ue-clear">
	<a href="${ctx }/business/leave/toAdd" class="add">添加</a>
</div>
<div class="table-box">
	<table>
    	<thead>
        	<tr>
            	<th class="num hide">id</th>
                <th>名称</th>
                <th>操作</th>
            </tr>
        </thead>
        <tbody>
        	<t:forEach items="${page.recordList }" var="o">
        		<tr>
	            	<td class="num hide">${o.id }</td>
	                <td>${o.name }</td>
	                <td class="operate">
	                	<a href="${ctx }/business/leave/toUpdate?id=${o.id}">修改</a>
	                	<a url="${ctx }/business/leave/${o.id}" onclick="deleteObj(this)">删除</a>
	                </td>
	            </tr>
        	</t:forEach>
        </tbody>
    </table>
</div>
<!-- 分页 start -->
<div class="page">
	${page.links }
	<form action="${ctx }/business/leave" id="listForm">
		<input type="hidden" name="pageIndex" value="1" />
	</form>
	<script type="text/javascript">
		function gotoPage(pageIndex){
			var listForm=document.getElementById('listForm');
			listForm.pageIndex.value=pageIndex;
			listForm.submit();
		}
	</script>
</div>
<!-- 分页 end -->
</body>
</html>