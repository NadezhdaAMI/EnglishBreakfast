<%@ page import="java.util.List" %>
<%--<jsp:useBean class="app.dao.PhrasesEntity" id="org" scope="session" ></jsp:useBean>--%>
<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<html lang="en">
<head>
    <style>
        body  {
            background-image: url("/styles/images/483039.jpg");
            background-color: #cccccc;
        }
        .container {
            display: block;
            position: relative;
            padding-left: 35px;
            margin-bottom: 12px;
            cursor: pointer;
            font-size: 12px;
            -webkit-user-select: none;
            -moz-user-select: none;
            -ms-user-select: none;
            user-select: none;
        }


        /* Hide the browser's default radio button */
        .container input {
            position: absolute;
            opacity: 0;
            cursor: pointer;
        }

        /* Create a custom radio button */
        .checkmark {
            position: absolute;
            top: 0;
            left: 0;
            height: 18px;
            width: 18px;
            background-color: #eee;
            border-radius: 50%;
        }

        /* On mouse-over, add a grey background color */
        .container:hover input ~ .checkmark {
            background-color: #ccc;
        }

        /* When the radio button is checked, add a blue background */
        .container input:checked ~ .checkmark {
            background-color: #2196F3;
        }

        /* Create the indicator (the dot/circle - hidden when not checked) */
        .checkmark:after {
            content: "";
            position: absolute;
            display: none;
        }

        /* Show the indicator (dot/circle) when checked */
        .container input:checked ~ .checkmark:after {
            display: block;
        }

        /* Style the indicator (dot/circle) */
        .container .checkmark:after {
            top: 6px;
            left: 6px;
            width: 7px;
            height: 7px;
            border-radius: 50%;
            background: white;
        }

    </style>

    <meta http-equiv="Content-Type"
          content="text/html; charset=UTF-8">
    <title>My super project!</title>
    <script src="http://code.jquery.com/jquery-2.2.4.js"
            type="text/javascript"></script>
    <script src="js/app-ajax.js" type="text/javascript"></script>
    <link rel="stylesheet" href="styles/w3.css">

</head>

<body class="w3-light-grey">
<!-- header -->
<div class="w3-container w3-blue-grey w3-opacity w3-round-large w3-margin" >

    <div class="w3-bar ">
        <h1 class="w3-center">English for breakfast</h1>

    </div>
</div>

<div class="w3-container w3-center">       <!-- content -->
    <div class="w3-bar w3-padding-large w3-padding-24">   <!-- buttons holder -->

        <button class="w3-btn w3-hover-blue w3-round-large" onclick="location.href='/'">home</button>
        <button class="w3-btn w3-hover-blue w3-round-large" onclick="location.href='/words'">words</button>
        <button class="w3-btn w3-blue w3-round-large" onclick="location.href='/speaking'">phrases</button>
        <button class="w3-btn w3-hover-blue w3-round-large" onclick="location.href='/texts'">texts</button>

    </div>
</div>

<div class="w3-container w3-white w3-margin w3-round-large">

    <div class="w3-bar w3-center">
        <div class="w3-bar-item">
            <div class="w3-bar-block w3-border w3-light-grey w3-round-large" style="width:200px">

                <div class="w3-bar-item">
                    <h5>Select the Level</h5>
                    <label class="container">1 level
                        <input type="radio" checked="checked" name="radio">
                        <span class="checkmark"></span>
                    </label>
                    <label class="container">2 level
                        <input type="radio" name="radio">
                        <span class="checkmark"></span>
                    </label>
                    <label class="container">3 level
                        <input type="radio" name="radio">
                        <span class="checkmark"></span>
                    </label>

                </div>
                <div class="w3-bar-item">
                    <button class="w3-btn w3-green w3-round-large" onclick="location.href='/add'">Start an exercise</button>
                </div>
                <div class="w3-bar-item">
                    <button class="w3-btn w3-green w3-round-large" onclick="location.href='/add'">!Add phrase</button>
                </div>
                <div class="w3-bar-item">
                    <button class="w3-btn w3-light-blue w3-round-large" onclick="location.href='/list'">!List phrases</button>
                </div>


            </div>
        </div>
        <div class="w3-bar-item">
            <div class="w3-bar w3-light-grey w3-round-large" style="width:700px; height:300px" >
                <div>
                    <strong>Ответ сервлета: </strong>
                    <span id="ajaxUserServletResponse"></span>

                    <%@ page session="true" %>
                    <%
                        List<Object> phrases = (List<Object>) request.getAttribute("phraseAll");

                        if (phrases != null && !phrases.isEmpty()) {
                            out.println("<ui>");
                            for (Object o : phrases) {
                                String s = (String) o;
                                out.println("<li>" + s + "</li>");
                            }
                            out.println("</ui>");
                        } else out.println("<p>There are no phrases yet!</p>");
                    %>
                </div>
                <div class="w3-bar">

                    <button class="w3-btn w3-light-blue w3-round-large">previous</button>
                    <button id="ButtonID" class="w3-btn w3-light-blue w3-round-large">translate</button>
                    <button class="w3-btn w3-light-blue w3-round-large" onclick="location.href='/showphrase'">next</button>

                </div>
            </div>
        </div>

    </div>

</div>

</body>
</html>
