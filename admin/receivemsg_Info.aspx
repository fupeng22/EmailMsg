﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="receivemsg_Info.aspx.cs"
    Inherits="admin_receivemsg_Info" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>接收数据详细信息界面</title>
    <link href="../css/admin.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
            <td height="7">
            </td>
        </tr>
    </table>
    <table width="96%" border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
            <td height="30" class="title_top" align="center">
                接收数据的信息
            </td>
        </tr>
    </table>
    <table cellspacing="1" cellpadding="3" width="96%" align="center" bgcolor="#77aeee"
        border="0">
        <tr>
            <th style="width: 120px; height: 30px; background-color: #dfefff;" align="right">
                ID编号：
            </th>
            <td bgcolor="#ffffff">
                <asp:Label ID="ShowReceivemsgID" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <th style="height: 30px; background-color: #dfefff;" align="right">
                接收内容：
            </th>
            <td bgcolor="#ffffff">
                <asp:TextBox ID="ReceiveMsg" runat="server" Columns="35" MaxLength="20"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <th style="height: 30px; background-color: #dfefff;" align="right">
                接收时间：
            </th>
            <td bgcolor="#ffffff">
                <asp:TextBox ID="ReceiveTime" runat="server" Columns="35" MaxLength="20"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <th style="height: 30px; background-color: #dfefff;" align="right">
                处理结果：
            </th>
            <td bgcolor="#ffffff">
                <asp:TextBox ID="IsResult" runat="server" Columns="35" MaxLength="20"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <th style="height: 30px; background-color: #dfefff;" align="right">
                &nbsp;
            </th>
            <td bgcolor="#ffffff">
                <asp:Button ID="btnCancel" runat="server" Text="返回" OnClick="btnCancel_Click" CausesValidation="False">
                </asp:Button>
            </td>
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
