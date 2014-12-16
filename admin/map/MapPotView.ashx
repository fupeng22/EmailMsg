<%@ WebHandler Language="C#" Class="MapPotView" %>

using System;
using System.Web;
using ComputerRepair.BusinessLogicLayer;

public class MapPotView : IHttpHandler
{

    public void ProcessRequest(HttpContext context)
    {
        context.Response.ContentType = "text/plain";
        string strRet = "{\"result\":\"error\",\"message\":\"复位失败\"}";
        string ReceiveMsgId = context.Request.QueryString["ReceiveMsgId"];
        string EquipmentId = context.Request.QueryString["EquipmentId"];

        if (string.IsNullOrEmpty(EquipmentId))
        {
            if (new ReceiveMsgList().ResetAlarmToNormal(Convert.ToInt32(ReceiveMsgId)))
            {
                strRet = "{\"result\":\"ok\",\"message\":\"复位成功\"}";
            }
            else
            {
                strRet = "{\"result\":\"error\",\"message\":\"复位失败\"}";
            }
        
        }
        else
        {
            if (new ReceiveMsgList().ResetAlarmToNormalByEquipmentId(Convert.ToInt32(EquipmentId)))
            {
                strRet = "{\"result\":\"ok\",\"message\":\"复位成功\"}";
            }
            else
            {
                strRet = "{\"result\":\"error\",\"message\":\"复位失败,<font style='color:red;font-weight:bold'>(该设备未报警报警,可去[实时监控]中查看该设备情况)\"}";
            }
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