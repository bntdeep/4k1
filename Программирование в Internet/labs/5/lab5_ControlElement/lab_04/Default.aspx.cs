using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.UI;
using System.Web.UI.HtmlControls;

namespace lab_04
{
    public partial class Default : Page
    {
        private static Dictionary<string, bool> dictionary = new Dictionary<string, bool>();        

        protected void Page_Prerender(object sender, EventArgs e)
        {            
            HtmlTable table = new HtmlTable();
            table.Attributes["class"]= "table table-striped";
            HtmlTableRow row;
            HtmlTableCell cell;
            row = new HtmlTableRow();
            cell = new HtmlTableCell(); cell.InnerHtml = "HTML control"; row.Cells.Add(cell);
            cell = new HtmlTableCell(); cell.InnerHtml = "OnServerClick"; row.Cells.Add(cell);
            cell = new HtmlTableCell(); cell.InnerHtml = "OnServerChange"; row.Cells.Add(cell);
            table.Rows.Add(row);
            for (int i = 0; i < dictionary.Count; i++)
            {
                row = new HtmlTableRow();
                string key = dictionary.ElementAt(i).Key;
                if (key == "reset")
                {
                    cell = new HtmlTableCell(); cell.InnerHtml = "HTML Input Reset"; row.Cells.Add(cell);
                    cell = new HtmlTableCell(); cell.InnerHtml = "+"; row.Cells.Add(cell);
                    cell = new HtmlTableCell(); cell.InnerHtml = ""; row.Cells.Add(cell);
                }
                else if (key == "button")
                {
                    cell = new HtmlTableCell(); cell.InnerHtml = "HTML Input Button"; row.Cells.Add(cell);
                    cell = new HtmlTableCell(); cell.InnerHtml = "+"; row.Cells.Add(cell);
                    cell = new HtmlTableCell(); cell.InnerHtml = ""; row.Cells.Add(cell);
                }
                else if (key == "submit")
                {
                    cell = new HtmlTableCell(); cell.InnerHtml = "HTML Input Submit"; row.Cells.Add(cell);
                    cell = new HtmlTableCell(); cell.InnerHtml = "+"; row.Cells.Add(cell);
                    cell = new HtmlTableCell(); cell.InnerHtml = ""; row.Cells.Add(cell);
                }
                else if (key == "text")
                {
                    cell = new HtmlTableCell(); cell.InnerHtml = "HTML Input Text"; row.Cells.Add(cell);
                    cell = new HtmlTableCell(); cell.InnerHtml = ""; row.Cells.Add(cell);
                    cell = new HtmlTableCell(); cell.InnerHtml = "+"; row.Cells.Add(cell);
                }
                else if (key == "password")
                {
                    cell = new HtmlTableCell(); cell.InnerHtml = "HTML Input Password"; row.Cells.Add(cell);
                    cell = new HtmlTableCell(); cell.InnerHtml = ""; row.Cells.Add(cell);
                    cell = new HtmlTableCell(); cell.InnerHtml = "+"; row.Cells.Add(cell);
                }
                else if (key == "checkBox")
                {
                    cell = new HtmlTableCell(); cell.InnerHtml = "HTML Input CheckBox"; row.Cells.Add(cell);
                    cell = new HtmlTableCell(); cell.InnerHtml = ""; row.Cells.Add(cell);
                    cell = new HtmlTableCell(); cell.InnerHtml = "+"; row.Cells.Add(cell);
                }
                else if (key == "radio")
                {
                    cell = new HtmlTableCell(); cell.InnerHtml = "HTML Input Radio"; row.Cells.Add(cell);
                    cell = new HtmlTableCell(); cell.InnerHtml = ""; row.Cells.Add(cell);
                    cell = new HtmlTableCell(); cell.InnerHtml = "+"; row.Cells.Add(cell);
                }
                else if (key == "textArea")
                {
                    cell = new HtmlTableCell(); cell.InnerHtml = "HTML TextArea"; row.Cells.Add(cell);
                    cell = new HtmlTableCell(); cell.InnerHtml = ""; row.Cells.Add(cell);
                    cell = new HtmlTableCell(); cell.InnerHtml = "+"; row.Cells.Add(cell);
                }
                else if (key == "select")
                {
                    cell = new HtmlTableCell(); cell.InnerHtml = "HTML Select"; row.Cells.Add(cell);
                    cell = new HtmlTableCell(); cell.InnerHtml = ""; row.Cells.Add(cell);
                    cell = new HtmlTableCell(); cell.InnerHtml = "+"; row.Cells.Add(cell);
                }
                table.Rows.Add(row);
            }
            this.Controls.Add(table);
            dictionary.Clear();
        }

        protected void Reset_OnServerClick(object sender, EventArgs e)
        {
            dictionary.Add("reset", true);
            Response.Write("<br />" + ((Control)sender).ID + " - " + sender.GetType().ToString());
        }

        protected void Button_OnServerClick(object sender, EventArgs e)
        {
            dictionary.Add("button", true);
            Response.Write("<br />" + ((Control)sender).ID + " - " + sender.GetType().ToString());
        }

        protected void Submit_OnServerClick(object sender, EventArgs e)
        {
            dictionary.Add("submit", true);
            Response.Write("<br />" + ((Control)sender).ID + " - " + sender.GetType().ToString());
        }

        protected void Common_OnServerChange(object sender, EventArgs e)
        {
            Response.Write("<br />" + ((Control)sender).ID + " - " + sender.GetType().ToString());

            if ((new HtmlInputText()).GetType().Equals(sender.GetType()))
            {
                dictionary.Add("text", true);
                Response.Write("<br />" + ((HtmlInputText)sender).Value);
            }
            else if ((new HtmlInputPassword()).GetType().Equals(sender.GetType()))
            {
                dictionary.Add("password", true);
                Response.Write("<br />" + ((HtmlInputPassword)sender).Value);
            }
            else if ((new HtmlInputCheckBox()).GetType().Equals(sender.GetType()))
            {
                dictionary.Add("checkBox", true);
                Response.Write("<br />" + ((HtmlInputCheckBox)sender).Value);
            }
            else if ((new HtmlInputRadioButton()).GetType().Equals(sender.GetType()))
            {
                dictionary.Add("radio", true);
                Response.Write("<br />" + ((HtmlInputRadioButton)sender).Value);
            }
            else if ((new HtmlTextArea()).GetType().Equals(sender.GetType()))
            {
                dictionary.Add("textArea", true);
                Response.Write("<br />" + ((HtmlTextArea)sender).Value);
            }
            else if ((new HtmlSelect()).GetType().Equals(sender.GetType()))
            {
                dictionary.Add("select", true);
                Response.Write("<br />" + ((HtmlSelect)sender).Value);
            }
        }
    }
}