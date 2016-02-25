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
using System.Data.SqlClient;

public partial class Ad_Image : System.Web.UI.Page
{
    SqlDataReader sdr;
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            string reqid = Request.QueryString["unm"];
            Main ac = new Main();
            sdr = Main.ShowImg(reqid);
            while (sdr.Read())
            {
                byte[] imagedata = (byte[])sdr["img"];
                Response.BinaryWrite(imagedata);

            }
        }
        catch
        {
            Response.Redirect("~/AD/Home.aspx");
        }
    }
}
