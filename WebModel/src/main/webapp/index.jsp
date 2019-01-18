<%--
  Created by IntelliJ IDEA.
  User: 梁学政
  Date: 2019/1/16
  Time: 12:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script type="text/javascript" src="/web/js/jquery-3.2.1.min.js"></script>
    <script type="text/javascript">
        $(function () {
            $("#btn").click(function () {
                var uname=$("#uname").val();
                var upass=$("#upass").val();
                $.ajax({
                    url:"http://127.0.0.1:8081/controller/regist.action",
                    type:"post",
                    data:{"uname":uname,"upass":upass},
                    success:function (res) {
                        alert(res)
                    },
                    error:function (res) {
                        alert("error")
                    }
                });
            });
            $(function () {
                $("#btn1").click(function () {
                   $.ajax({
                       url:"http://127.0.0.1:8081/controller/allUser.action",
                       type:"post",
                       success:function (res) {
                           var arr=eval(res);
                           for(var index in arr){
                               var userid=arr[index].userid;
                               var uname=arr[index].uname;
                               var upass=arr[index].upass;
                                $("#tab").append("<tr><td>"+userid+"</td><td>"+uname+"</td><td>"+upass+"</td></tr>")
                           }

                       },
                       error:function (res) {
                           alert("error")
                       }
                   });
                });
            });
        })
    </script>
</head>
<body>
    <form action="" method="post">
        用户名：<input id="uname" type="text" name="uname"/><br/>
        密码：<input id="upass" type="text" name="upass"/><br/>
        <input id="btn" type="button" value="注册">
    </form>
    <%--<button id="btn">访问controller</button>--%>

    <button id="btn1">查看所有用户</button><br/>

    <table id="tab">

    </table>
</body>
</html>
