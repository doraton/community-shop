<%@page language="java" contentType="text/html; character=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
        "http://www.w3.org/TR/html4/loose.dtd">
<!--最上方的灰色状态条-->
<div class="width100" style="height: 25px;background: #f0f0f0;">
    <div class="width1200 center_yh font14 c_66" style="height: 25px;line-height: 25px;">
        <font class="left_yh">欢迎来到阳光社区小店！</font>
        <!--左浮动div-->
        <div class="right_yh" id="fast_jump">
            <!--登录后的情况-->
            <c:if test="${userId!=null}">
                <a href="#">欢迎您：${username}</a>
                <b></b>
                <a href="${ctx}/login/uTui">退出</a>
                <b></b>
                <a href="${ctx}/car/findBySql">我的购物车</a>
                <b></b>
            </c:if>
            <!--没有登录的情况-->
            <c:if test="${userId==null}">
                <a href="${ctx}/login/uLogin">登录</a>
                <b></b>
                <a href="${ctx}/login/res">注册</a>
                <b></b>
            </c:if>
            <!--个人中心始终显示-->
            <a href="${ctx}/user/view">个人中心</a>
        </div>
    </div>
</div>
<!--商店信息条-->
<div class="width100 hidden_yh">
    <div class="width1200 center_yh hidden_yh">
        <!--商店logo-->
        <a href="#" class="block_yh left_yh">
            <img src="${ctx}/resource/images/logo.png" alt="" style="height: 60px">
        </a>
        <!--搜索栏-->
        <div class="right_yh" style="height:28px;width:316px;border:2px solid #dd4545;margin-top:-40px;">
            <form action="${ctx}/item/shoplist" method="post">
                <input type="text" placeholder="关键词查询" class="search" name="condition" value="${condition}">
                <input type="submit" class="btnSearh" value="搜索">
            </form>
        </div>
    </div>
</div>