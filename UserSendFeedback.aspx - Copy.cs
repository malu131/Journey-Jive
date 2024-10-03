using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserSendFeedback : System.Web.UI.Page
{
    DatabaseConnection ob = new DatabaseConnection();
    DatabaseConnection ob1 = new DatabaseConnection();
    int compid = 0;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    public int getid()
    {
        int c = 0;
        ob.dr = ob.ret_dr("select isnull(max(feedid),800)+1 from feedback");
        if (ob.dr.Read())
        {
            c = Convert.ToInt32(ob.dr[0].ToString());
        }
        return c;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
       // Session["uuname"] = "anoop";
        string senderid = Session["uuname"].ToString();
        string date1 = DateTime.Now.ToShortDateString();
      
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
                ob.exec("insert into feedback values(" + compid + ",'" + senderid + "','" + TextBox2.Text + "','" + TextBox1.Text + "','" + TextBox4.Text + "'," + status + ",'" + date1 + "')");

                Label11.Visible = true;
                Label11.Text = "Feedback Registered Successfully!";
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