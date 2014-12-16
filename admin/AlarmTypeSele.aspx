<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AlarmTypeSele.aspx.cs" Inherits="admin_AlarmTypeSele" %>

<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>选择报警类型</title>
    <link href="../Css/admin.css" rel="stylesheet" type="text/css" />
    <script src="../Scripts/jquery-1.4.4.min.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(function () {
            function confirmSele(AlarmTypeId, AlarmTypeName) {
                window.returnValue = '{"AlarmTypeId":"' + AlarmTypeId + '","AlarmTypeName":"' + AlarmTypeName + '"}';
                window.close();
            }

            var btnSele = $(".cls_btnSele");
            $.each(btnSele, function (i, item) {
                $(item).click(function () {
                    confirmSele($(item).attr("alarmtypeid"), $(item).attr("alarmtypename"));
                });
            });
        });
    </script>
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
                报警类型列表
            </td>
        </tr>
    </table>
    <table width="96%" border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" Width="100%" DataKeyNames="cID" CellPadding="4"
                    AutoGenerateColumns="False" BackColor="#77AEEE" BorderColor="#77AEEE" BorderStyle="Solid"
                    OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                    <Columns>
                        <asp:BoundField DataField="cID" HeaderText="ID编号"></asp:BoundField>
                        <asp:BoundField HeaderText="报警类型名称" DataField="AlarmTypeName" />
                        <asp:TemplateField HeaderText="操作">
                            <ItemTemplate>
                                <input class="cls_btnSele" type="button" alarmtypeid='<%#Eval("cID")%>' alarmtypename='<%#Eval("AlarmTypeName")%>'
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
