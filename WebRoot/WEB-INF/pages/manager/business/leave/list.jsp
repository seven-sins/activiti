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
                <th width="200px">请假类型</th>
                <th width="300px">原因</th>
                <th width="60px">天数</th>
                <th width="60px">小时</th>
                <th width="200px">开始时间</th>
                <th width="200px">结束时间</th>
                <th width="100px">状态</th>
                <th width="200px">操作</th>
            </tr>
        </thead>
        <tbody>
        	<t:forEach items="${page.recordList }" var="o">
        		<tr>
	            	<td class="num hide">${o.id }</td>
	                <td>${o.category }</td>
                 	<td>${o.reason }</td>
                 	<td>${o.days }</td>
                 	<td>${o.hours }</td>
                 	<td><t:date date="${o.startTime }" format="yyyy-MM-dd HH:mm"></t:date></td>
                 	<td><t:date date="${o.endTime }" format="yyyy-MM-dd HH:mm"></t:date></td>
                 	<td>
                 		<t:choose>
                 			<t:when test="${o.status==0 }"><span class="green">未申请</span></t:when>
                 			<t:when test="${o.status==1 }"><span class="red">审核中</span></t:when>
                 			<t:otherwise><span class="gray">完成</span></t:otherwise>
                 		</t:choose>
                 	</td>
	                <td class="operate">
	                	<t:choose>
	                		<t:when test="${o.status==0 }">
           				        <a href="${ctx }/business/leave/toUpdate?id=${o.id}">修改</a>
	                			<a url="${ctx }/business/leave/${o.id}" onclick="deleteObj(this)">删除</a>
	                			<a onclick="apply('${ctx }/business/leave/${o.id}/apply')">申请</a>
                			</t:when>
	                		<t:otherwise><a href="${ctx }/business/leave/${o.id}/view">查看</a></t:otherwise>
	                	</t:choose>
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

<script type="text/javascript">
function apply(url){
	$.put(url, {}, function(result){
		if(result.code == 200){
			$.msg({msg:"操作成功", fontSize: "18px", second: 0, callback: function(){
				window.location.reload();
			}});
		}else{
			$.msg("操作失败");
		}
	})
}
</script>


</body>
</html>