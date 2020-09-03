using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAppICallback
{
    public partial class WebUserControl1 : System.Web.UI.UserControl, ICallbackEventHandler
    {
        public string Sname
        {
            get
            { return this.tb_surname.Text; }
            set
            { this.tb_surname.Text = value; }
        }

        public string Name
        {
            get
            { return this.tb_name.Text; }
            set
            { this.tb_name.Text = value; }
        }

        public string Lname
        {
            get
            { return this.tb_lastname.Text; }
            set
            { this.tb_lastname.Text = value; }
        }

        public DateTime Bday
        {
            get
            { return Convert.ToDateTime(this.tb_bday.Text); }
            set
            { this.tb_bday.Text = value.ToShortDateString(); }
        }

        public string Gender
        {
            get
            {
                if (this.rb_gender_f.Checked)
                    return this.rb_gender_f.Text;
                else if (this.rb_gender_m.Checked)
                    return this.rb_gender_m.Text;
                else return "";
            }
            set
            {
                if (value == "м")
                    this.rb_gender_m.Checked = true;
                else if (value == "ж")
                    this.rb_gender_f.Checked = true;
            }
        }

        public string Faculty
        {
            get
            { return this.tb_faculty.Text; }
            set
            { this.tb_faculty.Text = value; }
        }

        public int Group
        {
            get
            { return Convert.ToInt32(this.tb_group.Text); }
            set
            { this.tb_group.Text = value.ToString(); }
        }

        public int Year
        {
            get
            { return Convert.ToInt32(this.tb_year.Text); }
            set
            { this.tb_year.Text = value.ToString(); }
        }

        public string Lbutton
        {
            get
            { return this.btn_left.Text; }
            set
            { this.btn_left.Text = value; }
        }

        public string Rbutton
        {
            get
            { return this.btn_right.Text; }
            set
            { this.btn_right.Text = value; }
        }

        private string eventArg;

        // Interface methods
        public string GetCallbackResult()
        {
            if (this.eventArg == "")
                return "Callback: данные не введены.";
            else
                return "Callback: OK";
        }

        public void RaiseCallbackEvent(string eventArgument)
        {
            this.eventArg = eventArgument;
        }

        protected void Page_Load(object sender, EventArgs e)
        {/* public string GetCallbackEventReference(
            Control target,
            string argument,
            string clientCallback,
            string context,
            bool useAsync)
            
            где:
            
            target - страница или WebControl, который будет обрабатывать обратный вызов.
            Соответственно, эта страница или контрол должны реализовать интерфейс ICallbackEventHandler, иначе будет брошено исключение:
            System.InvalidOperationException: The target '__Page' for the callback could not be found or did not implement ICallbackEventHandler.
            Генерует первый параметр функции WebForm_DoCallback
            argument - аргумент, передаваемый клиентской функции или скрипту. Соответствует второму параметру функции WebForm_DoCallback.
            returnCallback - клиентская функция или клиентский скрипт, который должен выполниться после того, как серверная сторона вернет управление (3-й параметр WebForm_DoCallback)
            context - данные, которые передаются клиентской returnCallback (4-й параметр WebForm_DoCallback).
            useAsync - устанавливает, будет ли запрос синхронным или асинхронным (6-й параметр WebForm_DoCallback).*/

            string callbackRef = Page.ClientScript.GetCallbackEventReference(this,
                "document.getElementById('uf1_tb_surname').value", "ClientCallback", "null", true);
            this.tb_surname.Attributes["onChange"] = callbackRef;

            callbackRef = Page.ClientScript.GetCallbackEventReference(this,
                "document.getElementById('uf1_tb_name').value", "ClientCallback", "null", true);
            this.tb_name.Attributes["onChange"] = callbackRef;

            callbackRef = Page.ClientScript.GetCallbackEventReference(this,
                "document.getElementById('uf1_tb_lastname').value", "ClientCallback", "null", true);
            this.tb_lastname.Attributes["onChange"] = callbackRef;

            callbackRef = Page.ClientScript.GetCallbackEventReference(this,
                "document.getElementById('uf1_tb_bday').value", "ClientCallback", "null", true);
            this.tb_bday.Attributes["onChange"] = callbackRef;

            callbackRef = Page.ClientScript.GetCallbackEventReference(this,
                "document.getElementById('uf1_tb_faculty').value", "ClientCallback", "null", true);
            this.tb_faculty.Attributes["onChange"] = callbackRef;

            callbackRef = Page.ClientScript.GetCallbackEventReference(this,
                "document.getElementById('uf1_tb_group').value", "ClientCallback", "null", true);
            this.tb_group.Attributes["onChange"] = callbackRef;

            callbackRef = Page.ClientScript.GetCallbackEventReference(this,
                "document.getElementById('uf1_tb_year').value", "ClientCallback", "null", true);
            this.tb_year.Attributes["onChange"] = callbackRef;
        }
    }
}