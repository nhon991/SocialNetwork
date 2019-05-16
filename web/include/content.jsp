<%
    String view = "";
    if (request.getAttribute("view") == null) {
        view = "";
    } else {
        view = (String) request.getAttribute("view");
    }

    if (view == "") {
%>
<%@include file = "../views/login/v_login.jsp" %>
<%
} else if (view == "views/home/v_home.jsp") {
%>
<%@include file = "../views/home/v_home.jsp" %>
<%
} else if (view == "views/signup/v_signup.jsp") {
%>
<%@include file = "../views/signup/v_signup.jsp" %>
<%
} else if (view == "views/SearchUser.jsp") {
%>
<%@include file = "../views/SearchUser.jsp" %>
<%
} else if (view == "views/UserInfo.jsp") {
%>
<%@include file = "../views/UserInfo.jsp" %>
<%
} else if (view == "views/FollowList.jsp") {
%>
<%@include file = "../views/FollowList.jsp" %>
<%
} else if (view == "rungame/game.jsp") {
%>
<%@include file = "../rungame/index.html" %>
<%}%>
