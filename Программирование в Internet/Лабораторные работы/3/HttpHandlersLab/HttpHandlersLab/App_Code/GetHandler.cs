using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HttpHandlersLab.App_Code
{
    public class GetHandler : IHttpHandler
    {
        public bool IsReusable => false;

        public void ProcessRequest(HttpContext context)
        {
            HttpRequest request = context.Request;
            HttpResponse response = context.Response;
            response.Write("GetHandler");
        }
    }
}