﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>ITQNA</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- styles -->
    <link href="css/bootstrap.css" rel="stylesheet">
    <link href="css/bootstrap-responsive.css" rel="stylesheet">
    <link href="css/bootstrap-doc.css" rel="stylesheet">


    <!-- favicon -->
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="ico/apple-touch-icon-57-precomposed.png">
    <link rel="shortcut icon" href="ico/favicon.png">


    <!--[if lt IE 9]>
          <script src="js/html5shiv.js"></script>
        <![endif]-->
    <!-- javascript
        ================================================== -->
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/Common.js"></script>
    <script src="js/Login.js"></script>
    <script src="https://apis.google.com/js/client.js?onload=handleClientLoad"></script>
    <script type="text/javascript" src="http://yui.yahooapis.com/3.3.0/build/yui/yui-min.js"></script>
    <script src="js/Dlogin/fbLogin.js"></script>
    <script src="js/Dlogin/twitterLogin.js"></script>
    <script src="js/Dlogin/googleLogin.js"></script>
</head>

<body>
    <header>
        <!--navbar -->
        <div class="navbar navbar-inverse navbar-fixed-top">
            <div class="navbar-inner">
                <div class="container">
                    <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </a>
                    <a class="brand" href="Default.aspx">ITQNA</a>
                    <div class="nav-collapse collapse">
                        <ul class="nav pull-right">
                            <li>
                                <a href="../QNA/Ask.aspx">질문</a></li>
                            <li>
                                <a href="Tag/TagView.aspx">태그</a></li>
                            <li>
                                <a href="Learn/View.aspx">강좌</a></li>
                            <li class="active">
                                <a href="../Login.aspx">로그인</a></li>
                            <li>
                                <a href="../Reg.aspx">회원가입</a></li>
                        </ul>
                    </div>
                    <!--/.nav-collapse -->
                </div>
            </div>
        </div>
        <!--/.navbar -->
    </header>


    <article class="container">
        <div class="row-fluid">
            <div class="span3">
                <!--sidebar -->
                <ul class="nav nav-tabs nav-stacked">
                    <!--
                            <li><a href="content.html"><i class="icon-chevron-right pull-right"></i> 질문보기</a></li>
                            <li><a href="#"><i class="icon-chevron-right pull-right"></i> 질문하기</a></li>
                        -->
                </ul>
                <!--/.sidebar -->
            </div>
            <!--/.span3 -->

            <div class="span9">
                <div class="doc-content-box">
                    <div id="fbLogin" style="cursor: pointer;">
                        <img src="./img/login/facebooklogin.png" alt="페이스북 로그인">
                    </div>
                    <%--<div id="twitterlogin">twitter</div>--%>
                    <%--<div id="googlelogin">google</div>--%>
                    <input type="button" id="twitterlogin" value="twitter"/>
                    <input type="button" id="googlelogin" value="google"/>
                    <div>
                        <a id="maqna" href="javascript:void(0)">maqna</a>
                        <div id="LoginControls" style="display: none;">
                            아이디 :
                            <input id="UserID" type="text"><br />
                            비밀번호 :
                            <input id="UserPwd" type="password"><br />
                            <input type="button" value="확인" id="btnLogin">
                        </div>
                    </div>
                </div>
                <!--/.doc-content-box -->
            </div>
            <!--/.span9 -->
        </div>
        <!--/.row-fluid -->
    </article>
    <!-- /container -->


    <!-- footer -->
    <footer>
        <div class="footer">
            <div class="container">
                <p>Copyright &copy; 2013. All rights reserved.</p>
            </div>
        </div>
    </footer>
    <!--/.footer -->
</body>
</html>
