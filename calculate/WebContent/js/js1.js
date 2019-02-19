//验证用户输入是否为空
function checkNum(){
	//获取num1的值
	var num1=document.getElementById("num1").value;
	var num2=document.getElementById("num2").value;
	if(num1 == "" || num2 == "" ){
		window.alert("输入不能为空");
		return false;
	}
	var reg= /^-?\d+$/;
	if(!reg.test(num1) || !reg.test(num2)){
		window.alert("请输入整数");
		return false;
	}
}