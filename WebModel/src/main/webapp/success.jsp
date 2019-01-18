<%--
  Created by IntelliJ IDEA.
  User: 梁学政
  Date: 2019/1/16
  Time: 17:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script type="text/javascript" src="/web/js/jquery-3.2.1.min.js"></script>
    <script type="text/javascript">
        $(function () {
            var res="<%=request.getParameter("res")%>";
            var arr=eval(res);
            for(var index in arr){
                var userid=arr[index].userid;
                var uname=arr[index].uname;
                var upass=arr[index].upass;
                $("#tab").append("<tr><td>"+userid+"</td><td>"+uname+"</td><td>"+upass+"</td></tr>")
            }
        })
    </script>
</head>
<body>
<table id="tab">

</table>
</body>
</html>
