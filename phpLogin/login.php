<?php
// 开启服务器缓存
session_start();
// 定义全局变量
$_SESSION["username"]=null;
require('conn.php');
if(isset($_POST['Sno'])&&isset($_POST['password'])){
	$arr=array('data'=>array());
	$arr['status']=200;
	if($_POST['Sno']!==''&&$_POST['password']!==''){
	$username=$_POST['Sno'];
	$password=$_POST['password'];
	//准备数据库语句
	$sql="select * from user where Sno='$username'";
	$send=mysqli_query($link,$sql);
	$result=mysqli_fetch_array($send);
	if($result['Sno']==$username&&$result['password']==$password){
		$_SESSION['username'] =$username;
		$arr['status']=201;
		$arr['href']='index.wxml';
	}else{
		$arr['msg']='账号或密码有误';
	}
	
}
else{
		$arr['msg']='请输入账号或密码';
	}
	}
	echo json_encode($arr,JSON_UNESCAPED_UNICODE);
	mysqli_close($link);//关闭服务器
?>