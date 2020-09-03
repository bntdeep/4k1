using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page 
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.IsPostBack)
        {
            this.DropDownList1.Items.Add("");
            this.DropDownList1.Items.Add("11111");
            this.DropDownList1.Items.Add("22222");
            this.DropDownList1.Items.Add("33333");
        }
        else  {}
    }

    protected void MyMethod()
    {
             
       //Button bb;
        //bb.CausesValidation   - true/false (проверять/не проверять)  
     System.Web.UI.WebControls.BaseValidator bv;
        //bv.ControlToValidate  - проверяемый элемент 
        //bv.Display            - Static,Dynamic
        //bv.Enabled            - true/false (включить/выклюить проверку)
        //bv.ErrorMessage       - строка об ошибке в ValidationSummary  
        //bv.Text               - текст об ошибке 
        //bv.IsValid            - true/false (ошибка/нет ошибки) на сервере (если нет проверки на клиенте)  
        //bv.SetFocusOnError    - true/false (установить фокус на первый элемент с ошибкой) 
        //bv.ValidationGroup    - группа элементов управления (обычно если на странице неск. панелей) 
        //bv.Validate()         - выполнить повторую провеку и установить  IsValid   
       
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (!this.RequiredFieldValidator1.IsValid)
            this.RequiredFieldValidator1.ErrorMessage = "Validator1:static";
        if (!this.RequiredFieldValidator2.IsValid)
            this.RequiredFieldValidator1.ErrorMessage = "Validator2:dynamic";

    }
   
    
   protected void MyHandler(object sender, ServerValidateEventArgs args)
   {
     try{args.IsValid = (int.Parse(args.Value) % 2 == 0);}
     catch{args.IsValid = false;}

   }


}
