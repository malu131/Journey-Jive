using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    DatabaseConnection ob = new DatabaseConnection();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        Session["uname"] = TextBox8.Text;
        Session["pwd"] = TextBox10.Text;
        if (TextBox8.Text == "" || TextBox10.Text == "")
        {
            Label3.Visible = true;
            Label3.ForeColor = System.Drawing.Color.Red;
            Label3.Text = "Please Enter all fields correctly!";
        }
        else
        {
            ob.dr = ob.ret_dr("select * from Login where username='" + TextBox8.Text + "' and pwd='" + TextBox10.Text + "'");
            if (ob.dr.Read())
            {
                if (ob.dr[3].ToString() == '3'.ToString())
                {
                    Session["uid"] = TextBox8.Text;

                    Response.Redirect("AdminApproveDrivers.aspx", true);
                }
                else if (ob.dr[3].ToString() == '1'.ToString())
                {
                    Session["duname"] = TextBox8.Text;
                    Response.Redirect("DriverCreatePool.aspx", true);

                }
                else if (ob.dr[3].ToString() == '2'.ToString())
                {
                    Session["uuname"] = TextBox8.Text;
                    Response.Redirect("UserJoinCarpool.aspx", true);

                }
                else if (ob.dr[3].ToString() == '5'.ToString())
                {
                    Session["huname"] = TextBox8.Text;
                    Response.Redirect("HotelAddRoom.aspx", true);

                }
                else if (ob.dr[3].ToString() == '6'.ToString())
                {
                    Session["suname"] = TextBox8.Text;
                    Response.Redirect("StaffManageContract.aspx", true);

                }
            }
            else
            {
                Response.Write("<script type = 'text/javascript'>alert('Invalid User');</script>");
                TextBox10.Text = "";
                TextBox8.Text = "";
            }
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {

    }
}