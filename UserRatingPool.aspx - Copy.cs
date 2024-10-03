using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.IO;

public partial class UserRatingPool : System.Web.UI.Page
{
    DatabaseConnection ob = new DatabaseConnection();
    DatabaseConnection ob1 = new DatabaseConnection();
    public static string jpid = "", cpid = "", uuname = "", s = "";
    int rate = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        DropDownList2.Visible = false;
        string pdate = "";
        string pname = "";
        Label10.Visible = false;
        //  Session["uuname"] = "prakash";
        uuname = Session["uuname"].ToString();
       
        if (!IsPostBack)
        {

            DropDownList2.Items.Clear();
            DropDownList2.Items.Insert(0, new ListItem("SELECT", "0"));
            DropDownList2.Items.Insert(1, new ListItem("BAD", "1"));
            DropDownList2.Items.Insert(2, new ListItem("AVERAGE", "2"));
            DropDownList2.Items.Insert(3, new ListItem("GOOD", "3"));
            DropDownList2.Items.Insert(4, new ListItem("EXCELLENT", "4"));
        }
        string tdate = DateTime.Now.ToShortDateString();
        ob.dr = ob.ret_dr("select cpname from joinpool where uuname='" + uuname + "' and status=0");
        if (ob.dr.Read())
        {
            pname= ob.dr[0].ToString();
        }
        ob.dr = ob.ret_dr("select ddate from pool where cpname='" + pname + "' and status=1");
        if (ob.dr.Read())
        {
            pdate = ob.dr[0].ToString();
        }
        if (Convert.ToDateTime(tdate) > Convert.ToDateTime(pdate))
        {
            pub();
        }
        else
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "message", "alert('Please Rate After journey');", true);
        }
    }
    public void pub()
    {
        DataSet ds = new DataSet();
        try
        {
            string str = "select * from joinpool where uuname='" + uuname + "' and status=0";
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
    protected void dgpublic_SelectedIndexChanged(object sender, EventArgs e)
    {
        s = dgpublic.DataKeys[dgpublic.SelectedIndex].ToString();
        DropDownList2.Visible = true;
        Label10.Visible = true;
    }
    protected void dgpublic_DeleteCommand(object source, DataGridCommandEventArgs e)
    {

    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {

        
        if (DropDownList2.SelectedItem.ToString() == "BAD")
        {
            rate = 1;
        }
        else if (DropDownList2.SelectedItem.ToString() == "GOOD")
        {
            rate = 2;
        }
        else if (DropDownList2.SelectedItem.ToString() == "AVERAGE")
        {
            rate = 3;
        }
        else if (DropDownList2.SelectedItem.ToString() == "EXCELLENT")
        {
            rate = 4;
        }
        else
        {
            rate = 0;
        }
        ob1.exec("update joinpool set status="+rate+" where jpid=" + s + "");
    }
}