<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE HTML>
<link rel="stylesheet" href="${ pageContext.request.contextPath }/css/head.css"/>
<script src="${ pageContext.request.contextPath }/js/jquery-1.4.2.js"></script>
<script>
	function search(that){
		var  name = $("#search_content").val();
		window.open("${ pageContext.request.contextPath }/search?name="+name);
		/*
		var  name = $("#search_content").val();
		console.log(name);
		$.ajax({
			url:"/search",
			type : "post",
			//data表示发送的数据
			data : JSON.stringify({
				"name" : name
			}), //定义发送请求的数据格式为JSON字符串
			contentType : "application/json;charset=utf-8",
			//定义回调响应的数据格式为JSON字符串，该属性可以省略
			dataType : "json",
			//成功响应的结果
		})*/

	}
</script>
<meta http-equiv="Content-type" content="text/html; charset=UTF-8" />
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<div id="common_head">
	<div id="line1">
		<div id="content">
		
		 
		  <c:if test="${ empty sessionScope.user }">
		 	<a href="${ pageContext.request.contextPath }/index/login">登录</a>	 &nbsp;	
			 <a href="${ pageContext.request.contextPath }/index/regist">注册</a>			 
		 </c:if>	
		 	 
		 <c:if test="${ !(empty sessionScope.user) }">
		 	 	"欢迎${ sessionScope.user.username }回来~~&nbsp;"
		 	<a href="${ pageContext.request.contextPath }/index/logout">退出</a>		 
		 </c:if>		
		</div>	
	</div>
	<div id="line2">
		<img id="logo" src="${ pageContext.request.contextPath }/img/head/logo.jpg"/>
		<input type="text" name="" id="search_content"/>
		<input type="button" value="搜 索" onclick="search(this)"/>
		<span id="goto">
			<a id="goto_order" href="${ pageContext.request.contextPath }/order/showorder">我的订单</a>
			<a id="goto_cart" href="${pageContext.request.contextPath}/cart/showcart">我的购物车</a>&nbsp;|&nbsp;
			<a id="goto_admin" href="${pageContext.request.contextPath}/admin/login">后台登录</a>&nbsp;&nbsp;&nbsp;
		</span>
		<img id="erwm" src="${ pageContext.request.contextPath }/img/head/qr.jpg"/>
	</div>
	<div id="line3">
		<div id="content">
			<ul>
				<li><a href="${ pageContext.request.contextPath }/">首页</a></li>
				<li><a href="${ pageContext.request.contextPath }/prodlist">全部商品</a></li>
				<li><a href="${ pageContext.request.contextPath }/prodclass/手机数码">手机数码</a></li>
				<li><a href="${ pageContext.request.contextPath }/prodclass/日用百货">日用百货</a></li>
				<li><a href="${ pageContext.request.contextPath }/prodclass/家用电器">家用电器</a></li>
				<li><a href="${ pageContext.request.contextPath }/prodclass/图书杂志">图书杂志</a></li>
				<li><a href="${ pageContext.request.contextPath }/prodclass/服装服饰">服装服饰</a></li>
				<li><a href="${ pageContext.request.contextPath }/prodclass/床上用品">床上用品</a></li>
				<li><a href="${ pageContext.request.contextPath }/prodclass/汽车用品">汽车用品</a></li>
				<li><a href="${ pageContext.request.contextPath }/prodclass/户外运动">户外运动</a></li>
			</ul>
		</div>
	</div>
</div>