using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using MainBAL;

public partial class AD_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Visible = false;
    }

   
    protected void imgbtnSign_Click(object sender, ImageClickEventArgs e)
    {
  Main ac = new Main();
        ac.UNAME = txtUserName.Text;
        ac.PWORD = txtPassword.Text;
        int flag = Main.SelectTbl(ac);

        if (flag == 1)
        {
            Session["ad"] = txtUserName.Text;
            int retval = Main.ASetStatusOnline(ac.UNAME, "Y");
            Label1.Visible = true;
            Label1.Text = "Login Sucessfully.";
            Response.Redirect("~/AD/Home.aspx");
        }
        else
        {
           Label1.Visible = true;
            Label1.Text = "Username or password incorrect,try again.";
        }
    }
}
