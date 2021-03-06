<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <script src="js/jquery/jquery.min.js"></script>
    <script src="js/jquery.validation/1.14.0/jquery.validate.min.js"></script>
    <script src="js/jquery.validation/1.14.0/messages_zh.min.js"></script>
    <style>
        input.error{
            border: 1px solid #E6594E;
        }
    </style>
</head>
<body>
<div class="container">
    <form id="loginForm">
        <br/>
        <div class="form-group">
            <label for="uname">用户名：</label>
            <input type="text" class="form-control" id="uname" name="uname" placeholder="输入用户名">
        </div>
        <div class="form-group">
            <label for="upass">密码：</label>
            <input type="text" class="form-control" id="upass" name="upass" placeholder="输入密码">
        </div>
        <div class="form-group">
            <button type="button" id="saveBtn" class="btn btn-success">提交</button>
            <button type="button" id="cancelBtn" class="btn btn-default">取消</button>
        </div>
    </form>
</div>

<script>
    var loginUser = function(){
        if(!check().form()){
            return;
        }
        $.ajax({
            type: "GET",
            dataType: "json",
            url: "/user/login.do",
            data: {
                "uname": $("#uname").val(),
                "upass": $("#upass").val()
            },
            success: function(msg){
                if (msg=1){
                    alert("登录成功");
                    $('#cancelBtn').click();
                } else {
                    alert("登录失败");
                }
            }
        });
    }

    $('#saveBtn').on('click', function(){
        loginUser();
    });

    $('#cancelBtn').on('click', function(){
        var index = parent.layer.getFrameIndex(window.name);
        parent.getUserPageList();
        parent.layer.close(index);
    });

    //校验字段是否正确
    function check(){
        /*返回一个validate对象，这个对象有一个form方法，返回的是是否通过验证*/
        return $("#loginForm").validate({
            rules:{
                uname:{
                    required:true
                },
                upass:{
                    required:true
                }
            },
            messages:{
                uname:{
                    required:""
                },
                upass:{
                    required:""
                }
            }
        });
    }
</script>
</body>
</html>