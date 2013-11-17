<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Question.aspx.cs" Inherits="Question" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>ITQNA</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- styles -->
    <link href="../css/bootstrap.css" rel="stylesheet">
    <link href="../css/bootstrap-responsive.css" rel="stylesheet">
    <link href="../css/bootstrap-doc.css" rel="stylesheet">


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
                            <li class="active">
                                <a href="Answer.aspx">질문</a></li>
                            <li>
                                <a href="../Tag/Tach.aspx">태그</a></li>
                            <li>
                                <a href="../Learn/View.aspx">강좌</a></li>
                            <li>
                                <a href="Login.aspx">로그인</a></li>
                            <li>
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
            <div class="span3">
                <!--sidebar -->
                <ul class="nav nav-tabs nav-stacked">
                    <li><a href="Answer.aspx"><i class="icon-chevron-right pull-right"></i>질문보기</a></li>
                    <li><a href="Question.aspx"><i class="icon-chevron-right pull-right"></i>질문하기</a></li>
                </ul>
                <!--/.sidebar -->
            </div>
            <!--/.span3 -->
            <div class="span9">
                <textarea class="ckeditor" name="editor1"></textarea>
                <br />
                <input onclick="GetContents();" type="button" value="확인" />
                <div id="editorcontents"></div>
            </div>
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


    <!-- javascript
        ================================================== -->
    <script src="../js/jquery.js"></script>
    <script src="../js/bootstrap.min.js"></script>
    <script src="../js/ckeditor.js"></script>
    <script src="../js/Common.js"></script>
    <script type="text/javascript">
        //jQuery(document).ready(function ($) {

        //    $(".scroll").click(function (event) {
        //        event.preventDefault();
        //        $("html,body").animate({ scrollTop: $(this.hash).offset().top - 50 }, 'slow');
        //    });

        //});

        //function GetContents() {
        //    document.getElementById('editorcontents').innerHTML = CKEDITOR.instances.editor1.getData();
        //}
    </script>
</body>
</html>
