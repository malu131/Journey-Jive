using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.IO;

public partial class UserProfile : System.Web.UI.Page
{
    DatabaseConnection ob = new DatabaseConnection();
    DatabaseConnection ob1 = new DatabaseConnection();
    DataSet ds = new DataSet();
    public static string fpath = "", s = "", uusername = "", str = "", sdate1 = "";
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
        uusername = Session["uuname"].ToString();
       // uusername = "prakash";
        s = uusername;
        ob.dr = ob.ret_dr("select * from uregistration where username='" + s + "'");
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
        string str = "select uphoto from uregistration where username='" + s + "'";
        ds = ob1.ret_ds(str);
        pgd.DataSource = ds.Tables[0].DefaultView;
        //pgd.CurrentPageIndex = CurrentPageIndex;
        //pgd.AllowPaging = true;
        //pgd.PageSize = 4;
        DataList1.DataSource = pgd;
        DataList1.DataBind();
    }
}