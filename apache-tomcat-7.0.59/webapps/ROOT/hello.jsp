<%@ page import = "itis.TestBean" %>
<html>

    <head>

        <title>Hello World</title>

    </head>

    <body>

        Hello World!<br/>

        <p>
            Your IP address is <%= (request.getRemoteAddr())%>
        </p>
        <p>
            Today's date: <%= (new java.util.Date()).toLocaleString()%>
        </p>
            <h2>Using JavaBeans in JSP</h2>

            <jsp:useBean id="test" class="itis.TestBean" />

            <jsp:setProperty name="test"

                             property="message"

                             value="Hello JSP..." />

            <p>Got message....</p>

            <jsp:getProperty name="test" property="message" />

        <ul>

            <li><p><b>prop1:</b>

                <%= request.getParameter("prop1")%>

            </p></li>

            <li><p><b>test:</b>

                <%= request.getParameter("test")%>

            </p></li>

        </ul>

        <form action="hello.jsp" method="POST">

            prop1: <input type="number" name="prop1">

            <br />

            test: <input type="text" name="test" />

            <br />

            <input type="submit" value="Submit" />

        </form>

    </body>

</html>