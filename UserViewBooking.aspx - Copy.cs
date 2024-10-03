using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class UserViewBooking : System.Web.UI.Page
{

    DatabaseConnection ob = new DatabaseConnection();
    DatabaseConnection ob1 = new DatabaseConnection();
    public static string fpath = "", s = "", mode = "", str = "";
    protected void Page_Load(object sender, EventArgs e)
    {
       // Session["uuname"] = "prakash";
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
            string str = "select * from RoomBook where status=1 and uname='"+Session["uuname"]+"'";
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
}