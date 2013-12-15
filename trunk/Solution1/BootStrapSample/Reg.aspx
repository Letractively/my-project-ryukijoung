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
                    <a class="brand" href="Default.aspx">ITQNA</a>
                    <div class="nav-collapse collapse">
                        <ul class="nav pull-right">
                            <li>
                                <a href="QNA/Ask.aspx">질문</a></li>
                            <li>
                                <a href="Tag/TagView.aspx">태그</a></li>
                            <li>
                                <a href="Learn/View.aspx">강좌</a></li>
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
                        <div id="userid">
                            회원 아이디 : 
                                        <input id="txtID" type="text"><input id="result" type="text" value="" />
                        </div>
                        <div>
                            회원 닉네임 : 
                                        <input id="txtNick" type="text"><br />
                        </div>
                        <div>
                            비밀번호 : 
                                        <input id="txtPwd" type="password"><br />
                        </div>
                        <div>
                            비밀번호 확인 : 
                                        <input id="txtRePwd" type="password"><br />
                        </div>
                        <input id="Reg" type="button" value="회원가입" />
                        <div>
                            <a href="#">facebook</a>
                            <a href="#">twitter</a>
                            <a href="#">google</a>
                        </div>
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
    <script src="js/Reg.js"></script>
    <script src="js/Common.js"></script>
</body>
</html>
