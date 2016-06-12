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
		<c:choose>
			<c:when test="${leave != null }">
				修改
			</c:when>
			<c:otherwise>
				添加
			</c:otherwise>
		</c:choose>
	</h2>
</div>
<div class="main">
<form id="form1" autocomplete="off">
	<p class="short-input ue-clear">
    	<label>请假类别：</label>
        <input type="text" name="category"  data-require="true"  value="${leave != null ? leave.category : '' }" placeholder="请假类别"  />
        <span><em>*</em></span>
    </p>
    <p class="short-input ue-clear">
    	<label>原因：</label>
        <input type="text" name="reason"  data-require="true"  value="${leave != null ? leave.reason : '' }" placeholder="原因"  />
        <span><em>*</em></span>
    </p>
    <p class="short-input ue-clear">
    	<label>天数：</label>
        <input type="text" name="days"  data-require="true"   value="${leave != null ? leave.days : '' }" placeholder="天数"  />
        <span><em>*</em></span>
    </p>
    <p class="short-input ue-clear">
    	<label>小时：</label>
        <input type="text" name="hours"  data-require="true"   value="${leave != null ? leave.hours : '' }" placeholder="小时"  />
        <span><em>*</em></span>
    </p>
    <p class="short-input ue-clear">
    	<label>开始时间：</label>
        <input type="text" name="startTime"  data-require="true"  
	        <t:if test="${leave != null }">
	        	value = "<t:date date="${leave.startTime }" format="yyyy-MM-dd HH:mm"></t:date>"
	        </t:if>
        placeholder="开始时间"  />
        <span><em>*</em></span>
    </p>
    <p class="short-input ue-clear">
    	<label>结束时间：</label>
        <input type="text" name="endTime"  data-require="true"  
	        <t:if test="${leave != null }">
	        	value = "<t:date date="${leave.endTime }" format="yyyy-MM-dd HH:mm"></t:date>"
	        </t:if>
        placeholder="结束时间"  />
        <span><em>*</em></span>
    </p>
</form> 
</div>

<div class="btn ue-clear">
	<a url="${ctx }/business/leave/${leave != null ? leave.id : ''}" onclick="save(this, '${ctx }/business/leave')" class="confirm">确定</a>
    <a href="${ctx }/business/leave" class="clear">返回</a>
</div>
</body>
<script type="text/javascript">
// 保存
function save(obj, redirectUrl){
	if(!validate()){
		return false;
	}
	
	var url = $(obj).attr("url");
	var regex = /\d+$/;
	var type = "POST";
	if(regex.test(url)){
		type = "PUT";
	}
	var data = $("#form1").serialize();
	
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