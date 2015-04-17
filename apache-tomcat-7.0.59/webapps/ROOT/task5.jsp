
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import = "itis.UserBean" %>

    <head>

        <title>Home Work</title>

    </head>

    <body>

                <h2>Task 5</h2>
        <jsp:useBean id="userBean" class="itis.UserBean" />

        <%! itis.UserBean userBean = new itis.UserBean(); %>
        <%= userBean.toString() %>
        <p></p>
        <% for(itis.UserBean.User user : userBean.getUserlist()) { %>
        <%= user.getFirstname()%>
        <%= user.getLastname()%>
        <%= user.getAge()%>
        <p></p>
        <%}%>
        <h2>Task 6</h2>
        <p></p>

        <%! itis.UserBean.User user = new itis.UserBean.User(); %>

        <c:forEach var="user" items="${userBean.getUserlist()}">
            <tr>
                <td><c:out value="${user.getFirstname()}"/></td>
                <td><c:out value="${user.getLastname()}"/></td>
                <td><c:out value="${user.getAge()}"/></td>
            </tr>
            <p></p>
        </c:forEach>

    </body>
</html>
