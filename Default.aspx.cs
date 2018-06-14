using System;
using System.Configuration;
using System.Data;
using System.Web.UI;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page 
{
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["pass"] = "customerservice@404";
        if (!IsPostBack)
        {
            Label3.Visible = false;
            TextBox2.Visible = false;
        }
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        SqlDataAdapter sda = new SqlDataAdapter("select * from doctorreg where userid='" + TextBox1.Text + "'", con);
        DataSet ds = new DataSet();
        sda.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            if (TextBox1.Text == ds.Tables[0].Rows[0]["userid"].ToString())
            {
                Label3.Visible = true;
                TextBox2.Visible = true;
                ImageButton1.ImageUrl = "images/Login.png";
                if (TextBox2.Visible != false && TextBox2.Text != "")
                {
                    if (TextBox2.Text == ds.Tables[0].Rows[0]["pass"].ToString())
                    {
                        Session["did"] = ds.Tables[0].Rows[0]["did"].ToString();
                        Session["nam"] = TextBox1.Text;
                        Session["pass"] = TextBox2.Text;
                        Response.Redirect("Home.aspx");
                    }
                    else
                    {
                        RegisterStartupScript("msg", "<script>alert('Enter Correct Password')</script>");
                    }
                }
            }
            else
            {
                RegisterStartupScript("msg", "<script>alert('Enter Correct Log Key')</script>");
            }
        }
        else if (TextBox1.Text == "admin")
        {
                Label3.Visible = true;
                TextBox2.Visible = true;
                ImageButton1.ImageUrl = "images/Login.png";
                if (TextBox2.Visible != false && TextBox2.Text != "")
                {
                    if (TextBox2.Text == "admin")
                    {
                        Response.Redirect("AdminHome.aspx");
                    }
                    else
                    {
                        RegisterStartupScript("msg", "<script>alert('Enter Correct Password')</script>");
                    }
                }
        }
        else
        {
            SqlDataAdapter sda1 = new SqlDataAdapter("select * from patientreg where userid='" + TextBox1.Text + "'", con);
            DataSet ds1 = new DataSet();
            sda1.Fill(ds1);
            if (ds1.Tables[0].Rows.Count > 0)
            {
                if (TextBox1.Text == ds1.Tables[0].Rows[0]["userid"].ToString())
                {
                    Label3.Visible = true;
                    TextBox2.Visible = true;
                    ImageButton1.ImageUrl = "images/Login.png";
                    if (TextBox2.Visible != false && TextBox2.Text != "")
                    {
                        if (TextBox2.Text == ds1.Tables[0].Rows[0]["pass"].ToString())
                        {
                            Session["secno"] = ds1.Tables[0].Rows[0]["secno"].ToString();
                            Session["pid"] = ds1.Tables[0].Rows[0]["pid"].ToString();
                            Session["nam1"] = TextBox1.Text;
                            Session["pass1"] = TextBox2.Text;
                            Response.Redirect("Home2.aspx");
                        }
                        else
                        {
                            RegisterStartupScript("msg", "<script>alert('Enter Correct Password')</script>");
                        }
                    }
                    else
                    {
                        RegisterStartupScript("msg", "<script>alert('Enter The Data...')</script>");
                    }
                }
                else
                {
                    RegisterStartupScript("msg", "<script>alert('Enter Correct Log Key')</script>");
                }
            }
        }
    }
}
