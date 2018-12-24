<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>电影论坛</title>
    <link rel="stylesheet" href="css/base.css">
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
<div class="head-box">
    <div class="head wrap">
        <div class="logo fl"><a href=""><img src="images/logo.png"></a></div>
        <div class="head-right fr">
            <div class="head-a fr">
                <div class="hgt fl"><img src="images/hgt.png">
                    <div class="hgt-top">
                        <input type="text" class="hgt-text">
                    </div>
                </div>
                <div class="head-a1 fl"><a href=""><img src="images/tb-a.png"></a></div>
                <div class="head-a1 fl"><a href=""><img src="images/tb-b.png"></a></div>
                <div class="head-a3 login-click fl" id="loginBtn">登录</div>
                <div class="head-a4 reg-click fl" id="registerBtn">注册</div>

            </div>
            <div class="clearfix"></div>
            <div class="nav fr">
                <ul>
                    <li><a href="index.ftl">首页</a></li>
                    <li><a href="article.ftl">热榜</a>
                        <div class="sub-nav">
                            <div class="bich-top"></div>
                            <div class="bich" style="width: 165px">
                                <a href="" style="width: 55px">国内</a>
                                <a href="" style="width: 55px">欧美</a>
                                <a href="" style="width: 55px">日韩</a>

                            </div>

                        </div>
                    </li>
                    <li><a href="community.ftl">推荐</a></li>
                    <li class="nav-cut"><a href="course.ftl">聚焦</a></li>
                    <li></li>
                    <li><a href="contact.ftl">联系我们</a></li>

                </ul>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
</div>

<div class="content">
    <div class="wrap">
        <div class="tsm-height"></div>
        <div class="course-banner"><a href="course-details.ftl"><img src="upload/course-banner.jpg"></a></div>
        <div class="cou-a">
            <ul>
                <li><div class="cou-a1"><a href="course-details.ftl"><img src="upload/course-a1.jpg"></a>
                        <div class="cou-inside"><div class="cou-href"><a href="">查看</a></div></div>
                    </div>
                    <div class="act-a2">只是后来，没有了我们。</div>
                </li>

                <li><div class="cou-a1"><a href="course-details.ftl"><img src="upload/course-a2.jpg"></a>
                        <div class="cou-inside"><div class="cou-href"><a href="">查看</a></div></div>
                    </div>
                    <div class="act-a2">儿时的回忆就是一部动画片啊</div>
                </li>

                <li><div class="cou-a1"><a href="course-details.ftl"><img src="upload/course-a3.jpg"></a>
                        <div class="cou-inside"><div class="cou-href"><a href="">查看</a></div></div>
                    </div>
                    <div class="act-a2">谁还没有个初恋啊</div>
                </li>
            </ul>
        </div>

        <div class="cou-b">
            <div class="cou-b-title">
                <div class="cou-b1"><img src="images/cou-b1.jpg">聚焦</div>
                <div class="cou-b2">
                    <div class="sort">排序</div>
                </div>
                <div class="cou-b3">
                    <div class="dropdown">
                        <span>全部</span>
                        <ul data-value="" class="droplist">
                            <li data-id="1">全部</li>
                            <li data-id="2">国内</li>
                            <li data-id="3">欧美</li>
                            <li data-id="4">日韩</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>

        <div class="cou-c">
            <ul>
                <li>
                    <div class="kil-fl fl"><a href="course-details.ftl"><img src="upload/cou-c1.jpg"></a></div>
                    <div class="kil-fr fl">
                        <div class="kil-r1">《地球脉动》</div>
                        <div class="kil-r2">纪录片<span>地球</span><span>人与动物</span></div>
                        <div class="kil-r3"><h6>地球各地的壮观美景与奇特地貌</h6></div>
                        <div class="kil-r4"><img src="upload/cou-d.jpg">我是小可爱</div>
                    </div>
                </li>

                <li>
                    <div class="kil-fl fl"><a href="course-details.ftl"><img src="upload/cou-c2.jpg"></a></div>
                    <div class="kil-fr fl">
                        <div class="kil-r1">复仇者联盟</div>
                        <div class="kil-r2">动漫<span>爱情</span><span>激情</span></div>
                        <div class="kil-r3">复仇者联盟成为真正的复仇者</div>
                        <div class="kil-r4"><img src="upload/cou-d.jpg">天啊，是我</div>
                    </div>
                </li>

                <li>
                    <div class="kil-fl fl"><a href="course-details.ftl"><img src="upload/cou-c3.jpg"></a></div>
                    <div class="kil-fr fl">
                        <div class="kil-r1">《城市之光》</div>
                        <div class="kil-r2">爱情<span>励志</span><span> </span></div>
                        <div class="kil-r3">流浪汉与卖花女的爱情故事</div>
                        <div class="kil-r4"><img src="upload/cou-d.jpg">张一山的小迷弟</div>
                    </div>
                </li>

                <li>
                    <div class="kil-fl fl"><a href="course-details.ftl"><img src="upload/cou-c4.jpg"></a></div>
                    <div class="kil-fr fl">
                        <div class="kil-r1">喜剧铁三角</div>
                        <div class="kil-r2">纪录片<span> </span><span> </span></div>
                        <div class="kil-r3">纪录片采用4K摄影机拍摄制作</div>
                        <div class="kil-r4"><img src="upload/cou-d.jpg">July</div>
                    </div>
                </li>

                <li>
                    <div class="kil-fl fl"><a href="course-details.ftl"><img src="upload/cou-c5.jpg"></a></div>
                    <div class="kil-fr fl">
                        <div class="kil-r1">玛莎和大熊</div>
                        <div class="kil-r2">搞笑<span>友谊</span><span> </span></div>
                        <div class="kil-r3">饲养员耿浩与外星人斗智斗勇</div>
                        <div class="kil-r4"><img src="upload/cou-d.jpg">星空人</div>
                    </div>
                </li>

                <li>
                    <div class="kil-fl fl"><a href="course-details.ftl"><img src="upload/cou-c6.jpg"></a></div>
                    <div class="kil-fr fl">
                        <div class="kil-r1">The Genius</div>
                        <div class="kil-r2">搞笑<span>动画</span><span>儿时</span></div>
                        <div class="kil-r3">充满童趣的故事和活泼顽皮的表演</div>
                        <div class="kil-r4"><img src="upload/cou-d.jpg">我爱林青霞</div>
                    </div>
                </li>

            </ul>
        </div>



        <div class="page m-48">
            <a href="" class="page-cut">1</a>
            <a href="">2</a>
            <a href="">》</a>
        </div>

        <div class="act-e"><a href=""><img src="upload/act-f.jpg"></a></div>
    </div>
</div>

<div class="footer">
    <div class="wrap">
        <div class="foot">
            <div class="foot-left fl">
                <a href="">关于我们</a>
                <a href="">加入我们</a>
                <a href="contact.ftl">联系我们</a>
                <a href="">媒体采访</a>
            </div>
            <div class="foot-c fl"><a href=""><img src="images/foot-logo.jpg"></a></div>
            <div class="foot-right fr">
                <a href="">同城活动</a>
                <a href="">课程资讯</a>
                <a href="">最新发布</a>
                <a href="">热门文章</a>
            </div>
        </div>
        <div class="foot-btm">电影论坛</div>
    </div>
</div>
<script src="js/jquery-1.11.1.min.js"></script>
<script src="js/jquery.SuperSlide.2.1.1.js"></script>
<script src="js/Action.js"></script>
<script type="text/javascript" src="js/layer/layer.js"></script>
<script>
    $(".cou-a1").hover(function(){
        $(this).find(".cou-inside").stop(true,true).animate({top:0},500);
    },function(){
        $(this).find(".cou-inside").stop(true,true).animate({top:201},500);
    });
</script>
<script>
    $(".sort").click(function(){
        $(this).toggleClass("sort-cut")
    })
</script>
<script>
    $(".page a").click(function(){
        $(this).addClass("page-cut").siblings().removeClass("page-cut")

    })
</script>

<script>
    $(".dropdown").bind({
        click: function () {
            $(this).find(".droplist").stop().slideDown();
        },
        mouseleave: function () {
            $(this).find(".droplist").hide();
        }
    });
    $(".dropdown .droplist li").click(function () {
        $(this).parents(".dropdown").children("span").text($(this).text());
        $(this).parents(".droplist").hide().attr("data-value", $(this).attr("data-id"));
    });
</script>
<!--注册-->
<script type="text/javascript">
    /*用户注册*/
    $("#registerBtn").click(function () {
        layer.open({
            type:2,
            title:'用户注册',
            fix:false,
            maxmin:true,
            shadeClose:true,
            area:['1100px','600px'],
            content:'/register.ftl',
            end:function() {
                window.location.href='/index.ftl';
                //getUserPageList();
            }
        });
    });

    <!--登录-->
    /*用户登录*/
    $("#loginBtn").click(function () {
        layer.open({
            type:2,
            title:'用户登录',
            fix:false,
            maxmin:true,
            shadeClose:true,
            area:['1100px','600px'],
            content:'/login.ftl',
            end:function() {
                //getUserPageList();
                window.location.href='/index.ftl';
            }
        });
    });
</script>
</body>
</html>