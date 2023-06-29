<?php
session_start();
include('conn.php');
$data=array();
		if(!isset($_SESSION["username"]))
		{
			$data['status']='200';
			$data['message']='<span>您还未登陆，请 <span class="uname"><a href="javascript:;" class="c_login">登陆</a></span></span>';
			$data['href']='login.html';
		}
		else
		{
			$data['status']='201';
			$username=$_SESSION['username'];
			$sql="select * from user where Sno='$username'";
			$send=mysqli_query($link,$sql);
			$result=mysqli_fetch_array($send);
			$data['username']=$result['Sname'];
			$data['src']='./img/'.$result['uimg'];
			$data['message']='<span>欢迎：<span class="uname">'.$result["Sname"].'</span></span><span><a href="javascript:;" class="c_exit">退出</a></span>';
			$data['msgUsername']='<span class="uname">'.$result['Sname'].'</span>';
		}
echo json_encode($data,JSON_UNESCAPED_UNICODE);
mysqli_close($link);
?>