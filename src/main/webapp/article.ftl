<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>电影论坛</title>
    <link rel="stylesheet" href="css/base.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="./css/bootstrap.min.css">
    <link rel="stylesheet" href="./js/laypage/skin/laypage.css">
    <script type="text/javascript" src="./js/vue/vue.min.js"></script>
    <script type="text/javascript" src="./js/jquery/jquery.min.js"></script>
    <script type="text/javascript" src="./js/layer/layer.js"></script>
    <script type="text/javascript" src="./js/laypage/laypage.js"></script>
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
                    <li class="nav-cut"><a href="article.ftl">热榜</a>
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
                    <li><a href="course.ftl">聚焦</a></li>
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
        <div class="art-height"></div>
        <div class="art-box">
            <div class="art-b">
                <a href=""><div class="art-b1 mr-30 fl"><a href="article-details.ftl"><img src="upload/art-b1.jpeg"></a>
                        <div class="art-inside">今日焦点：陆鸣和谷小焦 不是相认 而是相识</div>
                    </div></a>
                <a href=""><div class="art-b1 fl"><a href="article-details.ftl"><img src="upload/art-b2.jpg"></a>
                        <div class="art-inside">快把我哥带走：别把我哥带走</div>
                    </div></a>

            </div>
            <div class="art-c">
                <div class="art-fl fl">
                    <div class="ru-title art-title">
                        <div class="cou-b1"><img src="images/cou-b1.jpg">焦点文章</div>
                        <div class="ru-a1">
                            <div class="sort">排序</div>
                        </div>
                        <div class="ru-a2">
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
                    <div class="tjk">
                        <ul class="art-ul">
                            <a href=""><li><div class="art-list">
                                        <div class="art-d fl"><a href="article-details.ftl"><img src="upload/col-a1.jpg"></a></div>
                                        <div class="art-e fl">
                                            <div class="col-b1">《地球脉动（Planet Earth）》</div>
                                            <div class="col-b2">我是小可爱<span>2015-11-02</span></div>
                                            <div class="col-b3">地球各地的壮观美景与奇特地貌，无数罕见动物在极端环境下猎食或相互依存的珍贵画面。</div>
                                        </div>
                                        <div class="art-f">
                                            <span><img src="images/col-c1.jpg">0</span>
                                            <span><img src="images/col-c2.jpg">3</span>
                                            <em><img src="images/col-c3.jpg"></em>
                                            <em><img src="images/col-c4.jpg"></em>
                                            <em><img src="images/col-c5.jpg"></em>
                                        </div>
                                    </div>
                                    <div class="art-g"></div>
                                </li></a>
                            <a href=""><li><div class="art-list">
                                        <div class="art-d fl"><a href="article-details.ftl"><img src="upload/col-a2.jpg"></a></div>
                                        <div class="art-e fl">
                                            <div class="col-b1">复仇者联盟3</div>
                                            <div class="col-b2">天啊，是我<span>2015-11-02</span></div>
                                            <div class="col-b3">活下来的人，黑寡妇，绿巨人，钢铁侠，美队，雷神，火箭，没有露面的鹰眼。 痛失所爱。痛失伙伴。痛失家园。 复仇者联盟，终于成为真正意义上的，复仇者。</div>
                                        </div>
                                        <div class="art-f">
                                            <span><img src="images/col-c1.jpg">0</span>
                                            <span><img src="images/col-c2.jpg">3</span>
                                            <em><img src="images/col-c3.jpg"></em>
                                            <em><img src="images/col-c4.jpg"></em>
                                            <em><img src="images/col-c5.jpg"></em>
                                        </div>
                                    </div>
                                    <div class="art-g"></div>
                                </li></a>
                            <a href=""><li><div class="art-list">
                                        <div class="art-d fl"><a href="article-details.ftl"><img src="upload/col-a3.jpg"></a></div>
                                        <div class="art-e fl">
                                            <div class="col-b1">《城市之光》</div>
                                            <div class="col-b2">张一山的小迷弟<span>2015-11-02</span></div>
                                            <div class="col-b3">一个流浪汉与卖花女的爱情故事</div>
                                        </div>
                                        <div class="art-f">
                                            <span><img src="images/col-c1.jpg">0</span>
                                            <span><img src="images/col-c2.jpg">3</span>
                                            <em><img src="images/col-c3.jpg"></em>
                                            <em><img src="images/col-c4.jpg"></em>
                                            <em><img src="images/col-c5.jpg"></em>
                                        </div>
                                    </div>
                                    <div class="art-g"></div>
                                </li></a>
                            <a href=""><li><div class="art-list">
                                        <div class="art-d fl"><a href="article-details.ftl"><img src="upload/col-a4.jpg"></a></div>
                                        <div class="art-e fl">
                                            <div class="col-b1">宁浩黄渤沈腾“喜剧铁三角”疯狂回归</div>
                                            <div class="col-b2">星空人<span>2015-11-02</span></div>
                                            <div class="col-b3">动物饲养员耿浩和他的朋友大飞与一个外星人斗智斗勇</div>
                                        </div>
                                        <div class="art-f">
                                            <span><img src="images/col-c1.jpg">0</span>
                                            <span><img src="images/col-c2.jpg">3</span>
                                            <em><img src="images/col-c3.jpg"></em>
                                            <em><img src="images/col-c4.jpg"></em>
                                            <em><img src="images/col-c5.jpg"></em>
                                        </div>
                                    </div>
                                    <div class="art-g"></div>
                                </li></a>
                            <a href=""><li><div class="art-list">
                                        <div class="art-d fl"><a href="article-details.ftl"><img src="upload/col-a5.jpg"></a></div>
                                        <div class="art-e fl">
                                            <div class="col-b1">《地球脉动》第二季正式回归</div>
                                            <div class="col-b2">July<span>2015-11-02</span></div>
                                            <div class="col-b3">全新的纪录片采用4K摄影机拍摄制作，同时部分镜头采用无人机拍摄及远程控制拍摄</div>
                                        </div>
                                        <div class="art-f">
                                            <span><img src="images/col-c1.jpg">0</span>
                                            <span><img src="images/col-c2.jpg">3</span>
                                            <em><img src="images/col-c3.jpg"></em>
                                            <em><img src="images/col-c4.jpg"></em>
                                            <em><img src="images/col-c5.jpg"></em>
                                        </div>
                                    </div>
                                    <div class="art-g"></div>
                                </li></a>
                            <a href=""><li><div class="art-list">
                                        <div class="art-d fl"><a href="article-details.ftl"><img src="upload/col-a6.jpg"></a></div>
                                        <div class="art-e fl">
                                            <div class="col-b1">《The Genius》</div>
                                            <div class="col-b2">我爱林青霞<span>2015-11-02</span></div>
                                            <div class="col-b3">韩国TVN电视台的心理战游戏综艺节目，该节目将邀请到十三位各界精英参赛，透过游戏进行玩家间的心理攻防战，每集淘汰一名参赛者，游戏最初每位玩家都有一个宝石筹码，每个宝石筹码价值100万元，通过游戏赚取宝石筹码，最终胜利时可以兑换相应金额的奖金。</div>
                                        </div>
                                        <div class="art-f">
                                            <span><img src="images/col-c1.jpg">0</span>
                                            <span><img src="images/col-c2.jpg">3</span>
                                            <em><img src="images/col-c3.jpg"></em>
                                            <em><img src="images/col-c4.jpg"></em>
                                            <em><img src="images/col-c5.jpg"></em>
                                        </div>
                                    </div>
                                    <div class="art-g"></div>
                                </li></a>
                            <a href=""><li><div class="art-list">
                                        <div class="art-d fl"><a href="article-details.ftl"><img src="upload/col-a7.jpg"></a></div>
                                        <div class="art-e fl">
                                            <div class="col-b1">可爱、伶俐的玛莎和憨态可掬的大熊</div>
                                            <div class="col-b2">小电影达人<span>2015-11-02</span></div>
                                            <div class="col-b3">充满了童趣的故事、热闹轻松的情节、和活泼顽皮的表演</div>
                                        </div>
                                        <div class="art-f">
                                            <span><img src="images/col-c1.jpg">0</span>
                                            <span><img src="images/col-c2.jpg">3</span>
                                            <em><img src="images/col-c3.jpg"></em>
                                            <em><img src="images/col-c4.jpg"></em>
                                            <em><img src="images/col-c5.jpg"></em>
                                        </div>
                                    </div>
                                    <div class="art-g"></div>
                                </li></a>
                            <a href=""><li><div class="art-list">
                                        <div class="art-d fl"><a href="article-details.ftl"><img src="upload/col-a8.jpg"></a></div>
                                        <div class="art-e fl">
                                            <div class="col-b1">纳米比亚沙漠的美景</div>
                                            <div class="col-b2">奥丁·蓝<span>2015-11-02</span></div>
                                            <div class="col-b3">红白沙漠、绿洲与卡里哈利沙漠中的动物居民</div>
                                        </div>
                                        <div class="art-f">
                                            <span><img src="images/col-c1.jpg">0</span>
                                            <span><img src="images/col-c2.jpg">3</span>
                                            <em><img src="images/col-c3.jpg"></em>
                                            <em><img src="images/col-c4.jpg"></em>
                                            <em><img src="images/col-c5.jpg"></em>
                                        </div>
                                    </div>
                                    <div class="art-g"></div>
                                </li></a>
                            <a href=""><li><div class="art-list">
                                        <div class="art-d fl"><a href="article-details.ftl"><img src="upload/col-a9.jpg"></a></div>
                                        <div class="art-e fl">
                                            <div class="col-b1">你最难忘的一个人物特写镜头来自哪部电影？</div>
                                            <div class="col-b2">Fan Francis<span>2015-11-02</span></div>
                                            <div class="col-b3">张静初在孔雀里面兜降落伞骑车；周迅从外白渡桥倒跳苏州河； 郝蕾侧卧在没水的游泳池底呼吸氧气；</div>
                                        </div>
                                        <div class="art-f">
                                            <span><img src="images/col-c1.jpg">0</span>
                                            <span><img src="images/col-c2.jpg">3</span>
                                            <em><img src="images/col-c3.jpg"></em>
                                            <em><img src="images/col-c4.jpg"></em>
                                            <em><img src="images/col-c5.jpg"></em>
                                        </div>
                                    </div>
                                    <div class="art-g"></div>
                                </li></a>
                        </ul>
                    </div>
                    <div class="more"><a href="">查看更多>></a></div>

                </div>

                <div class="art-fr fr">
                    <div class="post-y art-gg">
                        <div class="post-y1"><img src="images/cou-b1.jpg">最新文章</div>
                        <ul>
                            <a href=""><li>
                                    <div class="post-y2"><a href="article-details.ftl"><img src="upload/post-a41.jpg"></a></div>
                                    <div class="post-y3">好莱坞教父的9分剧，我就是智慧，来吸我吧！</div>

                                </li></a>

                            <a href=""><li>
                                    <div class="post-y2"><a href="article-details.ftl"><img src="upload/post-a42.jpg"></a></div>
                                    <div class="post-y3">有哪些你特别喜欢的电影片段？</div>

                                </li></a>

                            <a href=""><li>
                                    <div class="post-y2"><a href="article-details.ftl"><img src="upload/post-a43.jpg"></a></div>
                                    <div class="post-y3">有什么你一看到就蹦起来找本子摘抄的句子或台词？</div>

                                </li></a>

                            <a href=""><li>
                                    <div class="post-y2"><a href="article-details.ftl"><img src="upload/post-a44.jpg"></a></div>
                                    <div class="post-y3">在拍摄电影时，有哪些业外人士想象不到的场景或事件？</div>
                             </li></a>
                        </ul>
                    </div>
                    <div class="fish"><a href=""><img src="upload/ru-c1.jpg"></a></div>
                </div>
            </div>
        </div>
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
    $(".sort").click(function(){
        $(this).toggleClass("sort-cut")
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