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

public partial class AD_MngNE : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        GridView1.DataBind();
        GridView2.DataBind();
     }
     protected void LinkButton1_Click(object sender, EventArgs e)
     {
         Response.Redirect("MngNE.aspx");
     }
     protected void LinkButton2_Click(object sender, EventArgs e)
     {
         Response.Redirect("MngNE.aspx");
     }
   
}
