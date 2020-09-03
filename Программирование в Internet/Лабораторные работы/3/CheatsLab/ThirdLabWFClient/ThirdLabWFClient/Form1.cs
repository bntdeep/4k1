using System;
using System.Windows.Forms;
using System.Web;
using System.Net;
using System.IO;

namespace ThirdLabWFClient
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            String ParamA = textBox1.Text;
            String ParamB = textBox2.Text;
            HttpWebRequest rq = (HttpWebRequest)HttpWebRequest.Create("http://bnt:8087/vvv.saa?ParamA=" + ParamA + "&ParamB=" + ParamB);
            rq.Method = "GET";
            HttpWebResponse rs = (HttpWebResponse)rq.GetResponse();
            StreamReader rdr = new StreamReader(rs.GetResponseStream());
            label3.Text=(rdr.ReadToEnd());
        }
    }
}
