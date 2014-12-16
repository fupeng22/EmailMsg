<%@ WebHandler Language="C#" Class="GetAvailableEquipmentByGroupId" %>

using System;
using System.Web;
using ComputerRepair.BusinessLogicLayer;

public class GetAvailableEquipmentByGroupId : IHttpHandler
{

    public void ProcessRequest(HttpContext context)
    {
        string strRet = "{\"result\":\"error\",\"message\":\"添加地图失败，原因未知\"}";
        context.Response.ContentType = "text/plain";

        string hid_MapId = context.Request.QueryString["hid_MapId"].ToString();
        strRet = new EquipmentInfoList().LoadAvialableEquipmentByMapId(Convert.ToInt32(hid_MapId));
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