<%@ WebHandler Language="C#" Class="MapPotUpdatePosition" %>

using System;
using System.Web;

public class MapPotUpdatePosition : IHttpHandler
{

    public void ProcessRequest(HttpContext context)
    {
        string strRet = "{\"result\":\"error\",\"message\":\"修改地图设备点坐标失败，原因未知\"}";
        context.Response.ContentType = "text/plain";

        string posX = context.Request.QueryString["posX"].ToString();
        string posY = context.Request.QueryString["posY"].ToString();
        string MapPotId = context.Request.QueryString["MapPotId"].ToString();

        try
        {
            if (new T_MapPots().UpdatePostion(Convert.ToDouble(posX), Convert.ToDouble(posY), Convert.ToInt32(MapPotId)))
            {
                strRet = "{\"result\":\"ok\",\"message\":\"修改地图设备点坐标成功\"}";
            }
        }
        catch (Exception ex)
        {
            strRet = "{\"result\":\"error\",\"message\":\"修改地图设备点坐标失败，原因:" + ex.Message.Replace("'", "‘").Replace("\"", "“") + "\"}";
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