$(function(){
	//点击下拉按钮展开显示
	$("#down").click(function(){
		var display= $("#address-list").css("display");
		if(display == "none"){
			$("#address-list").css("display","block");
			$(this).attr("class","fa fa-chevron-down");
		}else{
			$("#address-list").css("display","none");
			$(this).attr("class","fa fa-chevron-up");
		}
	});
	//将第一项地址设置为默认地址
	$(".single").eq(0).attr("checked","checked");
	//选择单选按钮修改默认值
	$(".single").each(function(i){
		if($(this).attr("checked") == "checked"){
			//设置收货人
			$("#addName").text($(this).next(".address-des").children(".add-person").text());
			//设置联系电话
			$("#addTel").text($(this).next(".address-des").children(".add-tel").text());
			//设置收货地址
			$("#add").text($(this).next(".address-des").children("p").text());
		}	
		$(this).click(function(){
			//设置收货人
			$("#addName").text($(this).next(".address-des").children(".add-person").text());
			//设置联系电话
			$("#addTel").text($(this).next(".address-des").children(".add-tel").text());
			//设置收货地址
			$("#add").text($(this).next(".address-des").children("p").text());
		})			
	})
	//计算所有商品的件数
	var sum1 = 0;
	//计算总价
	var total = 0;
	$(".num-val").each(function(i){
		sum1 += parseInt($(this).val());
		$(".all-num").text(sum1);
	})
	//小计
	$(".price").each(function(i){
		var minPrice = $(this).text()*$(this).siblings(".num").children(".num-val").val();
		$(this).siblings(".min-price").text(minPrice.toFixed(2));
	})
	//控制全选按钮
	$(".all-chk").each(function(){
		$(this).click(function(){
			sum1 = 0;
			total = 0;
			if(this.checked){
				$(".chkbox").each(function(){
					$(this).attr("checked",true);
				})
				$(".all-chk").attr("checked",true);
				//选中商品数量
				$(".num-val").each(function(){
					sum1 += parseInt($(this).val());
					$(".choose-num").text(sum1);
				})
				//合计
				$(".min-price").each(function(){
					//console.log(parseFloat($(this).text()));
					total += parseFloat($(this).text());
				})
				$(".total").text("￥"+total.toFixed(2));
			}else{
				$(".chkbox").each(function(){
					$(this).attr("checked",false);
					$(".all-chk").attr("checked",false);
					$(".choose-num").text(0);
					$(".total").text("￥0.00");
				})
			};
			
		})
	})
	//控制商品前的复选框
	$(".chkbox").each(function(){
		$(this).click(function(){
			sum1=0;
			total = 0;
			//设置一个变量来保存全选框的转态
			isAllChecked = true;
			$(".chkbox").each(function(){
				if(!$(this)[0].checked){
					isAllChecked = false;
				}
				if($(this)[0].checked){
					sum1 += parseInt($(this).parent().siblings(".num").children(".num-val").val());
					//console.log($(this).parent().siblings(".min-price").text());
					total += parseFloat($(this).parent().siblings(".min-price").text());
				}
			})
			$(".all-chk").attr("checked",isAllChecked);
			$(".choose-num").text(sum1);
			$(".total").text("￥"+total.toFixed(2));
		});	
	})
	//数量+
	$('a.add').on('click', function (){
		//修改值
		$(this).prev().val(Number($(this).prev().val()) + 1);
		
		//修改小计
		var v = Number($(this).prev().val()) * Number($(this).parent().prev().text());
		$(this).parent().next().text(v.toFixed(2));
		
		//修改全选处的共x件
		var al = 0;
		$('.num-val').each(function(){
			al = al + Number($(this).val());
		})
		$(".all-num").text(al);
		
		var a2 = 0;
		//修改选中的商品数量
		$(".chkbox").each(function(){
			//console.log($(this)[0].checked);
			if($(this)[0].checked){
				//选中商品数量
				a2 += parseInt($(this).parent().siblings(".num").children(".num-val").val());
				$(".choose-num").text(a2);
			}
		})
		
		//修改值
		$(this).parent().prev().prev().prev().children("input").attr("data-num", $(this).prev().val());
	})
	
	//数量-
	$('a.minus').on('click', function (){
		//修改值
		var v = Number($(this).next().val()) - 1;
		if (v<0) {
			v = 0;
		}
		$(this).next().val(v);
		
		//修改小计
		var vf = Number($(this).next().val()) * Number($(this).parent().prev().text());
		$(this).parent().next().text(vf.toFixed(2));
		
		//修改全选处的共x件
		var al = 0;
		$('.num-val').each(function(){
			al = al + Number($(this).val());
		})
		$(".all-num").text(al);
		
		var a2 = 0;
		//修改选中的商品数量
		$(".chkbox").each(function(){
			//console.log($(this)[0].checked);
			if($(this)[0].checked){
				//选中商品数量
				a2 += parseInt($(this).parent().siblings(".num").children(".num-val").val());
				$(".choose-num").text(a2);
			}
		})
		
		//修改值
		$(this).parent().prev().prev().prev().children("input").attr("data-num", v);
	})

});
	