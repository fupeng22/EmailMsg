<%@ Page Language="C#" AutoEventWireup="true" CodeFile="equipmenttype_manage.aspx.cs" Inherits="admin_equipmenttype_manage" %>
<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>设备类型管理界面</title>
    <link href="../Css/admin.css" rel="stylesheet" type="text/css" />
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
					<td height="30" class="title_top" align="center">设备类型列表</td>
				</tr>
			</table>
<table width="96%" border="1" align="center" cellpadding="0" cellspacing="0" bgcolor="#DFEFFF" bordercolorlight="#77AEEE">
    <tr>
	<td height="32" style="padding-left:8px;">
        <span style="font-size: 9pt">设备类型名称</span>
        <asp:TextBox ID="EquipmentTypeName" runat="server" Columns="15"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button_Find" runat="server" Text=" 搜 索 " OnClick="Button1_Click" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="LinkButton1" runat="server" Font-Size="10pt" OnClick="LinkButton1_Click">添加设备类型</asp:LinkButton></span></td>
        <!--<asp:TextBox ID="Keywords" runat="server" Columns="30"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text=" 搜 索 " OnClick="Button1_Click" />&nbsp;<span class="gray">请输入文件名称或文件说明或文件分类或ID编号</span></td>-->
    </tr>
</table>
			<table width="96%" border="0" align="center" cellpadding="0" cellspacing="0">
				<tr>
					<td>
					<asp:GridView ID="GridView1" runat="server" Width="100%"  
                            DataKeyNames ="ID" CellPadding ="4" AutoGenerateColumns="False" 
                            BackColor="#77AEEE" BorderColor="#77AEEE" BorderStyle="Solid">
                            <Columns>
                              <asp:BoundField DataField="ID" HeaderText="ID编号" ></asp:BoundField>
                                <asp:BoundField HeaderText="设备类型名称" DataField="EquipmentTypeName" />
                                <asp:HyperLinkField HeaderText="修改名称" Text="修改名称" DataNavigateUrlFields="ID" 
                                    DataNavigateUrlFormatString="equipmenttype_Info.aspx?ID={0}" >
                                <ControlStyle Font-Underline="False" ForeColor="Blue" />
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:HyperLinkField>
                                <asp:TemplateField HeaderText="编辑">
                                <ItemTemplate>
										<a href='del_equipmenttype.aspx?Action=DelEquipmentType&EquipmentTypeID=<%#Eval("ID")%>' onclick="javascript:if(confirm('您确定要删除吗？')){return true;}else{return false;}">删除</a>
								</ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                            <RowStyle HorizontalAlign="Center" BackColor="White" />
                            <HeaderStyle BackColor="#A5C8F0" Font-Size="13px" />                         
                        </asp:GridView>
					</td>
				</tr>
			</table>
			
			<table width="96%" border="0" align="center" cellpadding="0" cellspacing="0">
				<tr>
					<td style="height:26px;"><webdiyer:aspnetpager id="AspNetPager1" runat="server" horizontalalign="Center" onpagechanged="AspNetPager1_PageChanged"
        showcustominfosection="Left" width="100%" meta:resourceKey="AspNetPager1" style="font-size:14px" InputBoxStyle="width:19px"
        CustomInfoHTML="一共有<b><font color='red'>%RecordCount%</font></b>条记录 当前页<font color='red'><b>%CurrentPageIndex%/%PageCount%</b></font>   次序 %StartRecordIndex%-%EndRecordIndex%" AlwaysShow="True" FirstPageText="首页" LastPageText="尾页" NextPageText="下一页" PageSize="15" PrevPageText="上一页" CustomInfoStyle="FONT-SIZE: 12px"></webdiyer:aspnetpager></td>
				</tr>
			</table>
			<br /><br />
    </form>
</body>
</html>
