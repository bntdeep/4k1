using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.IO;

namespace ThirdLab
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void GetButton_Click(object sender, EventArgs e)
        {
            String ParamA = TextBox1.Text;
            String ParamB = TextBox2.Text;
            HttpWebRequest rq = (HttpWebRequest)HttpWebRequest.Create("http://bnt:8087/anything.saa?ParamA=" + ParamA + "&ParamB=" + ParamB);
            rq.Method = "GET";
            HttpWebResponse rs = (HttpWebResponse)rq.GetResponse();
            StreamReader rdr = new StreamReader(rs.GetResponseStream());
            Response.Write(rdr.ReadToEnd());
        }

        protected void PostButton_Click(object sender, EventArgs e)
        {
            String ParamA = TextBox1.Text;
            String ParamB = TextBox2.Text;
            HttpWebRequest rq = (HttpWebRequest)HttpWebRequest.Create("http://bnt:8087/anything.saa?ParamA=" + ParamA + "&ParamB=" + ParamB);
            rq.Method = "POST";
            rq.MaximumResponseHeadersLength = 100;
            rq.ContentLength = 0;
            HttpWebResponse rs = (HttpWebResponse)rq.GetResponse();
            StreamReader rdr = new StreamReader(rs.GetResponseStream());
            Response.Write(rdr.ReadToEnd());
        }

        protected void OptionsButton_Click(object sender, EventArgs e)
        {
            try
            {
                String ParamA = TextBox1.Text;
                String ParamB = TextBox2.Text;
                HttpWebRequest rq = (HttpWebRequest)HttpWebRequest.Create("http://bnt:8087/anything.saa?ParamA=" + ParamA + "&ParamB="+ParamB);
                rq.Method = "OPTIONS";
                HttpWebResponse rs = (HttpWebResponse)rq.GetResponse();
                StreamReader rdr = new StreamReader(rs.GetResponseStream());
                Response.Write(rdr.ReadToEnd());
            }
            catch(WebException exc)
            {
                Response.Write(exc.Status);
                Response.Write("<br />" + exc.Message);
                Response.Write("<br />" + exc.TargetSite);
                Response.Write("<br />" + exc.Source);
            }
        }

        protected void PutButton_Click(object sender, EventArgs e)
        {
            try
            {
                String ParamA = TextBox1.Text;
                String ParamB = TextBox2.Text;
                HttpWebRequest rq = (HttpWebRequest)HttpWebRequest.Create("http://bnt:8087/anything.saa?ParamA=" + ParamA + "&ParamB=" + ParamB);
                rq.Method = "PUT";
                rq.MaximumResponseHeadersLength = 100;
                rq.ContentLength = 0;
                HttpWebResponse rs = (HttpWebResponse)rq.GetResponse();
                StreamReader rdr = new StreamReader(rs.GetResponseStream());
                Response.Write(rdr.ReadToEnd());
            }
            catch (WebException exc)
            {
                Response.Write(exc.Status);
                Response.Write("<br />" + exc.Message);
                Response.Write("<br />" + exc.TargetSite);
                Response.Write("<br />" + exc.Source);
            }
        }
    }
}