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
<%}%>
