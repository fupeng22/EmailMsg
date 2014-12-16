<%@ WebHandler Language="C#" Class="MapPotDele" %>

using System;
using System.Web;

public class MapPotDele : IHttpHandler
{

    public void ProcessRequest(HttpContext context)
    {
        string strRet = "{\"result\":\"error\",\"message\":\"删除地图设备点失败，原因未知\"}";
        context.Response.ContentType = "text/plain";

        string Id = context.Request.QueryString["mapPotId"].ToString();

        try
        {
            if (new T_MapPots().Dele(Convert.ToInt32(Id)))
            {
                strRet = "{\"result\":\"ok\",\"message\":\"删除地图设备点成功\"}";
            }
        }
        catch (Exception ex)
        {
            strRet = "{\"result\":\"error\",\"message\":\"删除地图设备点失败，原因:" + ex.Message.Replace("'", "‘").Replace("\"", "“") + "\"}";
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