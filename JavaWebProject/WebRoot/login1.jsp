<%--
  Created by IntelliJ IDEA.
  User: 11957
  Date: 2020/4/25
  Time: 16:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <title>登录</title>

    <link rel="stylesheet" href="<%=basePath%>css/login/reset.css" />
    <link rel="stylesheet" href="<%=basePath%>css/login/common.css" />
    <link rel="stylesheet" href="<%=basePath%>css/login/font-awesome.min.css" />
</head>
<body>
<div class="wrap login_wrap">
    <div class="ceng">
        <div class="content">
            <div class="logo"></div>
            <div class="login_box">

                <div class="login_form">
                    <div class="login_title">
                        登录
                    </div>
                    <form action="${pageContext.request.contextPath }/userModel/login.do" method="post">

                        <div class="form_text_ipt">
                            <input name="username" type="text" placeholder="会员号/手机号/邮箱">
                        </div>
                        <div class="ececk_warning"><span>手机号/邮箱不能为空</span></div>
                        <div class="form_text_ipt">
                            <input name="password" type="password" placeholder="密码">
                        </div>
                        <div class="ececk_warning"><span>密码不能为空</span></div>
                        <div class="form_check_ipt">
                            <div class="left check_left">
                                <label><input name="checked" type="checkbox"> 下次自动登录</label>
                            </div>
                            <div class="right check_right">
                                <a href="#">忘记密码</a>
                            </div>
                        </div>
                        <div class="form_btn">
                            <input type="submit" value="登录" name="login">
                            <!-- <button type="button" onclick="javascript:window.location.href='#'">登录</button> -->
                        </div>
                        <div class="error">${error }</div>
                        <div class="form_reg_btn">
                            <span>还没有帐号？</span><a href="${pageContext.request.contextPath }/register.jsp">马上注册</a>
                            <a href="${pageContext.request.contextPath }/index.jsp">退出</a>
                        </div>
                    </form>
                    <div class="other_login">
                        <div class="left other_left">
                            <span>其它登录方式</span>
                        </div>
                        <div class="right other_right">
                            <a href="#"><i class="fa fa-qq fa-2x"></i></a>
                            <a href="#"><i class="fa fa-weixin fa-2x"></i></a>
                            <a href="#"><i class="fa fa-weibo fa-2x"></i></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript" src="<%=basePath%>/js/login/jquery.min.js" ></script>
<script type="text/javascript" src="<%=basePath%>/js/login/common.js" ></script>
</body>
</html>
