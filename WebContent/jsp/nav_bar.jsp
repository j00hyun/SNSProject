<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="model.feed.Feed" %>
<%@ page import="model.member.Member" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri = "http://java.sun.com/jsp/jstl/functions" %>

<c:set var="userId" value="${sessionScope.user.id}"/>

<div class="w3-bar w3-theme-d2 w3-left-align w3-large">
    <a class="w3-bar-item w3-button w3-ide-medium w3-hide-large w3-right w3-padding-large w3-hover-white w3-large w3-theme-d2"
       href="javascript:void(0);" onclick="openNav()">
        <i class="fa fa-bars"></i>
    </a>
    <!-- EncoreBook -->
    <a href="../index.html" class="w3-bar-item w3-button w3-padding-large w3-theme-d4"><i
            class="fa fa-home w3-margin-right"></i>EncoreBook</a>
    <!-- news -->
    <c:if test="${not empty userId}">
        <a href="#" class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white" title="News"><i
                class="fa fa-globe"></i></a>
    </c:if>
    <!-- account(log_state.jsp) -->
    <div id="log_state">
        <!-- 로그인 -->
        <c:if test="${empty userId}">
            <a href="../log_in.html" class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white"
               title="Log In"><i class="fa fa-user"></i></a>
        </c:if>
        <!-- 내 정보 -->
        <c:if test="${not empty userId}">
            <a href="../my_page.html" class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white"
               title="My Page"><i class="fa fa-user"></i></a>
        </c:if>
    </div>
    <!-- message -->
    <c:if test="${not empty userId}">
        <a href="#" class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white" title="Messages"><i
                class="fa fa-envelope"></i></a>
    </c:if>
    <div class="w3-dropdown-hover w3-hide-small">
        <!-- bell -->
        <c:if test="${not empty userId}">
            <button class="w3-button w3-padding-large" title="Notifications"><i class="fa fa-bell"></i><span
                    class="w3-badge w3-right w3-small w3-green">3</span></button>
            <div class="w3-dropdown-content w3-card-4 w3-bar-block" style="width:300px">
                <a href="#" class="w3-bar-item w3-button">One new friend request</a>
                <a href="#" class="w3-bar-item w3-button">John Doe posted on your wall</a>
                <a href="#" class="w3-bar-item w3-button">Jane likes your post</a>
            </div>
        </c:if>
    </div>
</div>
<!-- Navbar on small screens -->
<div id="navDemo" class="w3-bar-block w3-theme-d2 w3-hide w3-hide-large w3-hide-medium w3-large">
    <a href="#" class="w3-bar-item w3-button w3-padding-large">Link 1</a>
    <a href="#" class="w3-bar-item w3-button w3-padding-large">Link 2</a>
    <a href="#" class="w3-bar-item w3-button w3-padding-large">Link 3</a>
    <a href="#" class="w3-bar-item w3-button w3-padding-large">My Profile</a>
</div>
