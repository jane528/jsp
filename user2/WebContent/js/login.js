function checkUser(){
	//获取用户名和密码值
	var uname = document.getElementById("uname").value;
	var upass = document.getElementById("upass").value;
	//验证是否为空或者为null
	if(uname==null || uname==""){
		alert("用户名不能为空");
	}else if(upass==null || upass=="" ){
		alert("密码不能为空");
	}else{
		return true;
	}
	
}