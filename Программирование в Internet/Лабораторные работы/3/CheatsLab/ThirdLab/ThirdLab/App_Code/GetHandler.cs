using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ThirdLab.App_Code
{
    public class GetHandler: IHttpHandler
    {
        public void ProcessRequest(HttpContext context)
        {
            HttpRequest request = context.Request;
            HttpResponse response = context.Response;
            String ParamA = request.Params["ParamA"];
            String ParamB = request.Params["ParamB"];
            int aaa;
            try
            {
                aaa = Convert.ToInt32(ParamA) + Convert.ToInt32(ParamB);
                response.Write($"GetHandler, ParamA = {ParamA}, ParamB = {ParamB}, Sum = {aaa}");
            }
            catch(Exception exc)
            {
                response.Write($"GetHandler, ParamA = {ParamA}, ParamB = {ParamB}, error:{exc.Message}");
            }
        }

        public bool IsReusable
        {
            get { return false; }
        }
    }
}