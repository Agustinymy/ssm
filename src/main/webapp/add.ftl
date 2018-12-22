<!DOCTYPE html>
<html>
<head>
    <meta charset=UTF-8">
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

    <form id="addUserForm">
        <br/>
        <div class="form-group">
            <label for="uname">用户名称：</label>
            <input type="text" class="form-control" id="uname" name="uname" placeholder="输入名称">
        </div>
        <div class="form-group">
            <label for="upass">用户密码：</label>
            <input type="text" class="form-control" id="upass" name="upass" placeholder="输入密码">
        </div>
        <div class="form-group">
            <label for="uage">用户年龄：</label>
            <input type="text" class="form-control" id="uage" name="uage" placeholder="输入年龄">
        </div>
        <div class="form-group">
            <label for="usex">用户性别：</label>
            <input type="text" class="form-control" id="usex" name="usex" placeholder="输入性别">
        </div>
        <div class="form-group">
            <button type="button" id="saveBtn" class="btn btn-success">提交</button>
            <button type="button" id="cancelBtn" class="btn btn-default">取消</button>
        </div>
    </form>
</div>

<script>
    var addUser = function(){
        if(!check().form()){
            return;
        }
        $.ajax({
            type: "GET",
            dataType: "json",
            url: "/user/addUser.do",
            data: {
                "uname": $("#uname").val(),
                "upass": $("#upass").val(),
                "uage":$("#uage").val(),
                "usex":$("#usex").val()
            },
            success: function(msg){
                $('#cancelBtn').click();
            }
        });
    }

    $('#saveBtn').on('click', function(){
        addUser();
    });

    $('#cancelBtn').on('click', function(){
        var index = parent.layer.getFrameIndex(window.name);
        parent.getUserPageList();
        parent.layer.close(index);
    });

    //校验字段是否正确
    function check(){
        /*返回一个validate对象，这个对象有一个form方法，返回的是是否通过验证*/
        return $("#addUserForm").validate({
            rules:{
                uname:{
                    required:true
                },
                upass:{
                    required:true
                },
                uage:{
                    required:true
                },
                usex:{
                    required:true
                }
            },
            messages:{
                uname:{
                    required:""
                },
                upass:{
                    required:""
                },
                uage:{
                    required:""
                },
                usex:{
                    required:""
                }
            }
        });
    }

</script>
</body>
</html>