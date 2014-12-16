<%@ WebHandler Language="C#" Class="MapDele" %>

using System;
using System.Web;
using System.IO;

public class MapDele : IHttpHandler
{
    public void ProcessRequest(HttpContext context)
    {
        string strRet = "{\"result\":\"error\",\"message\":\"删除地图失败，原因未知\"}";
        context.Response.ContentType = "text/plain";

        string Id = context.Request.QueryString["Id"].ToString();

        try
        {
            if (new T_MapHeader().Delete(Convert.ToInt32(Id)))
            {
                strRet = "{\"result\":\"ok\",\"message\":\"删除地图成功\"}";
            }
        }
        catch (Exception ex)
        {
            strRet = "{\"result\":\"error\",\"message\":\"删除地图失败，原因:" + ex.Message.Replace("'", "‘").Replace("\"", "“") + "\"}";
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