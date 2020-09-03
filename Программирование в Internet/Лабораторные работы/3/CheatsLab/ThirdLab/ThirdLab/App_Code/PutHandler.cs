using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ThirdLab.App_Code
{
    public class PutHandler: IHttpHandler
    {
        public void ProcessRequest(HttpContext context)
        {
            HttpRequest request = context.Request;
            HttpResponse response = context.Response;
            String ParamA = request.Params["ParamA"];
            String ParamB = request.Params["ParamB"];
            response.Write($"PutHandler, ParamA = {ParamA}, ParamB = {ParamB}");

        }

        public bool IsReusable
        {
            get { return false; }
        }
    }
}