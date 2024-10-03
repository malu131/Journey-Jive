using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.IO;
using System.Activities.Expressions;

public partial class UserJoinCarpool : System.Web.UI.Page
{
    DatabaseConnection ob = new DatabaseConnection();
    DatabaseConnection ob1 = new DatabaseConnection();
    public static string jpid = "", cpid="", uuname="",distance="";
     public static string fpath = "", s = "", mode = "", str = "", sdate1 = "";
     public static int tseat = 0, avseat=0, nday=0;
    protected void Page_Load(object sender, EventArgs e)
    {
        getid();
       // Session["uuname"] = "anoop";
        uuname=Session["uuname"].ToString();
        TextBox6.Text = DateTime.Now.ToShortDateString();
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
    void getid()
    {
        ob.dr = ob.ret_dr("select isnull(max(jpid),700)+1 from joinpool");
        if (ob.dr.Read())
        {
            jpid = ob.dr[0].ToString();
        }
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text == "" || TextBox2.Text == "" || TextBox3.Text == "" || TextBox10.Text == "" || TextBox11.Text == "" || TextBox5.Text == "" || TextBox8.Text == "" || TextBox7.Text == "")
        {
            Label11.Visible = true;
            Label11.ForeColor = System.Drawing.Color.Red;
            Label11.Text = "Please Enter all fields correctly!";
        }
        else
        {
            int countseat = Convert.ToInt32(TextBox11.Text);
            if (countseat > 0)
            {

                string str = "insert into joinpool values(" + jpid + "," + cpid + ",'" + TextBox5.Text + "','" + TextBox1.Text + "','" + uuname + "','" + TextBox9.Text + "','" + TextBox7.Text + "','" + distance + "'," + nday + ",1,0,'" + TextBox15.Text + "','" + TextBox16.Text + "','" + TextBox18.Text + "')";
                ob.exec(str);
                Label11.Visible = true;
                Label11.ForeColor = System.Drawing.Color.Green;
               
                Label11.Text = " Join Pool registerd Sucessfully!";

                Label21.Text = "YOUR TICKET NUMBER IS: " + jpid;
               
                //  Response.Redirect("Login.aspx");
                Session["jpid"] = jpid;
                Session["cpid"] = cpid;
                Session["cpname"] = TextBox5.Text;
                Session["uname"] = uuname;
                Session["source"] = TextBox9.Text;
                Session["destination"] = TextBox7.Text;
                Session["distance"] = distance;
                Session["Amount"] = TextBox14.Text;
                Session["sdate"] = TextBox12.Text;
                
                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";
                TextBox8.Text = "";
                TextBox5.Text = "";
                TextBox10.Text = "";
                TextBox7.Text = "";
                TextBox11.Text = "";
                Response.Redirect("UserPayment.aspx");
            }
            else
            {
                Label11.Visible = true;
                Label11.ForeColor = System.Drawing.Color.Red;
                Label11.Text = " Seat Not Available !";
            }
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        pub();
    }
    public void pub()
    {
        DataSet ds = new DataSet();
        try
        {
            string dd = DateTime.Now.ToShortDateString();
            //string str = "select * from (select * from pool where status=1 and sdate >='"+dd+"') pool where source='"+DropDownList2.SelectedItem.ToString()+"' and destination='"+DropDownList1.SelectedItem.ToString()+"'";
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
         ob.dr = ob.ret_dr("select * from Pool where cpid="+s+"");
         if (ob.dr.Read())
         {
             TextBox1.Text = ob.dr[2].ToString();
             TextBox8.Text = ob.dr[3].ToString();
             TextBox2.Text = ob.dr[4].ToString();
             TextBox3.Text = ob.dr[5].ToString();
             TextBox5.Text = ob.dr[1].ToString();
             TextBox4.Text = ob.dr[8].ToString();
             TextBox12.Text = ob.dr[6].ToString();
             TextBox10.Text = ob.dr[7].ToString();
             TextBox9.Text = ob.dr[12].ToString();
             TextBox7.Text = ob.dr[13].ToString();
             TextBox17.Text = ob.dr[21].ToString();
            TextBox14.Text = ob.dr[19].ToString();
            cpid = s.ToString();
             tseat = Convert.ToInt32(ob.dr[11].ToString());
             distance = ob.dr[14].ToString();
             nday = Convert.ToInt32(ob.dr[17].ToString());
             string authors = ob.dr[22].ToString();
             // Split authors separated by a comma followed by space  
             string[] authorsList = authors.Split(':');
             foreach (string author in authorsList)
             {
                 DropDownList3.Items.Add(author);
             }
         }
 
        int jseat = 0;
        string str1="select sum(nseat) from joinpool where cpid="+s+"";
        ob.dr = ob.ret_dr(str1);
    
        if (ob.dr.Read())
        {
            string s1 = ob.dr[0].ToString();
            if (ob.dr[0].ToString() == "")
            {
                jseat = 0;
            }
            else
            {
                jseat = Convert.ToInt32(ob.dr[0].ToString());
            }
        }
       
       
      avseat = tseat - jseat;
      TextBox11.Text = avseat.ToString();


         ob.dr = ob.ret_dr("select * from dregistration where username='"+TextBox1.Text+"'");
         if (ob.dr.Read())
         {
             TextBox13.Text = ob.dr[5].ToString();
         }

         ob.dr = ob.ret_dr("select cost from Pool where cpid=" +cpid + "");
         if (ob.dr.Read())
         {
            // TextBox14.Text = ob.dr[0].ToString();
         }

         Label27.Text = GetRating();
     
    }
    public string GetRating()
    {
        string sql = "SELECT ROUND(ISNULL(CAST(SUM(status) AS NUMERIC(5, 2)) / COUNT(status), 0), 1) Average";
        sql += ", COUNT(status) Total FROM joinpool where dusername='" + TextBox1.Text + "'";
        string constr = "Data Source=.;Initial Catalog=CarPool;Integrated Security=True";
        using (SqlConnection con = new SqlConnection(constr))
        {
            using (SqlCommand cmd = new SqlCommand(sql))
            {
                cmd.CommandType = CommandType.Text;
                cmd.Connection = con;
                con.Open();
                string json = string.Empty;
                using (SqlDataReader sdr = cmd.ExecuteReader())
                {
                    sdr.Read();
                    // json1 = string.Format("Average: {0}, Total: {1}", sdr["Average"], sdr["Total"]);
                    Double dx2 = Convert.ToDouble(sdr["Average"]);
                    json = string.Format("Pooler Rating: {0}/5   Total Rides : {1}", (Math.Round(dx2)), sdr["Total"]);
                    
                    sdr.Close();
                }
                con.Close();
                return json;
            }
        }
    }
    protected void dgpublic_DeleteCommand(object source, DataGridCommandEventArgs e)
    {
        
    }
    protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
    {
        if(DropDownList3.SelectedItem.ToString()==TextBox7.Text)
        {
            TextBox15.Text = DropDownList3.SelectedItem.ToString();
            DropDownList3.Items.Clear();
        }
        else
        {
            int cpoint = DropDownList3.Items.Count;
            double tpcost = Convert.ToDouble(TextBox14.Text) / cpoint;
            int spoint = DropDownList3.SelectedIndex;
            double tcost = tpcost * spoint;
            //int cpoint1 = Math.Abs(spoint - cpoint);
            //double tcost = tpcost * (cpoint1);
            TextBox14.Text = tcost.ToString();
            TextBox15.Text = DropDownList3.SelectedItem.ToString();
            DropDownList3.Items.Clear();

        }
       
        
    }
}