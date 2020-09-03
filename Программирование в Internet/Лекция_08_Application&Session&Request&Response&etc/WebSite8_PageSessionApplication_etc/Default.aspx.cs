using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page 
{
    static Int32 staticcount; 
    protected void Page_Load(object sender, EventArgs e)
    {
        //this.Trace.IsEnabled = true;
        //this.Trace.TraceMode = TraceMode.SortByCategory;
        //this.Trace.TraceMode = TraceMode.SortByTime;
             
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Trace.Warn("MyCategory", "Trace.Warn1" );
        Trace.Write("MyCategory", "Trace.Write1");
        Trace.Warn( "Trace.Warn2");
        Trace.Write("Trace.Write2");
    }
}

//Response.Write("<br />" + "Имя пользователя клиента : " + this.User.Identity.Name);
//Response.Write("<br />" + "Тип аутентификции        : " + this.User.Identity.AuthenticationType);
       
 //Trace.Write("Trace.Write")
//Response.Write("<br />" + "MachineName    : " + this.Server.MachineName);
//Response.Write("<br />" + "GetLastError() : " + this.Server.GetLastError());
//Response.Write("<br />" + "MapPath()      :" + this.Server.MapPath("XXX"));

//Response.Write("<br />" + "BufferOutput : " + this.Response.BufferOutput.ToString());
//        Response.Write("<br />" + "Cache        : " + this.Response.Cache.ToString());
//        Response.Write("<br />" + "Cookies      : " + this.Response.Cookies.ToString());
//        Response.Write("<br />" + "IsClientConnected : " + this.Response.IsClientConnected.ToString());
//        Response.Write("<br />" + "ContentType       : " + this.Response.ContentType);
//        Response.Write("<br />" + "OutputStream      : " + this.Response.OutputStream.ToString());

//Response.Write("<br />" + "Виртуальный каталог: " + this.Request.ApplicationPath);
//Response.Write("<br />" + "Реальный    каталог: " + this.Request.PhysicalApplicationPath);
//Response.Write("<br />" + "Свойства браузера  : " + this.Request.Browser.ToString());
//Response.Write("<br />" + "Исходная страница  : " + this.Request.FilePath);
//Response.Write("<br />" + "Переадресация      : " + this.Request.CurrentExecutionFilePath);
//Response.Write("<br />" + "Заголовки          : " + this.Request.Headers.ToString().Substring(0, 100));
//Response.Write("<br />" + "Серв.перемен.      : " + this.Request.ServerVariables.ToString().Substring(0,100));
//Response.Write("<br />" + "Строка запроса     : " + this.Request.QueryString.ToString());
//Response.Write("<br />" + "URL                : " + this.Request.Url.ToString());
//Response.Write("<br />" + "Предыдущий URL     : " + this.Request.UrlReferrer.ToString());
//Response.Write("<br />" + "Адрес хоста        : " + this.Request.UserHostAddress);
//Response.Write("<br />" + "Имя хоста          : " + this.Request.UserHostName);
//Response.Write("<br />" + "Языковые предпочт. : " + this.Request.UserLanguages.ToString());
//Response.Write("<br />" + "Локальный?         : " + this.Request.IsLocal.ToString());


// this.Session["mycount"] = (Int32)this.Session["mycount"] + 1;
//Response.Write("<br />"+((Int32)this.Session["mycount"]).ToString());
//Response.Write("<br />" + this.Session.SessionID);
//if (staticcount.Equals(null)) staticcount = 1;  
// if (this.Application["mycount"] == null) this.Application["mycount"] = (Int32)1   
// this.Application
//this.Application["mycount"] = ((Int32)this.Application["mycount"]) + 1; 
//Response.Write(((Int32)this.Application["mycount"]).ToString());