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
using CNEBAL;

public partial class AD_AddE : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        Label110.Visible = false;

    }
    protected void btnClr111_Click(object sender, ImageClickEventArgs e)
    {
        Clear111();
    }
    public void Clear111()
    {

        txtTtl.Text = "";
        txtDtl.Text = "";
        txtDt.Text = "";
    }


    protected void btnSubmit111_Click(object sender, ImageClickEventArgs e)
    {
        try
        {
            CNE e1 = new CNE();
            e1.TTL = txtTtl.Text;
            e1.DTL = txtDtl.Text;
            e1.DT = txtDt.Text;
            int retval = CNE.InEvent(e1);
            Label110.Visible = true;
            Label110.Text = "Events Added.";
            Clear111();
        }
        catch (Exception ep)
        {
            Label110.Visible = true;
            Label110.Text = ep.ToString();
        }
    }
}

