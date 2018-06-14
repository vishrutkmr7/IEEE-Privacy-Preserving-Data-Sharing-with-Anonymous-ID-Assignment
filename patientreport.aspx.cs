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
using System.Text;
using System.Security.Cryptography;

public partial class patientreport : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
    string sec,pids;
    string pt1, pt2, pt3, pt4, pt5, pt6, pt7, pt8, pt9, pt10, pt11, pt12;
    string ct1, ct2, ct3, ct4, ct5, ct6, ct7, ct8, ct9, ct10, ct11, ct12;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Label26.Visible = false;
            TextBox1.Visible = false;
            Button3.Visible = false;
            Button4.Visible = false;
        }
        sec = (string)Session["secno"];
        pids = (string)Session["pid"];
        con.Open();
        SqlDataAdapter sda1 = new SqlDataAdapter("select * from patientdetails where pid='" + pids + "'", con);
        DataSet ds1 = new DataSet();
        sda1.Fill(ds1);
        if (ds1.Tables[0].Rows.Count > 0)
        {
            Label14.Text = ds1.Tables[0].Rows[0]["dname"].ToString();
            Label15.Text = ds1.Tables[0].Rows[0]["pid"].ToString();
            Label16.Text = ds1.Tables[0].Rows[0]["pname"].ToString();
            Label17.Text = ds1.Tables[0].Rows[0]["admdate"].ToString();
            Label18.Text = ds1.Tables[0].Rows[0]["disease"].ToString();
            Label19.Text = ds1.Tables[0].Rows[0]["ecg"].ToString();
            Label20.Text = ds1.Tables[0].Rows[0]["scan"].ToString();
            Label21.Text = ds1.Tables[0].Rows[0]["xray"].ToString();
            Label22.Text = ds1.Tables[0].Rows[0]["urine"].ToString();
            Label23.Text = ds1.Tables[0].Rows[0]["blood"].ToString();
            Label24.Text = ds1.Tables[0].Rows[0]["health"].ToString();
            Label25.Text = ds1.Tables[0].Rows[0]["disdate"].ToString();
            con.Close();
        }
        else
        {
            RegisterStartupScript("msg", "<script>alert('Your Report Is Not Available...')</script>");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Home2.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Label26.Visible = true;
        TextBox1.Visible = true;
        Button3.Visible = true;
        Button4.Visible = true;
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Label26.Visible = false;
        TextBox1.Visible = false;
        Button3.Visible = false;
        Button4.Visible = false;
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlDataAdapter sda = new SqlDataAdapter("select * from patientdetails where pid='" + pids + "'", con);
        DataSet ds = new DataSet();
        sda.Fill(ds);
        if (sec == TextBox1.Text)
        {
            if (Button4.Text == "Activate")
            {   
                if (ds.Tables[0].Rows.Count > 0)
                {
                    if (ds.Tables[0].Rows[0]["sup2"].ToString() == "True")
                    {
                        ct1 = Label14.Text.Trim();
                        pt1 = Decrypt(ct1, true);
                        Label14.Text = pt1;
                    }
                    if (ds.Tables[0].Rows[0]["sup3"].ToString() == "True")
                    {
                        ct2 = Label15.Text.Trim();
                        pt2 = Decrypt(ct2, true);
                        Label15.Text = pt2;
                    }
                    if (ds.Tables[0].Rows[0]["sup4"].ToString() == "True")
                    {
                        ct3 = Label16.Text.Trim();
                        pt3 = Decrypt(ct3, true);
                        Label16.Text = pt3;
                    }
                    if (ds.Tables[0].Rows[0]["sup5"].ToString() == "True")
                    {
                        ct4 = Label17.Text.Trim();
                        pt4 = Decrypt(ct4, true);
                        Label17.Text = pt4;
                    }
                    if (ds.Tables[0].Rows[0]["sup6"].ToString() == "True")
                    {
                        ct5 = Label18.Text.Trim();
                        pt5 = Decrypt(ct5, true);
                        Label18.Text = pt5;
                    }
                    if (ds.Tables[0].Rows[0]["sup7"].ToString() == "True")
                    {
                        ct6 = Label19.Text.Trim();
                        pt6 = Decrypt(ct6, true);
                        Label19.Text = pt6;
                    }
                    if (ds.Tables[0].Rows[0]["sup8"].ToString() == "True")
                    {
                        ct7 = Label20.Text.Trim();
                        pt7 = Decrypt(ct7, true);
                        Label20.Text = pt7;
                    }
                    if (ds.Tables[0].Rows[0]["sup9"].ToString() == "True")
                    {
                        ct8 = Label21.Text.Trim();
                        pt8 = Decrypt(ct8, true);
                        Label21.Text = pt8;
                    }
                    if (ds.Tables[0].Rows[0]["sup10"].ToString() == "True")
                    {
                        ct9 = Label22.Text.Trim();
                        pt9 = Decrypt(ct9, true);
                        Label22.Text = pt9;
                    }
                    if (ds.Tables[0].Rows[0]["sup11"].ToString() == "True")
                    {
                        ct10 = Label23.Text.Trim();
                        pt10 = Decrypt(ct10, true);
                        Label23.Text = pt10;
                    }
                    if (ds.Tables[0].Rows[0]["sup12"].ToString() == "True")
                    {
                        ct11 = Label24.Text.Trim();
                        pt11 = Decrypt(ct11, true);
                        Label24.Text = pt11;
                    }
                    if (ds.Tables[0].Rows[0]["sup13"].ToString() == "True")
                    {
                        ct12 = Label25.Text.Trim();
                        pt12 = Decrypt(ct12, true);
                        Label25.Text = pt12;
                    }
                }
                else
                {
                    RegisterStartupScript("msg", "<script>alert('Your Report Is Not Available...')</script>");
                }               
                Button4.Text = "Deactivate";
            }
            else
            {
                Button4.Text = "Activate";
                Label26.Visible = false;
                TextBox1.Visible = false;
                Button3.Visible = false;
                Button4.Visible = false;
                Label14.Text = ds.Tables[0].Rows[0]["dname"].ToString();
                Label15.Text = ds.Tables[0].Rows[0]["pid"].ToString();
                Label16.Text = ds.Tables[0].Rows[0]["pname"].ToString();
                Label17.Text = ds.Tables[0].Rows[0]["admdate"].ToString();
                Label18.Text = ds.Tables[0].Rows[0]["disease"].ToString();
                Label19.Text = ds.Tables[0].Rows[0]["ecg"].ToString();
                Label20.Text = ds.Tables[0].Rows[0]["scan"].ToString();
                Label21.Text = ds.Tables[0].Rows[0]["xray"].ToString();
                Label22.Text = ds.Tables[0].Rows[0]["urine"].ToString();
                Label23.Text = ds.Tables[0].Rows[0]["blood"].ToString();
                Label24.Text = ds.Tables[0].Rows[0]["health"].ToString();
                Label25.Text = ds.Tables[0].Rows[0]["disdate"].ToString();
            }
        }
        else
        {
            RegisterStartupScript("msg", "<script>alert('Enter the Correct Security Code...')</script>");
        }
        con.Close();
    }
    public static string Encrypt(string toEncrypt, bool useHashing)
    {
        byte[] keyArray;
        byte[] toEncryptArray = UTF8Encoding.UTF8.GetBytes(toEncrypt);
        System.Configuration.AppSettingsReader settingsReader = new AppSettingsReader();
        string key = (string)settingsReader.GetValue("connection", typeof(string));
        if (useHashing)
        {
            MD5CryptoServiceProvider hashmd5 = new MD5CryptoServiceProvider();
            keyArray = hashmd5.ComputeHash(UTF8Encoding.UTF8.GetBytes(key));
            hashmd5.Clear();
        }
        else
            keyArray = UTF8Encoding.UTF8.GetBytes(key);

        TripleDESCryptoServiceProvider tdes = new TripleDESCryptoServiceProvider();
        tdes.Key = keyArray;
        tdes.Mode = CipherMode.ECB;
        tdes.Padding = PaddingMode.PKCS7;
        ICryptoTransform cTransform = tdes.CreateEncryptor();
        byte[] resultArray = cTransform.TransformFinalBlock(toEncryptArray, 0, toEncryptArray.Length);
        tdes.Clear();
        return Convert.ToBase64String(resultArray, 0, resultArray.Length);

    }
    public static string Decrypt(string cipherString, bool useHashing)
    {
        byte[] keyArray;
        byte[] toEncryptArray = Convert.FromBase64String(cipherString);
        System.Configuration.AppSettingsReader settingsReader = new AppSettingsReader();
        string key = (string)settingsReader.GetValue("connection", typeof(String));
        if (useHashing)
        {
            MD5CryptoServiceProvider hashmd5 = new MD5CryptoServiceProvider();
            keyArray = hashmd5.ComputeHash(UTF8Encoding.UTF8.GetBytes(key));
            hashmd5.Clear();
        }
        else
            keyArray = UTF8Encoding.UTF8.GetBytes(key);

        TripleDESCryptoServiceProvider tdes = new TripleDESCryptoServiceProvider();
        tdes.Key = keyArray;
        tdes.Mode = CipherMode.ECB;
        tdes.Padding = PaddingMode.PKCS7;

        ICryptoTransform cTransform = tdes.CreateDecryptor();
        byte[] resultArray = cTransform.TransformFinalBlock(toEncryptArray, 0, toEncryptArray.Length);
        tdes.Clear();
        return UTF8Encoding.UTF8.GetString(resultArray);
    }
}
