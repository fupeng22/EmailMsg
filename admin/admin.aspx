<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admin.aspx.cs" Inherits="admin_admin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>邮件转发管理主页面</title>
    <link href="../Css/css.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        #__01
        {
            height: 812px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <table align="center" id="__01" border="0" cellpadding="0" cellspacing="0" width="1003">
        <!-- <tr>
                            <td width="10">
                                &nbsp;</td>
                            <td width="144">
                                &nbsp;</td>
                            <td width="55">
                                &nbsp;</td>
                            <td class="huise" width="770">
                                &nbsp;</td>
                        </tr>-->
        <tr>
            <td colspan="2">
                <img alt="" border="0" height="93" src="../images/guanli_01.jpg" usemap="#Map" width="1003" />
            </td>
        </tr>
        <tr>
            <td>
                <img alt="" height="33" src="../images/guanli_02.jpg" width="182" />
            </td>
            <td background="../images/guanli_03.jpg" height="33" width="821">
                <table cellpadding="0" cellspacing="0" width="589">
                    <tr>
                        <td width="41">
                            &nbsp;
                        </td>
                        <td class="huise" width="546">
                            现在的位置：邮件转发管理系统 &gt; <span class="hong">管理模式主页面</span>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td background="../images/guanli_04.jpg" colspan="2" height="420" valign="top">
                <table cellpadding="0" cellspacing="0" width="981">
                </table>
                <table cellpadding="0" cellspacing="0" style="width: 991px">
                    <tr>
                        <td style="width: 185px; height: 374px; vertical-align: top;">
                            <asp:TreeView ID="TreeView1" runat="server" ImageSet="Simple" Width="86px" align="center"
                                Height="16px">
                                <ParentNodeStyle Font-Bold="False" />
                                <HoverNodeStyle Font-Underline="True" ForeColor="#5555DD" />
                                <SelectedNodeStyle Font-Underline="True" ForeColor="#5555DD" HorizontalPadding="0px"
                                    VerticalPadding="0px" />
                                <Nodes>
                                    <asp:TreeNode Text="人员部门管理" Value="人员部门管理">
                                        <asp:TreeNode Text="部门信息管理" Value="部门信息管理" NavigateUrl="~/admin/group_manage.aspx"
                                            Target="mainFrame"></asp:TreeNode>
                                        <asp:TreeNode Text="人员信息管理" Value="人员信息管理" NavigateUrl="~/admin/worker_manage.aspx"
                                            Target="mainFrame"></asp:TreeNode>
                                    </asp:TreeNode>
                                    <asp:TreeNode Text="NVR设备管理" Value="NVR设备管理">
                                        <asp:TreeNode Text="NVR设备管理" Value="NVR设备管理" NavigateUrl="~/admin/NVRInfo_manage.aspx"
                                            Target="mainFrame"></asp:TreeNode>
                                    </asp:TreeNode>
                                    <asp:TreeNode Text="设备控制管理" Value="设备控制管理">
                                        <asp:TreeNode Text="设备类型管理" Value="设备类型管理" NavigateUrl="~/admin/equipmenttype_manage.aspx"
                                            Target="mainFrame"></asp:TreeNode>
                                        <asp:TreeNode Text="设备基本信息" Value="设备基本信息" NavigateUrl="~/admin/equipmentinfo_manage.aspx"
                                            Target="mainFrame"></asp:TreeNode>
                                    </asp:TreeNode>
                                    <asp:TreeNode Text="报警类型管理" Value="报警类型管理">
                                        <asp:TreeNode Text="示意图信息" Value="示意图信息" NavigateUrl="~/admin/example_graph_manage.aspx"
                                            Target="mainFrame"></asp:TreeNode>
                                        <asp:TreeNode Text="报警类型信息" Value="报警类型信息" NavigateUrl="~/admin/alarm_manage.aspx"
                                            Target="mainFrame"></asp:TreeNode>
                                        <asp:TreeNode Text="报警示意图设置" Value="报警示意图设置" NavigateUrl="~/admin/alarm_example_graph_manage.aspx"
                                            Target="mainFrame"></asp:TreeNode>
                                    </asp:TreeNode>
                                    <asp:TreeNode Text="筛选信息管理" Value="筛选信息管理">
                                        <asp:TreeNode Text="筛选报警类型" Value="筛选报警类型" NavigateUrl="~/admin/selectalarm_manage.aspx"
                                            Target="mainFrame"></asp:TreeNode>
                                        <asp:TreeNode Text="筛选岗位设备" Value="筛选岗位设备" NavigateUrl="~/admin/selectequipment_manage.aspx"
                                            Target="mainFrame"></asp:TreeNode>
                                    </asp:TreeNode>
                                    <asp:TreeNode Text="接收信息管理" Value="接收信息管理">
                                        <asp:TreeNode Text="接收信息存储" Value="接收信息存储" NavigateUrl="~/admin/receivemsg_manage.aspx"
                                            Target="mainFrame"></asp:TreeNode>
                                    </asp:TreeNode>
                                    <asp:TreeNode Text="用户信息管理" Value="用户信息管理">
                                        <asp:TreeNode Text="修改密码" Value="修改密码" NavigateUrl="~/admin/user_password.aspx" Target="mainFrame">
                                        </asp:TreeNode>
                                        <asp:TreeNode Text="用户管理" Value="用户管理" NavigateUrl="~/admin/user_manage.aspx" Target="mainFrame">
                                        </asp:TreeNode>
                                    </asp:TreeNode>
                                    <asp:TreeNode Text="电子地图管理" Value="电子地图管理">
                                        <asp:TreeNode Text="地图设计" Value="地图设计" NavigateUrl="~/admin/map/mapMain.aspx" Target="_blank">
                                        </asp:TreeNode>
                                        <asp:TreeNode Text="地图监控" Value="地图监控" NavigateUrl="~/admin/map/MapPotViewMain.aspx"
                                            Target="_blank"></asp:TreeNode>
                                    </asp:TreeNode>
                                    <asp:TreeNode Text="关于系统" Value="关于系统">
                                        <asp:TreeNode Text="退出管理" Value="退出管理" NavigateUrl="~/Default.aspx"></asp:TreeNode>
                                    </asp:TreeNode>
                                </Nodes>
                                <NodeStyle Font-Names="Tahoma" Font-Size="10pt" ForeColor="Black" HorizontalPadding="0px"
                                    NodeSpacing="0px" VerticalPadding="0px" />
                            </asp:TreeView>
                        </td>
                        <td style="height: 374px; vertical-align: top;">
                            <iframe id="iframe1" name="mainFrame" style="width: 802px; height: 625px" frameborder="0">
                            </iframe>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td background="../images/guanli_05.jpg" colspan="2" height="62" valign="top">
                <table align="center" cellpadding="0" cellspacing="0" height="39" width="488">
                    <tr>
                        <td align="center" height="39">
                            <span class="huise">公司网址：www.chinabetter.com &nbsp;&nbsp; 上海贝通电子科技有限公司 版权所有</span>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    <!-- End ImageReady Slices -->
    <map name="Map">
        <!--<area coords="820,63,906,89" href="../Default.aspx" shape="RECT" />-->
        <area coords="909,61,994,89" href="../Default.aspx" shape="RECT" />
    </map>
    </form>
</body>
</html>
