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

public partial class AD_Chat : System.Web.UI.Page
{
    string from = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        from = Session["ad"].ToString();
    }
    protected void Timer1_Tick(object sender, EventArgs e)
    {
        Main c = new Main();
        c.MTO = Session["ad"].ToString();
       string message = Main.GetChatMsg(c.MTO);
       txtChat.Text = message;
       GridView1.DataBind();
   }
   
   protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
   {
       GridViewRow row;
       row = GridView1.SelectedRow;
       txtTo.Text = row.Cells[1].Text;
       GridView1.DataBind();      
    }
   
    protected void btnCancel_Click(object sender, ImageClickEventArgs e)
    {
        Clear();
    }
    protected void btnSend_Click(object sender, ImageClickEventArgs e)
    {
        try
        {
            Main ac = new Main();
            ac.MTO = txtTo.Text;
            ac.UNAME = from;
            ac.MMSG = txtMsg.Text.ToString();
            ac.DT = System.DateTime.Now.ToString();
            int retval = Main.Chat(ac);
            Label1.Visible = true;
            Label1.Text = "Message Sent Successfully";
            Clear();
        }
        catch (Exception ecp)
        {
            Label1.Visible = true;
            Label1.Text = ecp.ToString();
        }
    }
    public void Clear()
    {
        txtTo.Text = "";
        txtMsg.Text = "";
    }
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            string CellValue = Convert.ToString(e.Row.Cells[3].Text);

            if (CellValue.Equals("Y"))
            {
                e.Row.Font.Bold = true;
                e.Row.Cells[3].Visible = false;
                e.Row.Cells[4].Visible = false;
                e.Row.Cells[5].Visible = true;
            }
            else
            {
                e.Row.Cells[3].Visible = false;
                e.Row.Cells[4].Visible = true;
                e.Row.Cells[5].Visible = false;
            }
        }
    }
  
}
