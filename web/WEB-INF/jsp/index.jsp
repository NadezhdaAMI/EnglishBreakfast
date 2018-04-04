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

        aside {
            background: #f0f0f0;
            padding: 5px;
        }

        .outer {
            background: gainsboro;
            display: flex;
            width: 600px;
        }

        .inner1 {
            background: lightsteelblue;
            width: 250px;
            margin: auto;
        }

    </style>

    <meta http-equiv="Content-Type"
          content="text/html; charset=UTF-8">
    <title>My super project!</title>
    <script src="http://code.jquery.com/jquery-2.2.4.js"
            type="text/javascript"></script>
    <script src="/js/app-ajax.js" type="text/javascript"></script>
    <link rel="stylesheet" href="styles/w3.css">
</head>

<body>

<div class="w3-light-grey w3-round-small w3-margine" style="width:1100px; height:1000px; margin: auto">
    <div class="w3-bar">
        <header>
            <a href="/"><img src="/styles/images/mountain.png" style="width:1100px; height: 120px"></a>
        </header>
    </div>

    <div class="w3-container w3-center">       <!-- content -->
        <div class="w3-bar w3-padding-16">   <!-- buttons holder -->
            <button class="w3-btn w3-blue w3-round-small" onclick="location.href='/'">HOME</button>
            <button class="w3-btn w3-hover-blue w3-round-small" onclick="location.href='/words'">WORDS</button>
            <button class="w3-btn w3-hover-blue w3-round-small" onclick="location.href='/phrases'">PHRASES</button>
            <button class="w3-btn w3-hover-blue w3-round-small" onclick="location.href='/texts'">TEXTS</button>
            <button class="w3-btn w3-hover-blue w3-round-small" onclick="location.href='/audio'">AUDIO</button>
            <%--<button class="w3-btn w3-hover-blue w3-round-small" onclick="location.href='/helloworld'">LOG IN222</button>--%>
            <button class="w3-btn w3-hover-blue w3-round-small" onclick="location.href='/login'">LOGIN</button>
            <button class="w3-btn w3-hover-blue w3-round-small" onclick="location.href='/loginwow'">LOGINwow</button>

        </div>
        <span style = "float: right; padding-top: 16px; color: #2e6da4">Hello, ${pageContext.request.userPrincipal.name}!</span>
    </div>

    <aside style="float: left; width: 220px">
        <div class="w3-bar-item">
            <div class="w3-bar-block w3-border w3-light-grey w3-round-small" style="width:200px">

            </div>
        </div>
    </aside>

    <aside style="float: right; width: 250px">
        <div class="w3-bar-item">
            <div class="w3-bar-block w3-border w3-light-grey w3-round-small">
                <%--<div class="w3-bar-item">--%>
                    <%--<img src="../../styles/images/indicator.png" style="width:70px; height:70px">--%>
                    <%--<img src="../../styles/images/indicator.png" style="width:70px; height:70px">--%>
                <%--</div>--%>
                <%--<div class="w3-bar-item">--%>
                    <%--<img src="../../styles/images/indicator.png" style="width:70px; height:70px">--%>
                    <%--<img src="../../styles/images/indicator.png" style="width:70px; height:70px">--%>
                <%--</div>--%>
            </div>
        </div>
    </aside>
    <section>
        <div class="outer" style="height: 300px">
            <div class="inner1">
                <strong>Ответ сервлета: </strong>
                <span id="ajaxUserServletResponse"></span>

            </div>
        </div>

    </section>

</div>

<footer>
    <div class="container w3-blue-grey">
        <div class="w3-bar ">
            <h1 class="w3-center">FOOTER</h1>
        </div>
    </div>
</footer>


</body>
</html>

