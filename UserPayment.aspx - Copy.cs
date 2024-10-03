using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserPayment : System.Web.UI.Page
{
    DatabaseConnection ob = new DatabaseConnection();
    public static int count = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        Label2.Text = Session["jpid"].ToString();
        Label3.Text = Session["cpid"].ToString();
        Label11.Text = Session["cpname"].ToString();
        Label9.Text = Session["uname"].ToString();
        Label7.Text = Session["source"].ToString();
        Label22.Text = Session["destination"].ToString();
        Label18.Text = Session["distance"].ToString();
        Label20.Text = Session["Amount"].ToString();
        Label16.Text = Session["sdate"].ToString();
        DropDownList8.Items.Insert(0, new ListItem("SELECT", "0"));
        for (int i = 2022; i <= 2030; i++)
        {
            DropDownList8.Items.Add(i.ToString());
        }
        DropDownList7.Items.Insert(0, new ListItem("MONTH", "0"));
        DropDownList7.Items.Insert(0, new ListItem("SELECT", "0"));
        DropDownList7.Items.Insert(1, new ListItem("January", "1"));
        DropDownList7.Items.Insert(2, new ListItem("February ", "2"));
        DropDownList7.Items.Insert(2, new ListItem("March", "3"));
        DropDownList7.Items.Insert(2, new ListItem("April", "4"));
        DropDownList7.Items.Insert(2, new ListItem("May ", "5"));
        DropDownList7.Items.Insert(2, new ListItem("June ", "6"));
        DropDownList7.Items.Insert(2, new ListItem("July ", "7"));
        DropDownList7.Items.Insert(2, new ListItem("August", "8"));
        DropDownList7.Items.Insert(2, new ListItem("September ", "9"));
        DropDownList7.Items.Insert(2, new ListItem("October", "10"));
        DropDownList7.Items.Insert(2, new ListItem("November ", "11"));
        DropDownList7.Items.Insert(2, new ListItem("December", "12"));
       
    }
    public int getid()
    {
        int c = 0;
        ob.dr = ob.ret_dr("select isnull(max(payid),1000)+1 from payment");
        if (ob.dr.Read())
        {
            c = Convert.ToInt32(ob.dr[0].ToString());
        }
        return c;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        int uid = getid();
        string str = "insert into payment values(" + uid + ",'" + Label2.Text + "','" + Label3.Text + "','" + Label11.Text + "','" + Label9.Text + "','" + Label7.Text + "','" + Label22.Text + "','" + Label18.Text + "','" + Label20.Text + "',0,'"+Label16.Text+"')";
        ob.exec(str);
        Response.Write("<script type = 'text/javascript'>alert('Successfully Complete Payment Thank you');</script>");
        Label23.Visible = true;
        Label23.Text = "Payment Successful!";
    }
}