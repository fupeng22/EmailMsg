<%@ Page Language="C#" AutoEventWireup="true" CodeFile="User_add.aspx.cs" Inherits="admin_User_add" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>新用户添加页面</title>
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
					<td height="30" class="title_top" align="center">添加新用户的资料</td>
				</tr>
			</table>
<TABLE cellSpacing="1" cellPadding="3" width="96%" align="center" bgColor="#77aeee" border="0">
   
  <tr>
    <th style="height:30px;background-color:#dfefff;" align="right">用户名：</th>
    <td bgcolor="#ffffff"><asp:TextBox ID="UserName" runat="server" Columns="35" MaxLength="20"></asp:TextBox>
    <span class="style2">&nbsp;&nbsp;*必填项</span>
        <br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="UserName"
            Display="Dynamic" ErrorMessage="请输入用户名" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
  </tr>
  <tr>
                    <th align="right" bgcolor="#dfefff" style="height:25px">密码：</th>
                        <td bgcolor="#ffffff"><asp:TextBox ID="UserPassword" runat="server" Columns="35" MaxLength="20"></asp:TextBox>
        <br /><asp:RequiredFieldValidator  ID="RequiredFieldValidator1" runat="server" ControlToValidate="UserPassword"
            Display="Dynamic" ErrorMessage="请输入密码" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator runat="server" ControlToValidate="UserPassword" 
                                Display="Dynamic" ValidationExpression="[a-zA-Z0-9_]{4,20}"
							ErrorMessage="密码输入错误。密码长度为4-20位，可使用的字符为（A-Z a-z 0-9 ）以及下划线“_”，注意不要使用空格。" 
                                ID="Regularexpressionvalidator2" ForeColor="Red" />
            </td>
           </tr>
  <tr>
    <th style="height:30px;background-color:#dfefff;" align="right">人员姓名：</th>
    <td bgcolor="#ffffff"><asp:DropDownList id="ddlWorkerName" runat="server" 
            AutoPostBack="True" onselectedindexchanged="ddlWorkerName_SelectedIndexChanged" ></asp:DropDownList>
        <span class="style2">&nbsp;&nbsp;*必填项</span>
        <br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="ddlWorkerName"
            Display="Dynamic" ErrorMessage="请输入人员姓名" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
  </tr>
  <tr>
    <th style="height:30px;background-color:#dfefff;" align="right">&nbsp;</th>
    <td bgcolor="#ffffff">
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="添加" />&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button id="btnCancel" runat="server" Text="返回" OnClick="btnCancel_Click" CausesValidation="False" ></asp:Button></td>
        </td>
  </tr>
</table>
    </form>
</body>
</html>
