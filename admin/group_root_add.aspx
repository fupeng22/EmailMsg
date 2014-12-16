<%@ Page Language="C#" AutoEventWireup="true" CodeFile="group_root_add.aspx.cs" Inherits="admin_group_root_add" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title>根节点添加页面</title>
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
					<td height="30" class="title_top" align="center">添加新的根节点</td>
				</tr>
			</table>
<TABLE cellSpacing="1" cellPadding="3" width="96%" align="center" bgColor="#77aeee" border="0">
   
  <tr>
    <th style="height:30px;background-color:#dfefff;" align="right">根节点名称：</th>
    <td bgcolor="#ffffff"><asp:TextBox ID="GroupName" runat="server" Columns="35" MaxLength="20"></asp:TextBox>
    <span class="style2">&nbsp;&nbsp;*必填项</span>
        <br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="GroupName"
            Display="Dynamic" ErrorMessage="请输入根节点名称" ForeColor="Red"></asp:RequiredFieldValidator>
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
