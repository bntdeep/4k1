﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PIS_lab_07 {
    public partial class _2 : System.Web.UI.Page {
        protected void Page_Load(object sender, EventArgs e) {
            labeldate.Text = DateTime.Now.ToString();
        }
    }
}