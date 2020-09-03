using System;
using System.Web.UI.WebControls;

namespace lab_06
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            CompareValidator2.ValueToCompare = DateTime.Now.ToShortDateString();
        }

        protected void MyHandler(object source, ServerValidateEventArgs args)
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