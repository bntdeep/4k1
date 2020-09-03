using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace PIS_lab_07 {
    public class Global : System.Web.HttpApplication {

        protected void Application_Start(object sender, EventArgs e) {

        }

        protected void Session_Start(object sender, EventArgs e) {

        }

        protected void Application_BeginRequest(object sender, EventArgs e) {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e) {

        }

        protected void Application_Error(object sender, EventArgs e) {

        }

        protected void Session_End(object sender, EventArgs e) {

        }

        protected void Application_End(object sender, EventArgs e) {

        }

        public override string GetVaryByCustomString(HttpContext context, string arg) {
            // Проверить запрашиваемый тип кэширования
            string rc = base.GetVaryByCustomString(context, arg);
            string p = null;
            if (arg.Equals("browser"))
            {
                if ((p = Request["myCache"]) != null) rc = p;
            }
            return rc;
        }

    }
}