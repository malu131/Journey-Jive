using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using InfoSoftGlobal;

public partial class UserDriverAnalysis : System.Web.UI.Page
{
    DataTable dt = new DataTable("Chart");
    string GraphWidth = "450";
    string GraphHeight = "370";
    string[] color = new string[12];
    //Get connection string from web.config
    SqlConnection conn = new SqlConnection("server=localhost;Database=Carpool;uid=sa;pwd=yuva"); 
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            ConfigureColors();
            LoadGraphData();
            CreateBarGraph();
        }
    }
    private void ConfigureColors()
    {
        color[0] = "AFD8F8";
        color[1] = "F6BD0F";
        color[2] = "8BBA00";
        color[3] = "FF8E46";
        color[4] = "008E8E";
        color[5] = "D64646";
        color[6] = "8E468E";
        color[7] = "588526";
        color[8] = "B3AA00";
        color[9] = "008ED6";
        color[10] = "9D080D";
        color[11] = "A186BE";
    }
    private DataTable LoadGraphData()
    {
        conn.Open();
        string cmd = "select dusername,sum(status) from joinpool group by dusername";
        SqlDataAdapter adp = new SqlDataAdapter(cmd, conn);
        adp.Fill(dt);
        conn.Close();
        return dt;
    }
    private void CreateBarGraph()
    {
        string strCaption = "Driver Analysis";
        string strSubCaption = "Driver Rating";
        string xAxis = "Driver Name";
        string yAxis = "Driver Rate";

        //strXML will be used to store the entire XML document generated
        string strXML = null;

        //Generate the graph element
        strXML = @"<graph caption='" + strCaption + @"' subCaption='" + strSubCaption + @"' decimalPrecision='0' 
                          pieSliceDepth='30' formatNumberScale='0'
                          xAxisName='" + xAxis + @"' yAxisName='" + yAxis + @"' rotateNames='1'
                    >";

        int i = 0;

        foreach (DataRow dr2 in dt.Rows)
        {
            if (i > 11)
            {
                i = 0;
            }
            strXML += "<set name='" + dr2[0].ToString() + "' value='" + dr2[1].ToString() + "' color='" + color[i] + @"'  link=&quot;JavaScript:myJS('" + dr2[0].ToString() + ", " + dr2[1].ToString() + "'); &quot;/>";
            i++;
        }

        //Finally, close <graph> element
        strXML += "</graph>";

        FCLiteral1.Text = FusionCharts.RenderChartHTML(
            "FusionCharts/FCF_Column3D.swf", // Path to chart's SWF
            "",                              // Leave blank when using Data String method
            strXML,                          // xmlStr contains the chart data
            "mygraph1",                      // Unique chart ID
            GraphWidth, GraphHeight,                   // Width & Height of chart
            false
            );
    }
}