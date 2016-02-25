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
using CrystalDecisions.CrystalReports.Engine;
using CrystalDecisions.Shared;
public partial class AD_Default5 : System.Web.UI.Page
{
    private ReportDocument report = new ReportDocument();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            BindData();
        }
    }

    protected void imgbtnDis_Click(object sender, ImageClickEventArgs e)
    {  
        string connectionString = ConfigurationManager.ConnectionStrings["MyCon"].ConnectionString;

        string userID = (ddlStudents.SelectedValue);

        string selectQuery = @"SELECT * FROM tbl_IP WHERE unm= @unm";

        SqlConnection myConnection = new SqlConnection(connectionString);
        SqlCommand myCommand = new SqlCommand(selectQuery, myConnection);
        myCommand.Parameters.AddWithValue("@unm", userID);

        SqlDataAdapter ad = new SqlDataAdapter(myCommand);

        DataSet4 user = new DataSet4();
        ad.Fill(user, "tbl_IP");



        report.FileName = Server.MapPath("IPC.rpt");

        report.SetDataSource(user);

        CrystalReportViewer1.ReportSource = report;
    }



    protected override void OnUnload(EventArgs e)
    {
        base.OnUnload(e);
        // close the report connection 
        this.Unload += new EventHandler(Report_Default_Unload);

    }

    void Report_Default_Unload(object sender, EventArgs e)
    {
        // close the report connection 
        report.Close();
        report.Dispose();
    }

    private void BindData()
    {
        string connectionString = ConfigurationManager.ConnectionStrings["MyCon"].ConnectionString;

        SqlConnection myConnection = new SqlConnection(connectionString);
        SqlDataAdapter ad = new SqlDataAdapter("SELECT distinct(unm) FROM tbl_IP", myConnection);
        DataSet ds = new DataSet();
        ad.Fill(ds);

        ddlStudents.DataSource = ds;
        ddlStudents.DataTextField = "unm";
        ddlStudents.DataValueField = "unm";
        ddlStudents.DataBind();

    }
}
