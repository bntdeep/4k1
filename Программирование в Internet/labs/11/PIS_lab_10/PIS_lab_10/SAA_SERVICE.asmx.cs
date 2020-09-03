using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;

namespace PIS_lab_10
{
    /// <summary>
    /// Summary description for SAA_SERVICE
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class SAA_SERVICE : System.Web.Services.WebService
    {
        [WebMethod(Description = "x + y", EnableSession = true)]
        public int Add(int x, int y)
        {
            Application["history"] = (string)Application["history"] + "" + x + "+" + y + "=" + (x + y) + "; ";
            return x + y;
        }

        [WebMethod(Description = "x - y", EnableSession = true)]
        public int Sub(int x, int y)
        {
            Application["history"] = (string)Application["history"] + "" + x + "-" + y + "=" + (x - y) + "; ";
            return x - y;
        }

        [WebMethod(Description = "x * y", EnableSession = true)]
        public int Mul(int x, int y)
        {
            Application["history"] = (string)Application["history"] + "" + x + "*" + y + "=" + (x * y) + "; ";
            return x * y;
        }

        [WebMethod(Description = "Возвращает значение, хранящееся с помощью сессии", EnableSession = true)]
        public int GetSessionValue()
        {
            if (this.Session["temp"] == null)
            {
                this.Session["temp"] = 0;
            }
            return (int)this.Session["temp"];
        }

        [WebMethod(Description = "Устанавливает значение, хранящееся с помощью сессии", EnableSession = true)]
        public void SetSessionValue(int value)
        {
            this.Session["temp"] = value;
        }

        [WebMethod(Description = "Возвращает историю операций", EnableSession = true)]
        public string GetHistory()
        {
            return (string)Application["history"];
        }
    }
}
