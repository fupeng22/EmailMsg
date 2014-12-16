<%@ WebHandler Language="C#" Class="LoadMapPotDetail" %>

using System;
using System.Web;

public class LoadMapPotDetail : IHttpHandler
{

    public void ProcessRequest(HttpContext context)
    {
        string strRet = "{\"result\":\"error\",\"message\":\"获取地图设备点失败，原因未知\",\"data\":\"[]\"}";
        context.Response.ContentType = "text/plain";

        string MapId = context.Request.QueryString["MapId"].ToString();

        try
        {
            strRet = "{\"result\":\"ok\",\"message\":\"获取地图设备点成功\",\"data\":" + new T_MapPots().LoadMapPotDetailByMapId(Convert.ToInt32(MapId)) + "}";
        }
        catch (Exception ex)
        {
            strRet = "{\"result\":\"error\",\"message\":\"获取地图设备点失败，原因:" + ex.Message.Replace("'", "‘").Replace("\"", "“") + "\",\"data\":\"[]\"}";
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