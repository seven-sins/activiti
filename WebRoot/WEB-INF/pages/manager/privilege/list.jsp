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
<div class="title"><h2>权限设置</h2></div>
<div class="query">
	<div class="query-conditions ue-clear">
	    <div class="conditions name ue-clear">
	        <label>角色：</label>
	        <div class="select-wrap">
	            <div class="select-title ue-clear"><span id="roleId" _id="0">请选择</span><i class="icon"></i></div>
	            <ul class="select-list">
	            	<t:forEach items="${roleList }" var="role">
	            		<li _id="${role.id }">${role.name }</li>
	            	</t:forEach>
	            </ul>
	        </div>
	    </div>
    </div>
    <div class="query-btn ue-clear">
    	<a onclick="updatePrivilege()" class="confirm">保存</a>
    </div>
</div>
<div class="table-box">
	<table>
    	<thead>
        	<tr>
            	<th class="num hide">id</th>
            	<th width="38px"><input type="checkbox" onclick="checkAll(this)" /></th>
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
		            	<td><input type="checkbox" value="${o.id }" _parentId="${o.parentId }"/></td>
		                <td>${o.name }</td>
		                <td>${o.url }</td>
		                <td>${o.request }</td>
		                <td>${o.position }</td>
		                <td class="operate">
<!-- 		                	<a href="${ctx }/action/toAdd?parentId=${o.id}">添加</a> -->
<!-- 		                	<a href="${ctx }/action/toUpdate?id=${o.id}">修改</a> -->
<!-- 		                	<a url="${ctx }/action/${o.id}" onclick="deleteObj(this)">删除</a> -->
		                </td>
		            </tr>
		            <!-- 子类 -->
		            <t:forEach items="${dataList }"  var="sub">
		            	<t:if test="${o.id == sub.parentId }">
		            		<tr>
				            	<td class="num hide">${sub.id }</td>
				            	<td><input type="checkbox" value="${sub.id }" _parentId="${sub.parentId }" /></td>
				                <td><span class="space"><span class="space">${sub.name }</td>
				                <td>${sub.url }</td>
				                <td>${sub.request }</td>
				                <td>${sub.position }</td>
				                <td class="operate">
<!-- 				                	<a href="${ctx }/action/toAdd?parentId=${sub.id}" class="hold">添加</a> -->
<!-- 				                	<a href="${ctx }/action/toUpdate?id=${sub.id}">修改</a> -->
<!-- 				                	<a url="${ctx }/action/${sub.id}" onclick="deleteObj(this)">删除</a> -->
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
<script type="text/javascript">
	$(".select-title").on("click",function(){
		$(".select-list").toggle();
		return false;
	})
	$(".select-list li").on("click",function(){
		$("#roleId").text($(this).text());
		$("#roleId").attr("_id", $(this).attr("_id"));
		$(".select-list").hide();
		resetState();
	})

	//////////////////////
	$(function(){
		$("input[type='checkbox']").bind("click", function(){
			// 选中所有parentId = this.id
			var thisChecked = this.checked;
			var thisValue = this.value;
			$("input[type='checkbox']").each(function(){
				if($(this).attr("_parentId")!=0 && $(this).attr("_parentId")==thisValue){
					this.checked = thisChecked;
				}
			})
		})
	})
	
	function checkAll(obj){
		var objChecked = obj.checked;
		$("input[type='checkbox']").each(function(){
			this.checked = objChecked;
		})
	}
	function resetState(){
		var roleId = $("#roleId").attr("_id");
		// 清除所有选中状态
		$("input[type='checkbox']").each(function(){
			this.checked = false;
		})
		//
		$.get("${ctx}/privilege/urls/" + roleId, {}, function(result){
			if(result != null && result.length > 0){
				for(var i=0;i<result.length;i++){
					$("input[type='checkbox']").each(function(){
						if(this.value == result[i].id){
							this.checked = true;
						}
					})
				}
			}
		})
	}
	function updatePrivilege(){
		//获取角色id
		var roleId = $("#roleId").attr("_id");
		if(roleId==0)return false;
		
		//获得选中状态的id
		var ids = [];
		$("input[type='checkbox']").each(function(){
			if(this.checked == true){
				ids.push(this.value);
			}
		})
		$.put("${ctx}/privilege/urls/" + roleId, {ids: ids.join(",")}, function(result){
			if(result.code == 200){
				$.msg({msg:"保存成功", fontSize:"16px", second: 0});
			}else{
				$.alert(result.data);
			}
		})
	}
</script>
</html>