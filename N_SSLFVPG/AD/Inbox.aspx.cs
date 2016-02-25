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
using System.Data.SqlClient;
using System.Data.Sql;
public partial class AD_Inbox : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection();
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        GridView1.DataBind();


        con.ConnectionString = ConfigurationManager.ConnectionStrings["MyCon"].ConnectionString;
        con.Open();
        string SQL11 = "Select count(*) from tbl_Inbox where too='" + Session["ad"].ToString() + "'";
        cmd = new SqlCommand(SQL11, con);
        int a = (int)cmd.ExecuteScalar();
        Label11.Text = "Total Mails:" + " " + a + " ";
        string SQL1 = "Select count(*) from tbl_Inbox where st='New' and too='" + Session["ad"].ToString() + "'";
        cmd = new SqlCommand(SQL1, con);
        int b = (int)cmd.ExecuteScalar();
        if (b >= 0)
        {
            Label12.Text = "New Mails:" + " " + b + " ";
        }
        else
        {
            Label12.Text = "New Mails:" + " " + 0 + " ";
        }
        con.Close();


    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Inbox.aspx");
    }
    protected void ToggleCheckState(bool checkState)
    {
        foreach (GridViewRow row in GridView1.Rows)
        {
            CheckBox cb = (CheckBox)row.FindControl("CheckBox1");
            if (cb != null)
            {
                cb.Checked = checkState;
            }
        }
    }
   
    protected void LnkSelect_Click(object sender, EventArgs e)
    {
        ToggleCheckState(true);
    }
    protected void LnkUnselect_Click(object sender, EventArgs e)
    {
        ToggleCheckState(false);
    }
    protected void LnkDelete_Click(object sender, EventArgs e)
    {
        con.ConnectionString = ConfigurationManager.ConnectionStrings["MyCon"].ConnectionString;
        con.Open();
        foreach (GridViewRow row in GridView1.Rows)
        {
            CheckBox cb = (CheckBox)row.FindControl("CheckBox1");
            if (cb != null && cb.Checked)
            {
                int MsgId = int.Parse(GridView1.DataKeys[row.RowIndex].Value.ToString());
                string SQL = "Delete from tbl_Inbox where id=" + MsgId + "";
                cmd = new SqlCommand(SQL, con);
                cmd.ExecuteNonQuery();

            }
        }
        con.Close();
        GridView1.DataBind();
    }

    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            string CellValue = Convert.ToString(e.Row.Cells[5].Text);

            if (CellValue.Equals("New"))
            {
                e.Row.Font.Bold = true;
                e.Row.Font.Italic = true;
                e.Row.Font.Underline = true;
                e.Row.Cells[4].Visible = false;
            }
            else
            {
                e.Row.Cells[4].Visible = false;
            }
        }
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        GridViewRow row;
        row = GridView1.SelectedRow;
        lblId.Text = row.Cells[4].Text;
        con.ConnectionString = ConfigurationManager.ConnectionStrings["MyCon"].ConnectionString;
        con.Open();
        string SQL2 = "update tbl_Inbox set st='Read' where id='" + lblId.Text + "'";
        cmd = new SqlCommand(SQL2, con);
        cmd.ExecuteNonQuery();
        con.Close();
    }
}
