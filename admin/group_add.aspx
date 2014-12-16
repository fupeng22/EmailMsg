<%@ Page Language="C#" AutoEventWireup="true" CodeFile="group_add.aspx.cs" Inherits="admin_group_add" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>新部门添加页面</title>
    <link href="../css/admin.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript">
        function openNew() {
            var num = Math.round(Math.random() * 10000);
            var strWidth = "400px";
            var strHeight = "600px";
            var robj = showModalDialog("group_select.aspx?temp=" + num, window, "dialogHeight='" + strHeight + "';dialogWidth='" + strWidth + "';status=no;scroll=yes;help=no");
            if (robj) {
                var jsonMsg = eval("(" + robj + ")");
                document.getElementById("txtGroupName").value = jsonMsg.GroupName;
                document.getElementById("hid_GroupId").value = jsonMsg.GroupId;
            }
        }  
    </script>
</head>
<body>
    <form id="formMain" runat="server">
    <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
            <td height="7">
            </td>
        </tr>
    </table>
    <table width="96%" border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
            <td height="30" class="title_top" align="center">
                添加新部门的资料
            </td>
        </tr>
    </table>
    <table cellspacing="1" cellpadding="3" width="96%" align="center" bgcolor="#77aeee"
        border="0">
        <tr>
            <th style="height: 30px; background-color: #dfefff;" align="right">
                部门名称：
            </th>
            <td bgcolor="#ffffff">
                <asp:TextBox ID="GroupName" runat="server" Columns="35" MaxLength="20"></asp:TextBox>
                <span class="style2">&nbsp;&nbsp;*必填项</span>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="GroupName"
                    Display="Dynamic" ErrorMessage="请输入部门名称" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <%-- <tr>
            <th style="height: 30px; background-color: #dfefff;" align="right">
                上级部门名称：
            </th>
            <td bgcolor="#ffffff">
                <asp:DropDownList ID="ddlGroupUpName" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlGroupUpName_SelectedIndexChanged">
                </asp:DropDownList>
                <span class="style2">&nbsp;&nbsp;*必填项</span>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="ddlGroupUpName"
                    Display="Dynamic" ErrorMessage="请输入上级部门名称" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>--%>
        <tr>
            <th style="height: 30px; background-color: #dfefff;" align="right">
                上级部门名称：
            </th>
            <td bgcolor="#ffffff">
                <input type="text" id="txtGroupName" name="txtGroupName" onclick="openNew();" runat="server"
                    readonly />
                <span class="style2">&nbsp;&nbsp;*必填项</span>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtGroupName"
                    Display="Dynamic" ErrorMessage="请选择上级部门名称" ForeColor="Red"></asp:RequiredFieldValidator>
                <input type="hidden" id="hid_GroupId" name="hid_GroupId" runat="server" />
            </td>
        </tr>
        <tr>
            <th style="height: 30px; background-color: #dfefff;" align="right">
                &nbsp;
            </th>
            <td bgcolor="#ffffff">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="添加" />&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnCancel" runat="server" Text="返回" OnClick="btnCancel_Click" CausesValidation="False">
                </asp:Button>
            </td>
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
