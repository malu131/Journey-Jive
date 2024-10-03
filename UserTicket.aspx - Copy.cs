using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Data;
using System.Text;
using System.IO;
using iTextSharp.text;
using iTextSharp.text.pdf;
using iTextSharp.text.html;
using iTextSharp.text.html.simpleparser;

public partial class UserTicket : System.Web.UI.Page
{
    DatabaseConnection ob = new DatabaseConnection();
    public static string fpath = "", s = "", mode = "", str = "", filePath = "";
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        pub(TextBox1.Text);
    }
    public void pub(string duname1)
    {
        DataSet ds = new DataSet();
        try
        {
            string str = "select * from joinpool where jpid=" + duname1 + "";
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

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
       // string path = Server.MapPath("/Invoice/");
        string filename = Server.MapPath( System.DateTime.Now.Millisecond.ToString() + ".pdf");

        Document document = new Document(PageSize.A4, 20f, 20f, 20f, 20f);

        try
        {
            PdfWriter.GetInstance(document, new FileStream(filename, FileMode.Create));
            PdfPTable table = new PdfPTable(5);
            table.WidthPercentage = 100;


            iTextSharp.text.Image jpg = iTextSharp.text.Image.GetInstance(Server.MapPath("~/images/big2.jpg"));
            jpg.ScaleAbsolute(150f, 100f);
            PdfPCell imagecell = new PdfPCell(jpg);
            imagecell.Border = 0;
            imagecell.Colspan = 3;
            table.AddCell(imagecell);


            PdfPCell cell_11 = new PdfPCell();

            cell_11 = new PdfPCell();
            cell_11.Colspan = 2;
            cell_11.AddElement(new Paragraph("Invoice No:\n"));
            cell_11.AddElement(new Paragraph("Date:" + System.DateTime.Now.ToShortDateString()));
            cell_11.Border = 0;
            table.AddCell(cell_11);

            PdfPCell cell_2 = new PdfPCell();
            cell_2.AddElement(new Paragraph("Sr.No.", FontFactory.GetFont("Arial", 10, Font.NORMAL, GrayColor.GRAY)));
            table.AddCell(cell_2);

            cell_2 = new PdfPCell();
            cell_2.AddElement(new Paragraph("Service Name", FontFactory.GetFont("Arial", 10, Font.NORMAL, GrayColor.GRAY)));
            table.AddCell(cell_2);

            cell_2 = new PdfPCell();
            cell_2.AddElement(new Paragraph("Plan Name", FontFactory.GetFont("Arial", 10, Font.NORMAL, GrayColor.GRAY)));
            table.AddCell(cell_2);

            cell_2 = new PdfPCell();
            cell_2.AddElement(new Paragraph("Month", FontFactory.GetFont("Arial", 10, Font.NORMAL, GrayColor.GRAY)));
            table.AddCell(cell_2);

            cell_2 = new PdfPCell();
            cell_2.AddElement(new Paragraph("Total", FontFactory.GetFont("Arial", 10, Font.NORMAL, GrayColor.GRAY)));
            table.AddCell(cell_2);



            PdfPCell cell_3 = new PdfPCell();
            cell_3.AddElement(new Paragraph("1.", FontFactory.GetFont("Arial", 10, Font.NORMAL, GrayColor.GRAY)));
            table.AddCell(cell_3);

            cell_3 = new PdfPCell();

            cell_3.AddElement(new Paragraph("bbbb", FontFactory.GetFont("Arial", 10, Font.NORMAL, GrayColor.GRAY)));
            table.AddCell(cell_3);

            cell_3 = new PdfPCell();
            cell_3.AddElement(new Paragraph("cccc", FontFactory.GetFont("Arial", 10, Font.NORMAL, GrayColor.GRAY)));
            table.AddCell(cell_3);

            cell_3 = new PdfPCell();
            cell_3.AddElement(new Paragraph(Session["time"].ToString(), FontFactory.GetFont("Arial", 10, Font.NORMAL, GrayColor.GRAY)));
            table.AddCell(cell_3);

            cell_3 = new PdfPCell();
            cell_3.AddElement(new Paragraph("ddd", FontFactory.GetFont("Arial", 10, Font.NORMAL, GrayColor.GRAY)));
            table.AddCell(cell_3);

            PdfPCell cell_4 = new PdfPCell();
            cell_4.Colspan = 4;
            cell_4.AddElement(new Paragraph("Discount:", FontFactory.GetFont("Arial", 10, Font.NORMAL, GrayColor.GRAY)));
            table.AddCell(cell_4);


            cell_4 = new PdfPCell();
            cell_4.AddElement(new Paragraph("ee", FontFactory.GetFont("Arial", 10, Font.NORMAL, GrayColor.GRAY)));
            table.AddCell(cell_4);

            PdfPCell cell_5 = new PdfPCell();
            cell_5.Colspan = 4;
            cell_5.AddElement(new Paragraph("fff", FontFactory.GetFont("Arial", 10, Font.NORMAL, GrayColor.GRAY)));
            table.AddCell(cell_5);


            cell_5 = new PdfPCell();
            cell_5.AddElement(new Paragraph("ggg", FontFactory.GetFont("Arial", 10, Font.NORMAL, GrayColor.GRAY)));
            table.AddCell(cell_5);

            PdfPCell cell_6 = new PdfPCell();
            cell_6.Colspan = 5;

            cell_6.AddElement(new Paragraph("From," + "\n" + "Synifex Infotech Pvt. Ltd", FontFactory.GetFont("Arial", 10, Font.NORMAL, GrayColor.GRAY)));
            table.AddCell(cell_6);

            if (document.IsOpen() == false)
            {
                document.Open();
                document.Add(table);
            }
        }
        catch (Exception ex)
        {

        }
        finally
        {


          document.Close();

            //  Clears all content output from Buffer Stream
            Response.ClearContent();

            //Clears all headers from Buffer Stream
            Response.ClearHeaders();

            //Adds an HTTP header to the output stream
            Response.AddHeader("Content-Disposition", "inline;filename=" + filename);

            //Gets or Sets the HTTP MIME type of the output stream
            Response.ContentType = "application/pdf";

            //Writes the content of the specified file directory to an HTTP response output stream as a file block
            Response.WriteFile(filename);

            //sends all currently buffered output to the client
            Response.Flush();

            //Clears all content output from Buffer Stream
            Response.Clear();
        }
    }
}