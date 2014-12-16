<%@ Page Language="C#" AutoEventWireup="true" CodeFile="user_password.aspx.cs" Inherits="admin_user_password" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>修改密码界面</title>
    <link href="../css/admin.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
  <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
				<tr>
					<td height="7"></td>
				</tr>
			</table>
			<table width="96%" border="0" align="center" cellpadding="0" cellspacing="0">
				<tr>
					<td height="30" class="title_top" align="center">修改我的密码</td>
				</tr>
			</table>
<TABLE cellSpacing="1" cellPadding="3" width="96%" align="center" bgColor="#77aeee" border="0">
   <tr>
    <th style="width:120px;height:30px; background-color:#dfefff;" align="right">用户名：</th>
    <td bgcolor="#ffffff">
        <asp:Label ID="ShowUserName" runat="server"></asp:Label></td>
  </tr>
  <tr>
    <th style="height:30px;background-color:#dfefff;" align="right">新密码：</th>
    <td bgcolor="#ffffff"><asp:TextBox ID="UserPassword" runat="server" Columns="35" MaxLength="20"></asp:TextBox>
        <span class="style2">&nbsp;&nbsp;*必填项</span><br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="UserPassword"
            Display="Dynamic" ErrorMessage="请输入密码" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator runat="server" 
            ControlToValidate="UserPassword" Display="Dynamic" ValidationExpression="[a-zA-Z0-9_]{4,20}"
							ErrorMessage="密码输入错误。密码长度为4-20位，可使用的字符为（A-Z a-z 0-9 ）以及下划线“_”，注意不要使用空格。" 
            ID="Regularexpressionvalidator2" ForeColor="Red" />
            </td>
  </tr>
  <tr>
    <th style="height:30px;background-color:#dfefff;" align="right">&nbsp;</th>
    <td bgcolor="#ffffff">
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="确认修改" />　<input id="Reset1" type="reset" value="恢复默认" onclick="return Reset1_onclick()" /></td>
  </tr>
</table>
    </form>
</body>
</html>
