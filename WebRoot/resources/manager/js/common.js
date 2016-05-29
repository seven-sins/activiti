// 删除
function deleteObj(obj){
	$.confirm({
	    msg: '确定要删除吗？',
	    title:'系统消息',
	    confirm:function(){
	    	$.remove($(obj).attr("url"), {}, function(result){
	    		result = JSON.parse(result);
	    		if(result.code == 200){
	    			location.reload();
	    		}else{
	    			$.msg(result.data);
	    		}
	    	});
	    }
	});
}

function number(obj){
	if(!obj.value) return;
	var value = obj.value.replace(/\D+/g, "");
	obj.value = value;
}