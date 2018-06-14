using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;

public partial class paschange : System.Web.UI.Page
{
    string nams;
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
    protected void Page_Load(object sender, EventArgs e)
    {
        nams = (string)Session["nam1"];
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Home2.aspx");
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        con.Open();
        SqlDataAdapter sda = new SqlDataAdapter("select * from patientreg where userid='" + nams + "'", con);
        DataSet ds = new DataSet();
        sda.Fill(ds);
        if (TextBox1.Text == ds.Tables[0].Rows[0]["pass"].ToString())
        {
            SqlCommand cmd = new SqlCommand("update patientreg set pass='" + TextBox2.Text + "'", con);
            cmd.ExecuteNonQuery();
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            RegisterStartupScript("msg", "<script>alert('Password successfully changed...')</script>");
        }
        else
        {
            TextBox1.Text = "";
            RegisterStartupScript("msg", "<script>alert('Enter the Correct Password...')</script>");
        }
        con.Close();
    }
}
