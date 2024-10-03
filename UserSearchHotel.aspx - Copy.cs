using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class UserSearchHotel : System.Web.UI.Page
{
    DatabaseConnection ob = new DatabaseConnection();
    DatabaseConnection ob1 = new DatabaseConnection();
    public static string fpath = "", s = "", mode = "", str = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            pub();
           
        }
    }
    public void pub()
    {
        DataSet ds = new DataSet();
        try
        {
            string str = "select * from room";
            ds = pubdoc(str);
            if (ds != null)
            {
                DataList1.Visible = true;
                DataList1.DataSource = ds;
                DataList1.DataBind();
            }
            else
            {
                DataList1.Visible = false;
                ScriptManager.RegisterStartupScript(this, this.GetType(), "message", "alert('Document Not Available');", true);

            }
        }
        catch (Exception ex)
        {
        }
    }
    
    public DataSet pubdoc(string str)
    {
        DataSet ds = new DataSet();
        try
        {
            ds = ob.ret_ds(str);

            if (ds.Tables[0].Rows.Count > 0)
            {
                return ds;
            }
            else
            {
                return null;
            }
        }
        catch (Exception ex)
        {
            return null;
        }

    }
    public DataSet pubdoc1(string str)
    {
        DataSet ds1 = new DataSet();
        try
        {
            ds1= ob1.ret_ds(str);

            if (ds1.Tables[0].Rows.Count > 0)
            {
                return ds1;
            }
            else
            {
                return null;
            }
        }
        catch (Exception ex)
        {
            return null;
        }

    }
}