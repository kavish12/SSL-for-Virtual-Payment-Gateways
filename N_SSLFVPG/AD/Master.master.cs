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
public partial class AD_Master : System.Web.UI.MasterPage
{
  
    SqlCommand cmd = new SqlCommand();
    SqlConnection con = new SqlConnection();
    string a1;
    protected void Page_Load(object sender, EventArgs e)
    {
        Label111.Text = System.DateTime.Now.ToLongDateString() + "," + System.DateTime.Now.ToLongTimeString();
        a1 = Session["ad"].ToString();
        con.ConnectionString = ConfigurationManager.ConnectionStrings["MyCon"].ConnectionString;
        con.Open();
        string str = "select count(unm) from tbl_Admin where unm=('" + a1 + "')";
        cmd = new SqlCommand(str, con);
        int p = (int)(cmd.ExecuteScalar());
        if (p > 0)
        {
            string str1 = "select onf from tbl_Admin where unm=('" + a1 + "')";
            cmd = new SqlCommand(str1, con);
            string p1 = (string)(cmd.ExecuteScalar());
            Image2.Visible = true;
        }
        con.Close();
     
    }
    
   
}
