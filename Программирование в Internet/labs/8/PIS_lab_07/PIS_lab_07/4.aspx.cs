using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PIS_lab_07 {
    public partial class _4 : System.Web.UI.Page {
        protected void Page_Load(object sender, EventArgs e) {

            string x = "";
            foreach (string item in Request.QueryString)
            {
                x += (" " + item + '=' + Request[item]);
            }

            labeldate.Text = DateTime.Now.ToString();
        }
    }
}