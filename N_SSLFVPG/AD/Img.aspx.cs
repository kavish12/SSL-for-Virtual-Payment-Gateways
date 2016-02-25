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
using System.IO;
using MainBAL;
using MyEncry;
using System.Data.Sql;
using System.Data.SqlClient;


public partial class AD_Img : System.Web.UI.Page
{
    EncryptString ss = new EncryptString();
    SqlCommand cmd = new SqlCommand();
    SqlConnection con = new SqlConnection();
    string a1, b;
    int imagelenght;
    protected void Page_Load(object sender, EventArgs e)
    {
        a1 = Session["ad"].ToString();
        Label2.Visible = false;
        con.ConnectionString = ConfigurationManager.ConnectionStrings["MyCon"].ConnectionString;
        con.Open();
    }

    protected void btnImgUp_Click(object sender, EventArgs e)
    {
        try
        {
            b = a1;
            if (FileUpload1.PostedFile.FileName != "")
            {
                imagelenght = FileUpload1.PostedFile.ContentLength;
                byte[] imagedata = new byte[imagelenght];
                Stream imagestream = FileUpload1.PostedFile.InputStream;
                imagestream.Read(imagedata, 0, imagelenght);
                Main ac = new Main();
                int retval = Main.UpdateImg(b, imagedata);
                Label2.Visible = true;
                Label2.Text = "Picture Added";
            }
        }
        catch (Exception ex)
        {
            Label2.Visible = true;
            Label2.Text = ex.Message.ToString();
        }

    }
    protected void btnChk_Click(object sender, EventArgs e)
    {
        string a = txtUnm.Text;
        string str = "select count(unm) from tbl_Admin where unm=('" + a + "')";
        cmd = new SqlCommand(str, con);
        int p = (int)(cmd.ExecuteScalar());
        if (p > 0)
        {
            lblOPwd.Visible = true;
            txtOPwd.Visible = true;
            btnChk.Visible = false;
            lblChgPwd.Visible = true;
            btnChgPwd.Visible = true;
            lblNPwd.Visible = true;
            txtNPwd.Visible = true;
            lblChgPwd.Text = "";
        }
    }
    protected void btnChgPwd_Click(object sender, EventArgs e)
    {
        string lid = txtUnm.Text;
        string b = txtOPwd.Text;
        string b1 = ss.Encrypt(b);
        string pass = txtNPwd.Text;
        string j = ss.Encrypt(pass);

        string str1 = "UPDATE tbl_Admin SET pwd = ('" + j + "') WHERE unm = ('" + lid + "') and pwd=('" + b1 + "')";
        cmd = new SqlCommand(str1, con);
        cmd.ExecuteNonQuery();
        lblChgPwd.Visible = true;
        lblChgPwd.Text = "Password Changed";
        lblOPwd.Visible = false;
        txtOPwd.Visible = false;
        btnChk.Visible = true;
        lblChgPwd.Visible = false;
        btnChgPwd.Visible = false;
        lblNPwd.Visible = false;
        txtNPwd.Visible = false;
        txtUnm.Text = "";
    }
}
