<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TagInsert.aspx.cs" Inherits="Tag_TagInsert" %>

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
        
        <!-- javascript
        ================================================== -->
        <script src="../js/jquery.min.js"></script>
        <script src="../js/bootstrap.min.js"></script>
        <script src="../js/ckeditor.js"></script>
        <script src="../js/Common.js"></script>
        <script src="../js/Tag.js"></script>
        <script type="text/javascript">
            $(document).ready(function () {
                if (!IsLogin()) {
                    location.href = '../Login.aspx';
                    return;
                }

                $("#ok").click(function () {
                    SetTagItem();
                });
            });

        </script>
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
                                    <a href="../QNA/Ask.aspx">질문</a></li>
                                <li class="active">
                                    <a href="TagView.aspx">태그</a></li>
                                <li>
                                    <a href="../Learn/View.aspx">강좌</a></li>
                                <li>
                                    <a href="../Login.aspx">로그인</a></li>
                                <li>
                                    <a href="../Reg.aspx">회원가입</a></li>
                            </ul>
                        </div><!--/.nav-collapse -->
                    </div>
                </div>
            </div><!--/.navbar -->
        </header>
        
        
        <article class="container">
            <div class="row-fluid">
                <div class="span3">
                    <!--sidebar -->
                    <ul class="nav nav-tabs nav-stacked">
                        <li><a href="TagView.aspx"><i class="icon-chevron-right pull-right"></i> 태그보기</a></li>
                        <li><a href="TagInsert.aspx"><i class="icon-chevron-right pull-right"></i> 태그등록</a></li>        
                    </ul><!--/.sidebar -->
                </div><!--/.span3 -->

                <div class="span9">
                    <div class="doc-content-box">
                        <div class="doc-index-block">
                            태그명 : <input type="text" id="TagNm" /><br/>
                            태그 구분 : <select id="TagGubn">
                                            <option value="">선택</option>
                                            <option value="T">기술</option>
                                            <option value="L">강과</option>
                                            <option value="N">기타</option>
                                        </select><br/>
                            태그 간이설명 : 
                            <textarea class="ckeditor" name="SimpleEditor"></textarea><br />
                            태그 설명 : 
                            <textarea class="ckeditor" name="TagDecEditor"></textarea><br />
                        </div><!-- /doc-index-block -->
                        <input type="button" id="ok" value="태그 추가"/>
                        <!-- shadow doc-content-box -->
                    </div><!--/.doc-content-box -->
                </div><!--/.span9 -->
            </div><!--/.row-fluid -->
        </article><!-- /container -->
        

        <!-- footer -->
        <footer>
            <div class="footer">
                <div class="container">
                    <p>Copyright &copy; 2013. All rights reserved.</p>
                </div>
            </div>
        </footer><!--/.footer -->
    </body>
</html>
