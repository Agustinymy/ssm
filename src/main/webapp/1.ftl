<!DOCTYPE html>
<html>
<head>
    <meta charset=UTF-8">
    <title>Insert title here</title>
</head>
<body>

${username}
    <hr/>
${user.userName}
    <hr/>

${(user.userName)!"为空"}


${Session['user'].uname}
</body>
</html>