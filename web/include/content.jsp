<%
    String view = "";
    if (request.getAttribute("view") == null) {
        view = "";
    } else {
        view = (String) request.getAttribute("view");
    }

    if (view == "") {
%>
<%@include file = "../views/home/v_home.jsp" %>
<%}%>
