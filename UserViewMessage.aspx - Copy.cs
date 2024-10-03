using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

public partial class UserViewMessage : System.Web.UI.Page
{
    DatabaseConnection ob = new DatabaseConnection();
    DatabaseConnection ob1 = new DatabaseConnection();
    public static string fpath = "", s = "", mode = "", str = "";
    public string receiverid;
    public static string uuname = "";
    protected void Page_Load(object sender, EventArgs e)
    {
       // Session["uuname"] = "prakash";
        uuname = Session["uuname"].ToString();
        receiverid = uuname;

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
            string str = "select compid,senderid,sub,msg,date1 from ucomplaint where status=0 and receiverid='" + receiverid + "'";
            ds = pubdoc(str);
            if (ds != null)
            {
                dgpublic.Visible = true;
                dgpublic.DataSource = ds;
                dgpublic.DataBind();
            }
            else
            {
                dgpublic.Visible = false;
                //ScriptManager.RegisterStartupScript(this, this.GetType(), "message", "alert('Document Not Available');", true);

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