using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class docedit : System.Web.UI.Page
{
    string nams;
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
    protected void Page_Load(object sender, EventArgs e)
    {
        nams = (string)Session["nam"];
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
            TextBox10.Enabled = false;
            TextBox11.Enabled = false;
            SqlDataAdapter sda = new SqlDataAdapter("select * from doctorreg where userid='" + nams + "'", con);
            DataSet ds = new DataSet();
            sda.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {

                Label3.Text = ds.Tables[0].Rows[0]["did"].ToString();
                TextBox1.Text = ds.Tables[0].Rows[0]["userid"].ToString();
                TextBox2.Text = ds.Tables[0].Rows[0]["nam"].ToString();
                TextBox3.Text = ds.Tables[0].Rows[0]["cells"].ToString();
                TextBox4.Text = ds.Tables[0].Rows[0]["mail"].ToString();
                TextBox5.Text = ds.Tables[0].Rows[0]["addr1"].ToString();
                TextBox6.Text = ds.Tables[0].Rows[0]["addr"].ToString();
                TextBox7.Text = ds.Tables[0].Rows[0]["citys"].ToString();
                TextBox8.Text = ds.Tables[0].Rows[0]["dob"].ToString();
                TextBox9.Text = ds.Tables[0].Rows[0]["bloods"].ToString();
                TextBox10.Text = ds.Tables[0].Rows[0]["qua"].ToString();
                TextBox11.Text = ds.Tables[0].Rows[0]["des"].ToString();
            }
            else
            {
                RegisterStartupScript("msg", "<script>alert('Data Set Not Found...')</script>");
            }
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Home.aspx");
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
            TextBox10.Enabled = true;
            TextBox11.Enabled = true;
            SqlDataAdapter sda = new SqlDataAdapter("select * from doctorreg where userid='" + nams + "'", con);
            DataSet ds = new DataSet();
            sda.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {

                Label3.Text = ds.Tables[0].Rows[0]["did"].ToString();
                TextBox1.Text = ds.Tables[0].Rows[0]["userid"].ToString();
                TextBox2.Text = ds.Tables[0].Rows[0]["nam"].ToString();
                TextBox3.Text = ds.Tables[0].Rows[0]["cells"].ToString();
                TextBox4.Text = ds.Tables[0].Rows[0]["mail"].ToString();
                TextBox5.Text = ds.Tables[0].Rows[0]["addr1"].ToString();
                TextBox6.Text = ds.Tables[0].Rows[0]["addr"].ToString();
                TextBox7.Text = ds.Tables[0].Rows[0]["citys"].ToString();
                TextBox8.Text = ds.Tables[0].Rows[0]["dob"].ToString();
                TextBox9.Text = ds.Tables[0].Rows[0]["bloods"].ToString();
                TextBox10.Text = ds.Tables[0].Rows[0]["qua"].ToString();
                TextBox11.Text = ds.Tables[0].Rows[0]["des"].ToString();
            }
            else
            {
                RegisterStartupScript("msg", "<script>alert('Data Set Not Found...')</script>");
            }
        }
        else
        {
            SqlCommand cmd = new SqlCommand("update doctorreg set nam='" + TextBox2.Text + "',qua='" + TextBox10.Text + "',des='" + TextBox11.Text + "',cells='" + TextBox3.Text + "',mail='" + TextBox4.Text + "',addr1='" + TextBox5.Text + "',addr='" + TextBox6.Text + "',citys='" + TextBox7.Text + "',dob='" + TextBox8.Text + "',bloods='" + TextBox9.Text + "',userid='" + TextBox1.Text + "' where userid='"+nams+"'", con);
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
            TextBox10.Enabled = false;
            TextBox11.Enabled = false;
            Button1.Text = "Edit";
            RegisterStartupScript("msg", "<script>alert('Data is Updated Successfully...')</script>");
        }

        con.Close();
    }
}
