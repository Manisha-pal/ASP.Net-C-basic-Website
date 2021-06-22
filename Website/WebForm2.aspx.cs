using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Website
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (PreviousPage != null)
            {
                ContentPlaceHolder placeHolder = (ContentPlaceHolder)PreviousPage.Master.FindControl("Registration");
                TextBox txt1 = (TextBox)placeHolder.FindControl("name");
                Label1.Text = "<h3 style='color:purple;'><center> Applied Successfully !! </center></h3 >" +
                    "<br>" + "<b> Your Name: </b> " + txt1.Text  ;
                TextBox txt2 = (TextBox)placeHolder.FindControl("email");
                Label2.Text = "<b> Your Email: </b>" + txt2.Text  ;
                TextBox txt3 = (TextBox)placeHolder.FindControl("contact");
                Label3.Text = "<b> Contact Info: </b>" + txt3.Text ;
                RadioButtonList r = (RadioButtonList)placeHolder.FindControl("bias");
                Label4.Text =  "<b>Your Bias: </b>" + r.SelectedItem.Value;
                CheckBoxList c = (CheckBoxList)placeHolder.FindControl("events");

                string str1 = "";
                for (int i = 0; i < c.Items.Count; i++)
                {
                    if (c.Items[i].Selected == true)
                    {
                        str1 += c.Items[i].Text + ", "+"<br/>";
                    }
                }
                if (str1 != "")
                {
                    str1 = str1.Substring(0, str1.Length - 7);
                    Label5.Text = "<b>Selected Events are </b><br/><br/>" + str1 +
               "<h3 style='color:purple;'> Result will be informed soon to you. </h3>";
                }
            }
        }
    }
}