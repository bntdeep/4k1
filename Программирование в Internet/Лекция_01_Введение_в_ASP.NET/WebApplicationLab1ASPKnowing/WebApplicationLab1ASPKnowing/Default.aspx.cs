using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace WebApplicationLab1ASPKnowing
{
    public partial class _Default : Page
    {
        string logFile = "D://1.txt";
        
        protected void Page_Init(object sender, EventArgs e)
        {
            File.AppendAllText(logFile, "Init ");
            TextBox2.Text += " Init ";

        }

        string veryLongString = "aljf; asldjf asdf;ljsaldfj;sajdf ;lsakjdf;lksdfl;as dflkj asl;dfj ;skjdf ;lsj df;lsajkfd ;aslkf;";


        protected void Page_Load(object sender, EventArgs e)
        {
            Console.WriteLine("i'm loaded");
            TextBox1.Text = veryLongString;
            File.AppendAllText(logFile, " _Load_ ");
            TextBox2.Text += " load ";
        }

        protected void Page_Prerender(object sender, EventArgs e)
        {
            File.AppendAllText(logFile, " _Prerender_ ");
            TextBox2.Text += " prerender ";
        }

        protected void Page_Unload(object sender, EventArgs e)
        {
            File.AppendAllText(logFile, " _Unload_ \n");
            File.AppendAllText(logFile, String.Empty);
            TextBox2.Text += " unload ";
            Console.WriteLine(" _Unload_");
        }
        protected void Page_Dosposed(object sender, EventArgs e)
        {
            File.AppendAllText(logFile, " _Disposed_ ");
            TextBox2.Text += " disposed ";
        }
        
        protected void Button1_Click(object sender, EventArgs e)
        {
            
            Label1.Text = TextBox1.Text;
            

            for (int i = 0; i < 10; i++)
            {
                Random r = new Random();
                string randomString ="";
                for (int j = 0; i < 10; i++)
                {
                    randomString += (r.Next() * 100).ToString();
                    DropDownList1.Items.Add(randomString);
                }
                
            }
         
            for (int i = 0; i < 5000; i++)
            {
                TextBox1.Text += veryLongString;
            }

            Label2.Text = Request["__VIEWSTATE"];

            this.Response.Write("<br> Name: " + System.Environment.MachineName);
            this.Response.Write("<br> Os: " + System.Environment.OSVersion);
            this.Response.Write("<br> Memory: " + System.Environment.WorkingSet);
            this.Response.Write("<br> ASP.NET: " + System.Environment.Version.ToString());
            this.Response.Write("<br> IP: " + HttpContext.Current.Request.ServerVariables["LOCAL_ADDR"]);
            this.Response.Write("<br> Catalog: " + Environment.GetEnvironmentVariable("TEMP"));
            this.Response.Write("<br> Request: " + Request.IsLocal);
            this.Response.Write("<br> Response: " + Request.IsSecureConnection);
            this.Response.Write("<br> Browser: " + Request.Browser.Version);
            this.Response.Write("<br> Browser: " + Request.Browser.MinorVersion);
            this.Response.Write("<br> Browser: " + Request.Browser.MajorVersion);



        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {
            File.AppendAllText(logFile, "Text box text changed");
        }
    }
}