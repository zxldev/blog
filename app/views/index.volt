<!DOCTYPE html>
<html lang="zh-CN">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="{{ elements.getSysVar('seo_desc') }}">
    <meta name="keywords" content="{{ elements.getSysVar('seo_key') }}">
    <meta name="author" content="">
    <meta name="currentUser" username="{{ (user is not empty) ?user['name']:'' }}" role="{{ (user is not empty)?user['type']:''  }}">

    <meta property="qc:admins" content="21417660276375116375" />
    <meta baidu-gxt-verify-token="a67fb56f024c39aecc4f03815dcf9085">

   {{getTitle()  }}
    <script data-main="/js/main" src="http://apps.bdimg.com/libs/require.js/2.1.11/require.min.js"></script>
    <!-- Bootstrap Core CSS -->
    <link href="/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="/css/clean-blog.css" rel="stylesheet">
    <link href="/css/github-markdown.css" rel="stylesheet">
    <link href="/css/highlight.min.css" rel="stylesheet">
    <!-- Custom Fonts -->
    <link href="http://apps.bdimg.com/libs/fontawesome/4.4.0/css/font-awesome.css" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

    <script type="text/javascript" src="http://qzonestyle.gtimg.cn/qzone/openapi/qc_loader.js"  data-appid="101254880"  data-redirecturi="http://www.souii.com/session/qqlogincallback" charset="utf-8"></script>

</head>

<body>
<!-- Navigation -->
<nav class="navbar navbar-inverse navbar-custom  navbar-fixed-top">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header page-scroll">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="/">{{ elements.getSysVar('siteName') }}</a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav navbar-right">
                <li>
                    <a href="/">主页</a>
                </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">友情链接 <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="#"></a></li>
                        <li role="separator" class="divider"></li>
                        <li><a href="#"></a></li>
                    </ul>
                </li>
                {% if user is not empty %}
                    <li>
                        {% if user['type']=='1' %}
                        <a href="/manager">
                        {% else %}
                        <a href="/">
                        {% endif %}
                            {{ user['name']}}</a>
                    </li>
                    <li>
                        <a class="_btn_end_session"><i class="glyphicon glyphicon-log-out"></i> 退出</a>
                    </li>
                    {% else %}
                        <li>
                            <a class="_btn_start_session"><i class="glyphicon glyphicon-log-in"></i> 登录</a>
                        </li>
                {% endif %}
            </ul>
        </div>
        <!-- /.navbar-collapse -->
    </div>
    <!-- /.container -->
</nav>
{{ content() }}
<!-- Footer -->
<footer>
    <div class="container">
        <div class="row">
            <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
                <ul class="list-inline text-center">
                    <li>
                        <a href="{{ elements.getSysVar('githubURL') }}" target="_blank">
                                <span class="fa-stack fa-lg">
                                    <i class="fa fa-circle fa-stack-2x"></i>
                                    <i class="fa fa-github fa-stack-1x fa-inverse"></i>
                                </span>
                        </a>
                    </li>
                    <li>
                        <a href="{{ elements.getSysVar('weiboURL') }}" target="_blank">
                                <span class="fa-stack fa-lg">
                                    <i class="fa fa-circle fa-stack-2x"></i>
                                    <i class="fa fa-weibo fa-stack-1x fa-inverse"></i>
                                </span>
                        </a>
                    </li>
                </ul>
                <p class="copyright text-muted"> &copy; {{ elements.getSysVar('copyright') }}</p>
            </div>
        </div>
    </div>
</footer>

<script>
    (function(){
        var bp = document.createElement('script');
        bp.src = '//push.zhanzhang.baidu.com/push.js';
        var s = document.getElementsByTagName("script")[0];
        s.parentNode.insertBefore(bp, s);
    })();
</script>
</body>
</html>
