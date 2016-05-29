<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./base.jsp" %>
<!doctype html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Activiti</title>
<link href="${ctx}/resources/manager/css/index.css" type="text/css" rel="stylesheet">
</head>
<body>
<div id="container">
	<div id="hd">
    	<div class="hd-wrap ue-clear">
        	<div class="top-light"></div>
            <h1 class="logo">ACTIVITI DEMO</h1>
            <div class="login-info ue-clear">
                <div class="welcome ue-clear"><span>欢迎您,<i class="space"></i></span><a href="javascript:;" class="user-name">${me.name }</a></div>
                <div class="login-msg ue-clear">
                    <a href="javascript:;" class="msg-txt">消息</a>
                    <a href="javascript:;" class="msg-num">10</a>
                </div>
            </div>
            <div class="toolbar ue-clear">
                <a href="${ctx }/main" class="home-btn">首页</a>
                <a href="javascript:logout();" class="quit-btn exit"></a>
            </div>
        </div>
    </div>
    <div id="bd">
    	<div class="wrap ue-clear">
        	<div class="sidebar">
            	<h2 class="sidebar-header"><p>功能导航</p></h2>
                <ul class="nav">
                	<li class="item office current"><div class="nav-header"><a href="${ctx }/workBench" class="ue-clear" target="iframe"><span>工作台</span><i class="icon"></i></a></div></li>
                    <li class="item nav-info">
                    	<div class="nav-header"><a href="javascript:;" class="ue-clear"><span>基础设置</span><i class="icon"></i></a></div>
                        <ul class="subnav">
                        	<li><a href="${ctx }/role" target="iframe">角色管理</a></li>
                            <li><a href="${ctx }/user" target="iframe">用户管理</a></li>
                            <li><a href="${ctx }/action" target="iframe">ACTION管理</a></li>
                            <li><a href="${ctx }/privilege" target="iframe">权限设置</a></li>
                        </ul>
                    </li>
                    <li class="item gongwen"><div class="nav-header"><a href="javascript:;" class="ue-clear"><span>公文起草</span><i class="icon"></i></a></div></li>
                    <li class="item konwledge"><div class="nav-header"><a href="javascript:;" class="ue-clear"><span>知识管理</span><i class="icon"></i></a></div></li>
                    <li class="item agency"><div class="nav-header"><a href="javascript:;" class="ue-clear"><span>组织结构</span><i class="icon"></i></a></div></li>
                    <li class="item email"><div class="nav-header"><a href="javascript:;" class="ue-clear"><span>邮件管理</span><i class="icon"></i></a></div></li>
                    <li class="item system"><div class="nav-header"><a href="javascript:;" class="ue-clear"><span>系统管理</span><i class="icon"></i></a></div></li>
                </ul>
            </div>
            <div class="content">
            	<iframe src="${ctx }/workBench" id="iframe" name="iframe" width="100%" height="100%" frameborder="0"></iframe>
            </div>
        </div>
    </div>
    <div id="ft" class="ue-clear">
    	<div class="ft-left">
            <span>管理系统</span>
            <em>Office&nbsp;System</em>
        </div>
        <div class="ft-right">
            <span>Automation</span>
            <em>V1.0&nbsp;2016</em>
        </div>
    </div>
</div>
</body>
<script type="text/javascript" src="${ctx}/resources/manager/js/common.js"></script>
<script type="text/javascript" src="${ctx}/resources/manager/js/main.js"></script>
<script type="text/javascript">
function logout(){
	$.confirm({
		msg: "确定要退出系统吗？",
		title: "系统消息",
		confirm: function(){
			window.location.href = "${ctx}/login";
		}
	})
}
</script>
</body>
</html>