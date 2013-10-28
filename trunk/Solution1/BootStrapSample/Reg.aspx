<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Reg.aspx.cs" Inherits="Reg" %>

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
                    <a class="brand" href="index.html">ITQNA</a>
                    <div class="nav-collapse collapse">
                        <ul class="nav pull-right">
                            <li>
                                <a href="Default.aspx">Home</a></li>
                            <li>
                                <a href="QnA.aspx">질문</a></li>
                            <li>
                                <a href="Tag.aspx">태그</a></li>
                            <li>
                                <a href="Member.aspx">회원</a></li>
                            <li>
                                <a href="Learn.aspx">강좌</a></li>
                            <li>
                                <a href="Propose.aspx">제안</a></li>
                            <li>
                                <a href="Login.aspx">로그인</a></li>
                            <li class="active">
                                <a href="Reg.aspx">회원가입</a></li>
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
            <!--/.span3 -->

            <div>
                <div class="doc-content-box">
                    <div class="doc-index">
                        <h2>회원가입</h2>
                    </div>

                    <div class="index-header">
                                회원 아이디 : 
                                        <input type="text">&nbsp;&nbsp;&nbsp;&nbsp;<img src="https://www.google.co.kr/images/srpr/logo11w.png" /></span><br/>
                                회원 닉네임 : 
                                        <input type="text">&nbsp;&nbsp;&nbsp;&nbsp;<img src="http://3.bp.blogspot.com/-w0WUeKdk_8Q/UMiPqGsi8NI/AAAAAAAAOQo/iIdpJeZbUrw/s1600/Facebook-Logo.jpg"/><br/>
                                비밀번호 : 
                                        <input type="password">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="https://abs.twimg.com/a/1382598364/images/resources/twitter-bird-white-on-blue.png" /><br/>
                                비밀번호 확인 : 
                                        <input type="password"><br/>
                                <input type="button" value="회원가입" />
                    </div>
                </div>

                <div class="shadow-right"></div>
                <!-- shadow doc-content-box -->
            </div>
            <!--/.doc-content-box -->
        </div>
        <!--/.span9 -->
        </div><!--/.row-fluid -->
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


    <!-- javascript
        ================================================== -->
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script type="text/javascript">
        jQuery(document).ready(function ($) {

            $(".scroll").click(function (event) {
                event.preventDefault();
                $("html,body").animate({ scrollTop: $(this.hash).offset().top - 50 }, 'slow');
            });

        });

    </script>
</body>
</html>
