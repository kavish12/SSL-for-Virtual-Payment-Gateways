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
public partial class AD_Default2 : System.Web.UI.Page
{
    private ReportDocument report = new ReportDocument();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
       protected void imgbtnDis_Click(object sender, ImageClickEventArgs e)
    {  
           string connectionString = ConfigurationManager.ConnectionStrings["MyCon"].ConnectionString;
            string selectQuery = @"SELECT * FROM tbl_User";

        SqlConnection myConnection = new SqlConnection(connectionString);
        SqlCommand myCommand = new SqlCommand(selectQuery, myConnection);
       // myCommand.Parameters.AddWithValue("@id", userID);

        SqlDataAdapter ad = new SqlDataAdapter(myCommand);

        DataSet2 user1 = new DataSet2();
        ad.Fill(user1, "tbl_User");



        report.FileName = Server.MapPath("AllClient.rpt");

        report.SetDataSource(user1);

        CrystalReportViewer1.ReportSource = report;
    }
   

}
