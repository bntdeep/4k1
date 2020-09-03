using System;
using System.Drawing;
using System.Text;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace lab_05
{
    public partial class Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button_Click(object sender, EventArgs e)
        {
            MultiView.ActiveViewIndex = (MultiView.ActiveViewIndex + 1) % 3;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Label1.Text = TextBox1.Text.ToString();
            TextBox1.Text = "<--------";
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Label2.Text = TextBox2.Text.ToString();
            TextBox2.Text = "";
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Label3.Text = TextBox3.Text.ToString();
            TextBox3.Text = "";
        }

        protected void ButtonBanner_Click(object sender, EventArgs e)
        {
            if (TextBoxKeyFilter.Text == "")
                AdRotator.KeywordFilter = "";
            else if (TextBoxKeyFilter.Text == "bob")
                AdRotator.KeywordFilter = "bob";
            else if (TextBoxKeyFilter.Text == "park")
                AdRotator.KeywordFilter = "park";
        }

        enum StepIndex { PERSDATA = 0, SELECT = 1, SERVICE = 2, PAYTYPE = 3, CONFIRM = 4 };

        protected void Wizard_ActiveStepChanged(object sender, EventArgs e)
        {
            String str = "";
            foreach(ListItem item in CheckBoxList.Items)
            {
                if (item.Selected)
                    str += item.Value + ", ";
            }

            if (Wizard.ActiveStepIndex.Equals((int)StepIndex.CONFIRM))
            {
                LabelFinish.Text = "Фамилия Имя Отчество: " + LastName.Text + " " + Firstname.Text + " " + MiddleName.Text +
                    "<br>День рождения: " + Calendar.SelectedDate +
                    "<br>Выбор: " + RadioButtonList.SelectedValue +
                    "<br>Дополнительные услуги: " + str +
                    "<br>Оплата: " + ListBox.SelectedValue + "<br>";
            }
        }

        protected void ButtonFinish_Click(object sender, EventArgs e)
        {
            LabelFinish.ForeColor = Color.Green;
            LabelFinish.Text += "<br> Поздравляем вы выполнили все шаги";
            ButtonFinish.Enabled = false;
        }

        protected void Wizard_CancelButtonClick(object sender, EventArgs e)
        {
            LabelFinish.ForeColor = Color.Black;
            LastName.Text = "";
            Firstname.Text = "";
            MiddleName.Text = "";
            Calendar.SelectedDate = DateTime.Now;
            RadioButtonList.ClearSelection();
            CheckBoxList.ClearSelection();
            ListBox.ClearSelection();
            ButtonFinish.Enabled = true;
            Wizard.ActiveStepIndex = 0;
        }

        protected void Wizard_FinishButtonClick(object sender, WizardNavigationEventArgs e)
        {
            LabelFinish.Text = "Информация сохранена успешно.<br>";
        }

        protected void TreeView_SelectedNodeChanged(object sender, EventArgs e)
        {
            TreeNode treeNode = TreeView.SelectedNode;
            string str = treeNode.Value;
            StringBuilder sb = new StringBuilder();
            if(treeNode.Value == "1")
            {
                sb.Append("<br>");
                var childTreeNode = treeNode.ChildNodes;
                for (int i = 0; i < childTreeNode.Count; i++)
                {
                    sb.Append(childTreeNode[i].Value).Append(" ");
                    sb.Append(childTreeNode[i].Checked ? " установлен, " : " сброшен, ").Append("<br>");
                }
                str += sb.ToString();
            }
            if (treeNode.ShowCheckBox != null && (bool)treeNode.ShowCheckBox)
            {
                str += (treeNode.Checked ? " установлен, " : " сброшен, ");
            }
            Response.Write(str);
        }

        protected void Menu_MenuItemClick(object sender, MenuEventArgs e)
        {
            Menu menu = (Menu)sender;
            Response.Write(menu.SelectedItem.Text + " " + menu.SelectedItem.Value);
        }
        
    }
}