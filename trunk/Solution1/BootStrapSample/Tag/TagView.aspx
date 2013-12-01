<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TagView.aspx.cs" Inherits="Tag_TagView" %>

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
                    <a class="brand" href="../Default.aspx">ITQNA</a>
                    <div class="nav-collapse collapse">
                        <ul class="nav pull-right">
                            <li>
                                <a href="../QNA/Answer.aspx">질문</a></li>
                            <li class="active">
                                <a href="TagView.aspx">태그</a></li>
                            <li>
                                <a href="../Learn/View.aspx">강좌</a></li>
                            <li>
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
                    <li><a href="TagView.aspx"><i class="icon-chevron-right pull-right"></i>태그보기</a></li>
                    <li><a href="TagInsert.aspx"><i class="icon-chevron-right pull-right"></i>태그등록</a></li>
                </ul>
                <!--/.sidebar -->
            </div>
            <!--/.span3 -->

            <div class="span9">
                <div class="doc-content-box">
                    <div class="doc-index-block">
                        <!-- /index-item -->
                        <input id="Button1" type="button" value="기술" /><input id="Button2" type="button" value="강좌" /><input id="Button3" type="button" value="기타" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <input id="Button4" type="button" value="새로운 태그" /></div>
                    <!-- /doc-index-block -->

                    <!-- shadow doc-content-box -->
                </div>
                <!--/.doc-content-box -->
                태그네임 : X 숫자(질문 갯수)<br />
                태그제목 : -----<br />
                선호 하는 태그 로 등록한 사람 태그 팔로워 X 숫자(가져오기 힘들때 따른것으로 변경할수 있음)<br />
                <br />
                페이징 처리</div>
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


    <!-- javascript
        ================================================== -->
    <script src="../js/jquery.min.js"></script>
    <script src="../js/bootstrap.min.js"></script>
    <script src="../js/Common.js"></script>
    <script type="text/javascript">
        //jQuery(document).ready(function ($) {
        //    $(".scroll").click(function (event) {
        //        event.preventDefault();
        //        $("html,body").animate({ scrollTop: $(this.hash).offset().top - 50 }, 'slow');
        //    });

        //});

    </script>
</body>
</html>
