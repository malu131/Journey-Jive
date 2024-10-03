using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Data;
using System.Text;
using System.IO;
using iTextSharp.text;
using iTextSharp.text.pdf;
using iTextSharp.text.html;
using iTextSharp.text.html.simpleparser;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
using Microsoft.Reporting.WebForms;

public partial class UserTicket1 : System.Web.UI.Page
{
    DatabaseConnection ob = new DatabaseConnection();
    public static string fpath = "", s = "", mode = "", str = "", filePath = "";
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
       
        string strQuery = "select * from payment where jid='" + TextBox1.Text + "'";
        SqlCommand cmd = new SqlCommand(strQuery);
        DataTable dt = GetData(cmd);
        Generatereport(dt);
    }

    private void Generatereport(DataTable dt)
    {

        ReportViewer1.SizeToReportContent = true;

        ReportViewer1.LocalReport.ReportPath = Server.MapPath("~/Report2.rdlc");

        ReportViewer1.LocalReport.DataSources.Clear();

        ReportDataSource _rsource = new ReportDataSource("DataSet1", dt);

        ReportViewer1.LocalReport.DataSources.Add(_rsource);

        ReportViewer1.LocalReport.Refresh();

    }
    private DataTable GetData(SqlCommand cmd)
    {
        DataTable dt = new DataTable();
        String strConnString = "server=localhost;database=CarPool;uid=sa;pwd=yuva";
        SqlConnection con = new SqlConnection(strConnString);
        SqlDataAdapter sda = new SqlDataAdapter();
        cmd.CommandType = CommandType.Text;
        cmd.Connection = con;
        try
        {
            con.Open();
            sda.SelectCommand = cmd;
            sda.Fill(dt);
            return dt;
        }
        catch (Exception ex)
        {
            throw ex;
        }
        finally
        {
            con.Close();
            sda.Dispose();
            con.Dispose();
        }
    }
    
    
    
   
}
