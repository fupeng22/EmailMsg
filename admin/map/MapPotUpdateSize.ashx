<%@ WebHandler Language="C#" Class="MapPotUpdateSize" %>

using System;
using System.Web;

public class MapPotUpdateSize : IHttpHandler
{

    public void ProcessRequest(HttpContext context)
    {
        string strRet = "{\"result\":\"error\",\"message\":\"修改地图设备点大小失败，原因未知\"}";
        context.Response.ContentType = "text/plain";

        string Width = context.Request.QueryString["Width"].ToString();
        string Height = context.Request.QueryString["Height"].ToString();
        string MapPotId = context.Request.QueryString["MapPotId"].ToString();

        try
        {
            if (new T_MapPots().UpdateSize(Convert.ToInt32(Width), Convert.ToInt32(Height), Convert.ToInt32(MapPotId)))
            {
                strRet = "{\"result\":\"ok\",\"message\":\"修改地图设备点大小成功\"}";
            }
        }
        catch (Exception ex)
        {
            strRet = "{\"result\":\"error\",\"message\":\"修改地图设备点大小失败，原因:" + ex.Message.Replace("'", "‘").Replace("\"", "“") + "\"}";
        }

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