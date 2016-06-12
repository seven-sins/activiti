// 删除
function deleteObj(obj){
	$.confirm({
	    msg: '确定要删除吗？',
	    title:'系统消息',
	    confirm:function(){
	    	$.remove($(obj).attr("url"), {}, function(result){
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


// 验证
function validate(obj){
	var parent = obj ? obj : document;
	var flag = true; // 验证通过返回true，反之返回false
	// 非空验证
	$(parent).find("input").each(function(){
		if($(this).attr("data-require")){ // data-require属性为true
			if($.isNull(this.value)){ // this.value的值为空
				flag = false;
				$(this).css("border-color","#d00");
				$(this).bind("keyup", function(){
					if($.isNull(this.value)){
						$(this).css("border-color","#d00");
					}else{
						$(this).css("border-color","#c5d6e0");
					}
				})
			}
		}
	});
	
	return flag;
}
