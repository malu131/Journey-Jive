using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class UserSendComplaint : System.Web.UI.Page
{
    DatabaseConnection ob = new DatabaseConnection();
    DatabaseConnection ob1 = new DatabaseConnection();
    int compid = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
      //  Session["uid"] = "anu";
        if (!IsPostBack)
        {
            pub();

        }
    }
    public int getid()
    {
        int c = 0;
        ob.dr = ob.ret_dr("select isnull(max(compid),500)+1 from ucomplaint");
        if (ob.dr.Read())
        {
            c = Convert.ToInt32(ob.dr[0].ToString());
        }
        return c;
    }
    public void pub()
    {
        DataSet ds = new DataSet();
        try
        {
            string str = "select compid,sub,msg,date1,reply,date2 from ucomplaint where status=1 and senderid='" + Session["uuname"].ToString() + "'";
            ds = pubdoc(str);
            if (ds != null)
            {
                dgdpublic.Visible = true;
                dgdpublic.DataSource = ds;
                dgdpublic.DataBind();
            }
            else
            {
                dgdpublic.Visible = false;
               // ScriptManager.RegisterStartupScript(this, this.GetType(), "message", "alert('Document Not Available');", true);

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
    protected void Button1_Click(object sender, EventArgs e)
    {
        
        string senderid = Session["uuname"].ToString();
        string receiverid = TextBox2.Text;
        string sub = TextBox1.Text;
        string mesg = TextBox4.Text;
        string date1 = DateTime.Now.ToShortDateString();
        string reply = "0";
        string date2 = "0";
        int status = 0;

        try
        {

            if (TextBox4.Text == "" || TextBox1.Text == "" || TextBox2.Text == "")
            {
                Label11.Visible = true;
                Label11.ForeColor = System.Drawing.Color.Red;
                Label11.Text = "Please Enter all fields correctly!";
            }
            else
            {
                int compid = getid();
                ob.exec("insert into ucomplaint values(" + compid + ",'" + senderid + "','" + receiverid + "','" + sub + "','" + mesg + "','" + date1 + "','" + reply + "','" + date2 + "','" + status + "')");

                Label11.Visible = true;
                Label11.Text = "Message Sended Successfully!";
                TextBox1.Text = "";
                TextBox4.Text = "";
            }

        }
        catch (Exception ex)
        {
            Session["err"] = ex.ToString();
            Response.Redirect("error.aspx");
        }
    }
}