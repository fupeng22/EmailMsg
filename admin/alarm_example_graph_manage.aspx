<%@ Page Language="C#" AutoEventWireup="true" CodeFile="alarm_example_graph_manage.aspx.cs"
    Inherits="admin_alarm_example_graph_manage" %>

<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>报警示意图设置</title>
    <link href="../Css/admin.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="../Scripts/DateAndTime.js"></script>
    <script type="text/javascript" src="../Scripts/Calendar_1.js" language="javascript"></script>
    <style type="text/css">
        .style1
        {
            height: 32px;
        }
    </style>
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
                报警示意图列表
            </td>
        </tr>
    </table>
    <table width="96%" border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
            <td   class="title_top" align="center">
                <a href="alarm_example_graph_add.aspx">添加报警示意图</a>
            </td>
        </tr>
    </table>
    <table width="96%" border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" Width="100%" DataKeyNames="cId" CellPadding="4"
                    AutoGenerateColumns="False" BackColor="#77AEEE" BorderColor="#77AEEE" BorderStyle="Solid"
                    OnRowDataBound="GridView1_RowDataBound">
                    <Columns>
                        <asp:BoundField DataField="cId" HeaderText="故障编号"></asp:BoundField>
                        <asp:BoundField DataField="AlarmTypeName" HeaderText="故障描述"></asp:BoundField>
                        <asp:BoundField HeaderText="示意图名称" DataField="graphName" />
                        <asp:TemplateField HeaderText="操作">
                            <ItemTemplate>
                                <a target="_blank" href='exampleGraphView.aspx?exampleGraphPath=<%#Eval("graphPath")%>'>
                                    查看</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;<a href='alarm_example_graph_update.aspx?cId=<%#Eval("cId")%>'>修改</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;<a
                                        href='del_alarmexamplegraph.aspx?cId=<%#Eval("cId")%>' onclick="javascript:if(confirm('您确定要删除吗？')){return true;}else{return false;}">删除</a>
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
            <td style="height: 26px;">
                <webdiyer:AspNetPager ID="AspNetPager1" runat="server" HorizontalAlign="Center" OnPageChanged="AspNetPager1_PageChanged"
                    ShowCustomInfoSection="Left" Width="100%" meta:resourcekey="AspNetPager1" Style="font-size: 14px"
                    InputBoxStyle="width:19px" CustomInfoHTML="一共有<b><font color='red'>%RecordCount%</font></b>条记录 当前页<font color='red'><b>%CurrentPageIndex%/%PageCount%</b></font>   次序 %StartRecordIndex%-%EndRecordIndex%"
                    AlwaysShow="True" FirstPageText="首页" LastPageText="尾页" NextPageText="下一页" PageSize="15"
                    PrevPageText="上一页" CustomInfoStyle="FONT-SIZE: 12px">
                </webdiyer:AspNetPager>
            </td>
        </tr>
    </table>
    <br />
    <br />
    </form>
</body>
</html>
