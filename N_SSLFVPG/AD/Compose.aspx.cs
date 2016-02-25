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
using System.IO;

public partial class AD_Compose : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
      
     }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        GridViewRow row;
        row = GridView1.SelectedRow;
        txtTo.Text = txtTo.Text + row.Cells[1].Text + ",";
        GridView1.DataBind();
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
        string words = txtTo.Text;
        string[] split = words.Split(new Char[] { ',' });
        string myuser = "";
        try
        {
            foreach (string s in split)
            {
                if (s.Trim() != "")
                {
                    myuser = s;

                    Main ac = new Main();
                    ac.MTO = myuser;
                    ac.UNAME = Session["ad"].ToString();
                    ac.MSUB = txtSub.Text.ToString();
                    ac.MMSG = txtMsg.Text.ToString();
                    ac.DT = System.DateTime.Now.ToString();
                    ac.MATTACH = FileUpload1.FileName;
                    if (FileUpload1.HasFile)
                    {
                        FileUpload1.SaveAs(Server.MapPath("~/Uploads/" + FileUpload1.FileName));
                     }
                    int retval = Main.Inbox(ac);
                    int retval1 = Main.Sent(ac);
                 }
            }
            Label1.Visible = true;
            Label1.Text = "Email Send Successfully";
            Clear();
        }
        catch (Exception ecp)
        {
            Label1.Visible = true;
            Label1.Text = ecp.ToString();
        }

    }
}
