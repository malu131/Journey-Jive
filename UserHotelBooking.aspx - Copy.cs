using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserHotelBooking : System.Web.UI.Page
{
    DatabaseConnection ob = new DatabaseConnection();
    DatabaseConnection ob1 = new DatabaseConnection();
    public static double slat, slong, dlat, dlong;
    public static string bookid = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        getid();
        //Session["uuname"] = "prakash";
        TextBox1.Text = Session["uuname"].ToString();
        getname();
        if (!IsPostBack)
        {
            DropDownList6.Items.Clear();
            DropDownList3.Items.Clear();
          //  DropDownList1.Items.Clear();
            DropDownList2.Items.Clear();
           // DropDownList1.Items.Insert(0, new ListItem("SELECT", "0"));
            DropDownList2.Items.Insert(0, new ListItem("SELECT", "0"));
            DropDownList3.Items.Insert(0, new ListItem("SELECT", "0"));
            DropDownList3.Items.Insert(1, new ListItem("Single", "1"));
            DropDownList3.Items.Insert(2, new ListItem("Double", "2"));
            DropDownList6.Items.Insert(0, new ListItem("SELECT", "0"));
            DropDownList7.Items.Insert(0, new ListItem("SELECT", "0"));
            DropDownList7.Items.Insert(1, new ListItem("AC", "1"));
            DropDownList7.Items.Insert(2, new ListItem("NonAC", "2"));
            DropDownList8.Items.Insert(0, new ListItem("SELECT", "0"));
            DropDownList8.Items.Insert(1, new ListItem("1", "1"));
            DropDownList8.Items.Insert(2, new ListItem("2", "2"));
            DropDownList8.Items.Insert(3, new ListItem("3", "3"));
            DropDownList1.Items.Insert(0, new ListItem("SELECT", "0"));
            DropDownList4.Items.Insert(0, new ListItem("SELECT", "0"));
            DropDownList5.Items.Insert(0, new ListItem("SELECT", "0"));

            ob.dr = ob.ret_dr("select distinct location from hregistration");
            while (ob.dr.Read())
            {
                DropDownList6.Items.Add(ob.dr[0].ToString());
            }
        }
    }
    void getid()
    {
        ob.dr = ob.ret_dr("select isnull(max(bookid),2000)+1 from RoomBook");
        if (ob.dr.Read())
        {
            bookid = ob.dr[0].ToString();

        }
    }
    void getname()
    {
        ob.dr = ob.ret_dr("select * from uregistration where username='" + Session["uuname"].ToString() + "'");
        if (ob.dr.Read())
        {
            TextBox8.Text = ob.dr[3].ToString();
            TextBox2.Text = ob.dr[4].ToString();
            TextBox3.Text = ob.dr[6].ToString();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox10.Text == "" || TextBox2.Text == "" || TextBox3.Text == "" || TextBox10.Text == "" || TextBox11.Text == "" || TextBox9.Text == "" || DropDownList3.SelectedItem.ToString() == "Select" || DropDownList7.SelectedItem.ToString() == "Select" || DropDownList8.SelectedItem.ToString() == "Select" )
        {
            Label11.Visible = true;
            Label11.ForeColor = System.Drawing.Color.Red;
            Label11.Text = "Please Enter all fields correctly!";
        }
        else
        {
            string fprice = (Convert.ToDouble(TextBox7.Text) + Convert.ToDouble(TextBox12.Text) + Convert.ToDouble(TextBox12.Text)).ToString();
            string tprice = (Convert.ToDouble(TextBox10.Text) + Convert.ToDouble(fprice)).ToString();
            string rtype = DropDownList3.SelectedItem.ToString() + ":" + DropDownList7.SelectedItem.ToString();
            string str = "insert into RoomBook values(" + bookid + ",'" + TextBox1.Text + "','" + TextBox8.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "'," + DropDownList8.SelectedItem.ToString() + ",' "+rtype+" ','" + TextBox9.Text + "','" + DropDownList6.SelectedItem.ToString() + "','" + DropDownList2.SelectedItem.ToString() + "',0,'"+ TextBox4.Text + "','" + TextBox5.Text + "','"+ TextBox6.Text + "','"+fprice+"','" + tprice + "','" + TextBox13.Text + "',0)";
            ob.exec(str);
            Label11.Visible = true;
            Label11.ForeColor = System.Drawing.Color.Green;
            Label11.Text = " Booking Sucessfully! Your Booking ID:" + bookid;
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox8.Text = "";
           // TextBox5.Text = "";
            TextBox10.Text = "";
            //TextBox7.Text = "";
            TextBox11.Text = "";
            //  Response.Redirect("Login.aspx");
            ScriptManager.RegisterStartupScript(this, this.GetType(), "message", "alert('Booking successfull');", true);

        }
    }
    
    protected void DropDownList6_SelectedIndexChanged(object sender, EventArgs e)
    {
        ob.dr = ob.ret_dr("select huname from room where location='" + DropDownList6.SelectedItem.ToString() + "'");
        while (ob.dr.Read())
        {
            DropDownList2.Items.Add(ob.dr[0].ToString());

        }

    }
    protected void Button2_Click(object sender, EventArgs e)
    {

    }
    protected void Calendar2_SelectionChanged(object sender, EventArgs e)
    {
        TextBox13.Text = Calendar2.SelectedDate.ToShortDateString();
    }
   
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        ob.dr = ob.ret_dr("select bfast,lunch,dinner from foodmenu where huname='" + DropDownList2.SelectedItem.ToString() + "'");
        while (ob.dr.Read())
        {
            DropDownList1.Items.Add(ob.dr[0].ToString());
            DropDownList4.Items.Add(ob.dr[1].ToString());
            DropDownList5.Items.Add(ob.dr[2].ToString());
        }
        ob.dr = ob.ret_dr("select rcode,hname from room where huname='" + DropDownList2.SelectedItem.ToString() + "'");
        if (ob.dr.Read())
        {
           // DropDownList3.Items.Add(ob.dr[0].ToString());
            TextBox11.Text = ob.dr[1].ToString();
        }
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        ob.dr = ob.ret_dr("select bprice from foodmenu where bfast='" + DropDownList1.SelectedItem.ToString() + "'");
        if (ob.dr.Read())
        {
            TextBox7.Text = ob.dr[0].ToString();
            TextBox4.Text = DropDownList1.SelectedItem.ToString();

        }
    }
    protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList3.SelectedItem.ToString() == "Single")
        {
           
            TextBox9.Text = "800";
            
        }
        else if (DropDownList3.SelectedItem.ToString() == "Double")
        {
            
            TextBox9.Text = "1400";
        }
        else
        {
            Label11.Visible = true;
            Label11.ForeColor = System.Drawing.Color.Green;
            Label11.Text = "Please Select Room Type";
        }
        //ob.dr = ob.ret_dr("select * from room where rcode=" + DropDownList3.SelectedItem.ToString() + "");
        //if (ob.dr.Read())
        //{
        //    TextBox4.Text = ob.dr[4].ToString();
        //    TextBox9.Text = ob.dr[6].ToString();
        //    //TextBox6.Text = ob.dr[5].ToString();
        //    TextBox10.Text = (Convert.ToDouble(TextBox9.Text) + 100).ToString();


        //}

       // TextBox7.Text = (Convert.ToDouble(TextBox10.Text) + Convert.ToDouble(TextBox9.Text)).ToString();
    }
    protected void DropDownList7_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList7.SelectedItem.ToString() == "AC")
        {
            
            TextBox10.Text = (Convert.ToDouble(TextBox9.Text) + 100).ToString();

        }
        else if (DropDownList7.SelectedItem.ToString() == "NonAC")
        {
            
            TextBox10.Text = TextBox9.Text;
        }
        else
        {
            Label11.Visible = true;
            Label11.ForeColor = System.Drawing.Color.Green;
            Label11.Text = "Please Select Room Facility";
        }
    }
    protected void DropDownList8_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList8.SelectedItem.ToString() == "1")
        {

            TextBox10.Text = (Convert.ToDouble(TextBox10.Text) *1).ToString();

        }
        else if (DropDownList8.SelectedItem.ToString() == "2")
        {

            TextBox10.Text = (Convert.ToDouble(TextBox10.Text) * 2).ToString();
        }
        else if (DropDownList8.SelectedItem.ToString() == "3")
        {

            TextBox10.Text = (Convert.ToDouble(TextBox10.Text) * 3).ToString();
        }
        else
        {
            Label11.Visible = true;
            Label11.ForeColor = System.Drawing.Color.Green;
            Label11.Text = "Please Select Number of Rooms";
        }
    }

    protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
    {
        ob.dr = ob.ret_dr("select lprice from foodmenu where lunch='" + DropDownList4.SelectedItem.ToString() + "'");
        if (ob.dr.Read())
        {
            TextBox12.Text = ob.dr[0].ToString();
            TextBox5.Text = DropDownList4.SelectedItem.ToString();

        }
    }

    protected void DropDownList5_SelectedIndexChanged(object sender, EventArgs e)
    {
        ob.dr = ob.ret_dr("select dprice from foodmenu where dinner='" + DropDownList5.SelectedItem.ToString() + "'");
        if (ob.dr.Read())
        {
            TextBox14.Text = ob.dr[0].ToString();
            TextBox6.Text = DropDownList5.SelectedItem.ToString();

        }
    }
}