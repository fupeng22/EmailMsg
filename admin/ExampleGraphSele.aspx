<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ExampleGraphSele.aspx.cs"
    Inherits="admin_ExampleGraphSele" %>

<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>选择示意图</title>
    <link href="../Css/admin.css" rel="stylesheet" type="text/css" />
    <script src="../Scripts/jquery-1.4.4.min.js" type="text/javascript"></script>
    <style type="text/css">
        .style1
        {
            height: 32px;
        }
    </style>
    <script type="text/javascript">
        $(function () {
            function confirmSele(ExampleGraphId, ExampleGraphName) {
                window.returnValue = '{"ExampleGraphId":"' + ExampleGraphId + '","ExampleGraphName":"' + ExampleGraphName + '"}';
                window.close();
            }

            var btnSele = $(".cls_btnSele");
            $.each(btnSele, function (i, item) {
                $(item).click(function () {
                    confirmSele($(item).attr("ExampleGraphId"), $(item).attr("ExampleGraphName"));
                });
            });
        });
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <table width="96%" border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
            <td height="30" class="title_top" align="center">
                示意图列表
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
                        <asp:BoundField DataField="cId" HeaderText="ID编号"></asp:BoundField>
                        <asp:BoundField HeaderText="示意图名称" DataField="graphName" />
                        <asp:TemplateField HeaderText="操作">
                            <ItemTemplate>
                                <input class="cls_btnSele" type="button" examplegraphid='<%#Eval("cId")%>' examplegraphname='<%#Eval("graphName")%>'
                                    value="选择" />
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
