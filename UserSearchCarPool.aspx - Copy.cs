using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.IO;

public partial class UserSearchCarPool : System.Web.UI.Page
{
    DatabaseConnection ob = new DatabaseConnection();
    DatabaseConnection ob1 = new DatabaseConnection();
    public static string jpid = "", cpid = "", uuname = "", distance = "";
    public static string fpath = "", s = "", mode = "", str = "", sdate1 = "";
    public static int tseat = 0, avseat = 0, nday = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
      //  Session["uuname"] = "anoop";
        uuname = Session["uuname"].ToString();
       
        if (!IsPostBack)
        {

            DropDownList2.Items.Clear();
            DropDownList1.Items.Clear();
            DropDownList2.Items.Insert(0, new ListItem("SELECT", "0"));
            DropDownList1.Items.Insert(0, new ListItem("SELECT", "0"));
            //ob.dr = ob.ret_dr("select pname from Place_tb");
            //while (ob.dr.Read())
            //{
            //    DropDownList2.Items.Add(ob.dr[0].ToString());
            //    DropDownList1.Items.Add(ob.dr[0].ToString());
            //}
            ob.dr = ob.ret_dr("select distinct source from Pool where Convert(date, sdate,104) >=getdate()");
            while (ob.dr.Read())
            {
                DropDownList2.Items.Add(ob.dr[0].ToString());

            }
            ob.dr = ob.ret_dr("select distinct destination from Pool where Convert(date, sdate,104) >=getdate()");
            while (ob.dr.Read())
            {
                DropDownList1.Items.Add(ob.dr[0].ToString());

            }
        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {

        pub();
        

    }
    protected void dgpublic_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    public void pub()
    {
        DataSet ds = new DataSet();
        try
        {
            string dd = DateTime.Now.ToShortDateString();
            // string str = "select * from (select * from pool where status=1 and sdate >= CAST( '"+dd+"' as Datetime)) pool where source='" + DropDownList2.SelectedItem.ToString() + "' and destination='" + DropDownList1.SelectedItem.ToString() + "'";
            string str = "select * from (select * from pool where status=1 and Convert(date, sdate,104) >=getdate() ) pool where source='" + DropDownList2.SelectedItem.ToString() + "' and destination='" + DropDownList1.SelectedItem.ToString() + "'";
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
                ScriptManager.RegisterStartupScript(this, this.GetType(), "message", "alert('Currently Pool Not Available Please Select Other Locations');", true);

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
    protected void dgpublic_DeleteCommand(object source, DataGridCommandEventArgs e)
    {

    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}