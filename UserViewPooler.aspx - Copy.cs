using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.IO;
using System.Web.Services;
using System.Configuration;

public partial class UserViewPooler : System.Web.UI.Page
{
    DatabaseConnection ob = new DatabaseConnection();
    DatabaseConnection ob1 = new DatabaseConnection();
    DataSet ds = new DataSet();
    public static string fpath = "", s = "", dusername = "", str = "", sdate1 = "";

    [WebMethod]
    public static string GetRating()
    {
        string sql = "SELECT ROUND(ISNULL(CAST(SUM(status) AS NUMERIC(5, 2)) / COUNT(status), 0), 1) Average";
        sql += ", COUNT(status) Total FROM joinpool where dusername='"+dusername+"'";
        string constr = "Data Source=.;Initial Catalog=CarPool;Integrated Security=True";
        using (SqlConnection con = new SqlConnection(constr))
        {
            using (SqlCommand cmd = new SqlCommand(sql))
            {
                cmd.CommandType = CommandType.Text;
                cmd.Connection = con;
                con.Open();
                string json = string.Empty;
                using (SqlDataReader sdr = cmd.ExecuteReader())
                {
                    sdr.Read();
                   // json1 = string.Format("Average: {0}, Total: {1}", sdr["Average"], sdr["Total"]);
                    json += "[ {";
                    json += string.Format("Average: {0}, Total : {1}", sdr["Average"], sdr["Total"]);
                    json += "} ]";
                    sdr.Close();
                }
                con.Close();
                return json;
            }
        }
    }
    public int CurrentPageIndex
    {
        get
        {
            if (ViewState["pg"] == null)
                return 0;
            else
                return Convert.ToInt16(ViewState["pg"]);
        }
        set
        {
            ViewState["pg"] = value;
        }
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        dusername = Session["puname"].ToString();
       // dusername = "chikku";
        s = dusername;
       // TextBox3.Text = GetRating();
        ob.dr = ob.ret_dr("select * from dregistration where username='" + s + "'");
        if (ob.dr.Read())
        {
            TextBox1.Text = ob.dr[1].ToString();
            TextBox8.Text = ob.dr[3].ToString();
            TextBox6.Text = ob.dr[5].ToString();
         
           
            TextBox10.Text = ob.dr[6].ToString();
            
            TextBox2.Text = ob.dr[4].ToString();
            TextBox9.Text = ob.dr[7].ToString();
            TextBox4.Text = ob.dr[13].ToString();
           
            TextBox7.Text = ob.dr[8].ToString();
           //fpath=Server.MapPath(ob.dr[12].ToString());
           //Image1.ImageUrl = fpath;
           

        }
        CurrentPageIndex = 0;
        
        PagedDataSource pgd = new PagedDataSource();
        string str = "select dphoto from dregistration where username='" + s + "'";
        ds = ob1.ret_ds(str);
        pgd.DataSource = ds.Tables[0].DefaultView;
        //pgd.CurrentPageIndex = CurrentPageIndex;
        //pgd.AllowPaging = true;
        //pgd.PageSize = 4;
        DataList1.DataSource = pgd;
        DataList1.DataBind();
    }
}