using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Validation5
{
    public partial class About : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void PasswordHandler(object source, ServerValidateEventArgs args)
        {
            string str = args.Value;
            bool check = true;
            if (str.Length >= 7)
            {
                for (int i = 0; i < str.Length - 1; i++)
                {
                    for (int j = i + 1; j < str.Length; j++)
                    {
                        if (str[i].ToString() == str[j].ToString())
                        {
                            check = false;
                            break;
                        }
                    }
                }
                if (check)
                    args.IsValid = true;
                else
                    args.IsValid = false;
            }
            else
                args.IsValid = false;
        }

    }
}