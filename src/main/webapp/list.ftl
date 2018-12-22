<!DOCTYPE html>
<html>
<head>
    <meta charset=UTF-8">
    <title>Insert title here</title>
    <link rel="stylesheet" href="/css/bootstrap.min.css">
    <link rel="stylesheet" href="/js/laypage/skin/laypage.css">
    <script type="text/javascript" src="/js/vue/vue.min.js"></script>
    <script type="text/javascript" src="/js/jquery/jquery.min.js"></script>
    <script type="text/javascript" src="/js/layer/layer.js"></script>
    <script type="text/javascript" src="/js/laypage/laypage.js"></script>
</head>
<body>
<div id="app" class="container">

    <form class="form-inline bg-danger" role="form">
        查询条件:
        <div class="form-group">
            <label class="sr-only" for="uname">用户名称</label>
            <input type="text" class="form-control" id="uname" placeholder="用户名称">
        </div>
        <div class="form-group">
            <label class="sr-only" for="uage">用户年龄</label>
            <input type="text" class="form-control" id="uage" placeholder="用户年龄">
        </div>
        <div class="form-group">
            <label class="sr-only" for="usex">用户性别</label>
            <input type="text" class="form-control" id="usex" placeholder="用户性别">
        </div>
        <button type="button" id="findUser" class="btn btn-success">查询用户</button>
        <button type="button" id="addUserBtn" class="btn btn-danger">增加用户</button>
        <button type="button" id="loginBtn" class="btn btn-success">登录</button>
        <button type="button" id="registerBtn" class="btn btn-danger">注册</button>
    </form>
    <div class="table-responsive">
        <table class="table">
            <thead>
            <tr class="success">
                <td>序号</td>
                <td>用户</td>
                <td>年龄</td>
                <td>性别</td>
                <td>操作</td>
            </tr>
            </thead>
            <tbody>
            <tr class="active" v-for="(item,index) in result">
                <td>{{index+1}}</td>
                <td>{{item.uname}}</td>
                <td>{{item.uage}}</td>
                <td>{{item.usex}}</td>
                <td><a href="#" @click="editEvent(item.uid)">修改</a> <a href="#" @click="delEvent(item.uid)">删除</a></td>
            </tr>
            </tbody>
        </table>
        <div id="pagenav"></div>
    </div>
</div>
<script type="text/javascript">
    var app = new Vue({
        el:'#app',
        data:{
            result:[]
        }
    });

    var getUserPageList = function(curr) {
        $.ajax({
            type:'get',
            dataType:'json',
            url:'/user/getPage.do',
            data:{
                pageNum: curr || 1,
                pageSize:5,
                uname:$("#uname").val()
            },
            success:function(msg){
                app.result = msg.page;
                laypage({
                    cont:'pagenav',
                    pages:msg.totalPage,
                    first:'首页',
                    last:'尾页',
                    skin: '#00A0E9',
                    curr: curr || 1,
                    jump: function (obj, first) {
                        if (!first) {
                            getUserPageList(obj.curr);
                        }
                    }
                });
            }
        });
    }

    getUserPageList();

    /*查询用户*/
    $("#findUser").click(function () {
        getUserPageList();
    });

    /*增加用户*/
    $("#addUserBtn").click(function () {
        layer.open({
            type:2,
            title:'添加用户',
            fix:false,
            maxmin:true,
            shadeClose:true,
            area:['1100px','600px'],
            content:'/add.ftl',
            end:function() {
                getUserPageList();
            }
        });
    });

    /*修改用户*/
    var editEvent = function (uid) {
        //alert(uid);
        layer.open({
            type:2,
            title: '修改用户',
            fix:false,
            maxmin:true,
            shadeClose:true,
            area:['1100px','600px'],
            content:'/user/getUserByUid.do?uid='+uid,
            end:function() {
                getUserPageList();
            }
        });
    }

    /*删除用户*/
    var delEvent = function (uid) {
        alert(uid);
        layer.confirm('你确定要删除吗？',{
            btn:['是','否']
        },function () {
            $.ajax({
                type:'GET',
                dataType:'json',
                url: '/user/deleteUser.do',
                data:{uid:uid},
                success:function (msg) {
                    getUserPageList();
                    layer.msg('成功删除用户' + uid,{icon:5});
                }
            })
        },function () {
            
        });
    }

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
                getUserPageList();
            }
        });
    });

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
                getUserPageList();
            }
        });
    });


</script>
</body>
</html>