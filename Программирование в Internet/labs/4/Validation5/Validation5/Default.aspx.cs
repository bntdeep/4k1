using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Validation5
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void MyServerHandler(object source, ServerValidateEventArgs args)
        {
            try
            {
                for (int i = 2; i < Math.Sqrt(int.Parse(args.Value)); i++)
                {
                    if (int.Parse(args.Value) % i == 0)
                    {
                        args.IsValid = false;
                        return;
                    }
                }
                args.IsValid = true;
            }
            catch
            {
                args.IsValid = false;
            }
        }

    }
}