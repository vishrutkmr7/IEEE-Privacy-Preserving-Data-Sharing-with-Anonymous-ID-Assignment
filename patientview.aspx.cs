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

public partial class patientview : System.Web.UI.Page
{
    string nams;
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
    protected void Page_Load(object sender, EventArgs e)
    {
        nams = (string)Session["nam1"];
        if (!IsPostBack)
        {
            TextBox1.Enabled = false;
            TextBox2.Enabled = false;
            TextBox3.Enabled = false;
            TextBox4.Enabled = false;
            TextBox5.Enabled = false;
            TextBox6.Enabled = false;
            TextBox7.Enabled = false;
            TextBox8.Enabled = false;
            TextBox9.Enabled = false;
            SqlDataAdapter sda = new SqlDataAdapter("select * from patientreg where userid='" + nams + "'", con);
            DataSet ds = new DataSet();
            sda.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                
                Label3.Text = ds.Tables[0].Rows[0]["pid"].ToString();
                TextBox1.Text = ds.Tables[0].Rows[0]["userid"].ToString();
                TextBox2.Text = ds.Tables[0].Rows[0]["nam"].ToString();
                TextBox3.Text = ds.Tables[0].Rows[0]["mob"].ToString();
                TextBox4.Text = ds.Tables[0].Rows[0]["mail"].ToString();
                TextBox5.Text = ds.Tables[0].Rows[0]["addr1"].ToString();
                TextBox6.Text = ds.Tables[0].Rows[0]["addr2"].ToString();
                TextBox7.Text = ds.Tables[0].Rows[0]["citys"].ToString();
                TextBox8.Text = ds.Tables[0].Rows[0]["dob"].ToString();
                TextBox9.Text = ds.Tables[0].Rows[0]["blood"].ToString();
            }
            else
            {
                RegisterStartupScript("msg", "<script>alert('Data Set Not Found...')</script>");
            }
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Home2.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        if (Button1.Text == "Edit")
        {
            Button1.Text = "Update";
            TextBox1.Enabled = true;
            TextBox2.Enabled = true;
            TextBox3.Enabled = true;
            TextBox4.Enabled = true;
            TextBox5.Enabled = true;
            TextBox6.Enabled = true;
            TextBox7.Enabled = true;
            TextBox8.Enabled = true;
            TextBox9.Enabled = true;
            SqlDataAdapter sda = new SqlDataAdapter("select * from patientreg where userid='" + nams + "'", con);
            DataSet ds = new DataSet();
            sda.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {

                Label3.Text = ds.Tables[0].Rows[0]["pid"].ToString();
                TextBox1.Text = ds.Tables[0].Rows[0]["userid"].ToString();
                TextBox2.Text = ds.Tables[0].Rows[0]["nam"].ToString();
                TextBox3.Text = ds.Tables[0].Rows[0]["mob"].ToString();
                TextBox4.Text = ds.Tables[0].Rows[0]["mail"].ToString();
                TextBox5.Text = ds.Tables[0].Rows[0]["addr1"].ToString();
                TextBox6.Text = ds.Tables[0].Rows[0]["addr2"].ToString();
                TextBox7.Text = ds.Tables[0].Rows[0]["citys"].ToString();
                TextBox8.Text = ds.Tables[0].Rows[0]["dob"].ToString();
                TextBox9.Text = ds.Tables[0].Rows[0]["blood"].ToString();
            }
            else
            {
                RegisterStartupScript("msg", "<script>alert('Data Set Not Found...')</script>");
            }
        }
        else
        {
            SqlCommand cmd = new SqlCommand("update patientreg set nam='" + TextBox2.Text + "',mob='" + TextBox3.Text + "',mail='" + TextBox4.Text + "',addr1='" + TextBox5.Text + "',addr2='" + TextBox6.Text + "',citys='" + TextBox7.Text + "',dob='" + TextBox8.Text + "',blood='" + TextBox9.Text + "',userid='" + TextBox1.Text + "' where userid='" + nams + "'", con);
            cmd.ExecuteNonQuery();
            TextBox1.Enabled = false;
            TextBox2.Enabled = false;
            TextBox3.Enabled = false;
            TextBox4.Enabled = false;
            TextBox5.Enabled = false;
            TextBox6.Enabled = false;
            TextBox7.Enabled = false;
            TextBox8.Enabled = false;
            TextBox9.Enabled = false;
            Button1.Text = "Edit";
            RegisterStartupScript("msg", "<script>alert('Data is Updated Successfully...')</script>");
        }
       
        con.Close();
    }
}
