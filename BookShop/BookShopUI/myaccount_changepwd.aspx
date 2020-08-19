<%@ Page Language="C#" AutoEventWireup="true" CodeFile="myaccount_changepwd.aspx.cs" Inherits="myaccount_changepwd" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="css/myaccount_changepwd.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="OperateTitle">
				<div>【 修改密码 】 </div>
			</div>
			<div class="cpwd">
				<p>
					<span>旧密码：</span><input type="password" />
				</p>
				<p>
					<span>新密码：</span><input type="password" />
				</p>
				<p>
					<span>确认密码：</span><input type="password" />
				</p>
				<div class="btns">
					<input type="button" value="确定" />
				</div>
			</div>
    </form>
</body>
</html>
