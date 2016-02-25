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

public partial class AD_Reply: System.Web.UI.Page
{
    string from = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        txtTo.Text = Request.QueryString["frm"].ToString();
        from =Session["ad"].ToString();
    }
   
    public void Clear()
    {
        txtTo.Text = "";
        txtSub.Text = "";
        txtMsg.Text = "";
    }
   

    protected void btnCancel_Click(object sender, ImageClickEventArgs e)
    {
        Clear();
    }
    protected void btnSend_Click(object sender, ImageClickEventArgs e)
    {
        string myuser ="";
        myuser = txtTo.Text;
        try
        {
                    myuser = txtTo.Text.ToString();
                    Main ac = new Main();
                    ac.MTO = myuser;
                    ac.UNAME = from;
                    ac.MSUB = txtSub.Text.ToString();
                    ac.MMSG = txtMsg.Text.ToString();
                    ac.DT = System.DateTime.Now.ToString();
                    ac.MATTACH = FileUpload1.FileName;
                    int retval = Main.Inbox(ac);
                    int retval1 = Main.Sent(ac);
            if (FileUpload1.HasFile)
            {
                FileUpload1.SaveAs(Server.MapPath("~/Uploads/" + FileUpload1.FileName));
            }
            Label1.Visible = true;
            Label1.Text = "Email Sent Successfully.";    
            Clear();
            Response.Redirect("Sent.aspx");
           
        }
        catch (Exception ecp)
        {
            Label1.Visible = true;
            Label1.Text = ecp.ToString();
        }

    }
}
