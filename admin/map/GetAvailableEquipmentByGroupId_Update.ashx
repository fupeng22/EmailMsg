<%@ WebHandler Language="C#" Class="GetAvailableEquipmentByGroupId_Update" %>

using System;
using System.Web;
using ComputerRepair.BusinessLogicLayer;

public class GetAvailableEquipmentByGroupId_Update : IHttpHandler
{

    public void ProcessRequest(HttpContext context)
    {
        string strRet = "{\"result\":\"error\",\"message\":\"添加地图失败，原因未知\"}";
        context.Response.ContentType = "text/plain";

        string hid_MapId = context.Request.QueryString["hid_MapId"].ToString();
        string EquipmentId = context.Request.QueryString["EquipmentId"].ToString();
        strRet = new EquipmentInfoList().GetAvailableEquipmentByGroupId_Update(Convert.ToInt32(hid_MapId), Convert.ToInt32(EquipmentId));
        context.Response.Write(strRet);
    }

    public bool IsReusable
    {
        get
        {
            return false;
        }
    }

}