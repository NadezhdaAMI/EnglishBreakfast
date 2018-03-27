<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<html>
<head>
    <style>
        body  {
            background-image: url("/styles/images/483039.jpg");
            background-color: #cccccc;
        }

        input[type=text], select {
            width: 100%;
            padding: 4px 5px;
            margin: 8px 0;
            display: inline-block;
            border: 1px solid #ccc;
            border-radius: 4px;
            /*box-sizing: border-box;*/
        }

        input[type=password], select {
            width: 100%;
            padding: 4px 5px;
            margin: 8px 0;
            display: inline-block;
            border: 1px solid #ccc;
            border-radius: 4px;
            /*box-sizing: border-box;*/
        }

        input[type=submit]:hover {
            background-color: #45a049;
            width: 100%;
            padding: 4px 5px;
            margin: 8px 0;
        }

        div {
            border-radius: 5px;
            background-color: #f2f2f2;
            padding: 10px;
        }

    </style>
    <title>Title</title>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <%--<link rel="stylesheet" href="/styles/bootstrap.min.css">--%>
    <script src="http://code.jquery.com/jquery-2.2.4.js" type="text/javascript"></script>

</head>
<body>

<div class="w3-container" style="width:400px; margin: auto; margin-top: 100px">
    <div>
        <div>Login with Username and Password!</div>

        <c:if test="${logout != null}">
            <div class="w3-panel w3-round" style="background: lightgreen">
                <p>You've been logged out successfully.</p>
            </div>
        </c:if>

        <c:if test="${error != null}">
            <div class="w3-panel w3-round" style="background: lightpink">
                <p>Invalid Username or Password!</p>
            </div>
        </c:if>


        <form method="post">
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />

            <label for="username">Username</label>
            <input type="text" id="username" placeholder="Enter Username" name="username">

            <label for="password">Password</label>
            <input type="password" id="password" placeholder="Enter Password" name="password">


            <div>
                <button class="w3-btn w3-blue w3-round-small" type="submit">Log in</button>
            </div>
            <div>
                <label>Not registered? </label><a href="/WEB-INF/jsp/signup.jsp"  style="color: #337ab7">Create an account</a>
            </div>

        </form>



    </div>
</div>



</body>
</html>
