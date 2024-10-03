using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

public partial class UserRegistration : System.Web.UI.Page
{
    DatabaseConnection ob = new DatabaseConnection();
    DatabaseConnection ob1 = new DatabaseConnection();
    public static string document2 = "", document3 = "", document4 = "", document21 = "", document31 = "", document41 = "", document22 = "", document32 = "", document42 = "", document23 = "", document33 = "", document43 = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        for (int i = 1; i <= 31; i++)
        {
            DropDownList7.Items.Add(i.ToString());
        }
        DropDownList7.Items.Insert(0, new ListItem("--DD--", "0"));
        for (int i = 01; i <= 12; i++)
        {
            DropDownList8.Items.Add(i.ToString());
        }
        DropDownList8.Items.Insert(0, new ListItem("--MM--", "0"));
        for (int i = 1950; i <= 2017; i++)
        {
            DropDownList9.Items.Add(i.ToString());
        }
        DropDownList9.Items.Insert(0, new ListItem("--YYYY--", "0"));
        DropDownList6.Items.Insert(0, new ListItem("SELECT", "0"));
        DropDownList6.Items.Insert(1, new ListItem("MALE", "1"));
        DropDownList6.Items.Insert(2, new ListItem("FEMALE", "2"));
        DropDownList10.Items.Insert(0, new ListItem("SELECT", "0"));
        DropDownList10.Items.Insert(1, new ListItem("What is your first name", "1"));
        DropDownList10.Items.Insert(2, new ListItem("What is your first pets name", "2"));
        DropDownList10.Items.Insert(3, new ListItem("your nickname", "3"));
    }
    public int getid()
    {
        int c = 0;
        ob.dr = ob.ret_dr("select isnull(max(uid),100)+1 from uregistration");
        if (ob.dr.Read())
        {
            c = Convert.ToInt32(ob.dr[0].ToString());
        }
        return c;
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text == "" || TextBox2.Text == "" || TextBox3.Text == "" || TextBox10.Text == "" || TextBox11.Text == "" || TextBox5.Text == "" || TextBox8.Text == "" || TextBox7.Text == "" || DropDownList6.SelectedItem.ToString() == "Select" || DropDownList7.SelectedItem.ToString() == "Select" || DropDownList8.SelectedItem.ToString() == "Select" || DropDownList9.SelectedItem.ToString() == "Select" || DropDownList10.SelectedItem.ToString() == "Select")
        {
            Label11.Visible = true;
            Label11.ForeColor = System.Drawing.Color.Red;
            Label11.Text = "Please Enter all fields correctly!";
        }
        else
        {
            int uid = getid();
            string dob = DropDownList7.SelectedItem.ToString() + "/" + DropDownList8.SelectedItem.ToString() + "/" + DropDownList9.SelectedItem.ToString();
            string address = TextBox7.Text;
            ob.dr = ob.ret_dr("select username from Login where username='" + TextBox1.Text + "'");
            if (!ob.dr.Read())
            {
                document41 = "uphoto/" + document31;
                string str = "insert into uregistration values(" + uid + ",'" + TextBox1.Text + "','" + TextBox3.Text + "','" + TextBox8.Text + "','" + TextBox2.Text + "','" + DropDownList6.SelectedItem.ToString() + "','" + TextBox10.Text + "','" + dob + "','" + address + "','" + DropDownList10.SelectedItem.ToString() + "','" + TextBox11.Text + "',0,'" + document41 + "','" + TextBox4.Text + "')";
                ob.exec(str);
                ob1.exec("insert into Login values(" + uid + ",'" + TextBox1.Text + "','" + TextBox3.Text + "',0)");
                Label11.Visible = true;
                Label11.ForeColor = System.Drawing.Color.Green;
                Label11.Text = "Your request has been approved!";
                Response.Write("<script type = 'text/javascript'>alert('Successfully Complete Thank you');</script>");
                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";
                TextBox8.Text = "";
                TextBox5.Text = "";
                TextBox10.Text = "";
                TextBox7.Text = "";
                TextBox11.Text = "";
                Response.Redirect("HomePage.aspx");
            }
            else
            {
                Label11.Visible = true;
                Label11.Text = "Username Not Available!";
            }
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {

    }
    protected void FileUpload4_Load(object sender, EventArgs e)
    {
        try
        {
            document21 = Server.MapPath("~/uphoto/" + "/");
            if (!Directory.Exists(document21))
                Directory.CreateDirectory(document21);
            if (FileUpload4.HasFile)
            {
                try
                {
                    // document2 = document2 + FileUpload1.FileName.Trim(' ');
                    string extension = Path.GetExtension(FileUpload4.PostedFile.FileName);
                    FileUpload4.SaveAs(document21 + TextBox1.Text + extension);
                    document31 = TextBox1.Text + extension;
                }
                catch (Exception ex)
                { }

            }
        }
        catch (Exception ex)
        {
        }
    }
}