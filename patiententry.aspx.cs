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

public partial class patiententry : System.Web.UI.Page
{
    string lab1, lab2, lab3, lab4, lab5, lab6, lab7, lab8, lab9, lab10, lab11, lab12, lab13, clearText12, cipherText12, cypertext12, plaintext12;
    string clearText, cipherText, cypertext, plaintext,clearText1, cipherText1, cypertext1, plaintext1,clearText2, cipherText2, cypertext2, plaintext2;
    string clearText3, cipherText3, cypertext3, plaintext3,clearText4, cipherText4, cypertext4, plaintext4,clearText5, cipherText5, cypertext5, plaintext5;
    string clearText6, cipherText6, cypertext6, plaintext6,clearText7, cipherText7, cypertext7, plaintext7,clearText8, cipherText8, cypertext8, plaintext8;
    string clearText9, cipherText9, cypertext9, plaintext9,clearText10, cipherText10, cypertext10, plaintext10,clearText11, cipherText11, cypertext11, plaintext11;
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
    protected void Page_Load(object sender, EventArgs e)
    {        
        if (!IsPostBack)
        {
            Label3.Text = (string)Session["did"];
            Label5.Text = (string)Session["nam"];
            con.Open();
            SqlDataAdapter sda = new SqlDataAdapter("select * from patientreg", con);
            DataSet ds = new DataSet();
            sda.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                {
                    DropDownList1.Items.Add(ds.Tables[0].Rows[i]["pid"].ToString());
                }
            }
            else
            {
                RegisterStartupScript("msg", "<script>alert('No Patient are Available...')</script>");
            }
            con.Close();
        }
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedItem.Text == "- Select ID -")
        {
            Label8.Text = "";
        }
        else
        {
            con.Open();
            SqlDataAdapter sda1 = new SqlDataAdapter("select * from patientreg where pid='" + DropDownList1.SelectedItem.Text + "'", con);
            DataSet ds1 = new DataSet();
            sda1.Fill(ds1);
            if (ds1.Tables[0].Rows.Count > 0)
            {
                Label8.Text = ds1.Tables[0].Rows[0]["nam"].ToString();
            }
            else
            {
                RegisterStartupScript("msg", "<script>alert('No Patient are Available...')</script>");
            }
            con.Close();
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Home.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlDataAdapter sda11=new SqlDataAdapter("select * from patientdetails where pid='"+ DropDownList1.SelectedItem.Text +"'",con);
        DataSet ds11 = new DataSet();
        sda11.Fill(ds11);
        if (ds11.Tables[0].Rows.Count > 0)
        {
            RegisterStartupScript("msg", "<script>alert('Another Doctor to handle this Patient...')</script>");
        }
        else
        {
            SqlCommand cmd1 = new SqlCommand("insert into patientdetails values('" + Label3.Text + "','" + CheckBox1.Checked + "','" + Label5.Text + "','" + CheckBox2.Checked + "','" + DropDownList1.SelectedItem.Text + "','" + CheckBox3.Checked + "','" + Label8.Text + "','" + CheckBox4.Checked + "','" + TextBox1.Text + "','" + CheckBox5.Checked + "','" + TextBox2.Text + "','" + CheckBox6.Checked + "','" + TextBox3.Text + "','" + CheckBox7.Checked + "','" + TextBox4.Text + "','" + CheckBox8.Checked + "','" + TextBox5.Text + "','" + CheckBox9.Checked + "','" + TextBox6.Text + "','" + CheckBox10.Checked + "','" + TextBox7.Text + "','" + CheckBox11.Checked + "','" + TextBox8.Text + "','" + CheckBox12.Checked + "','" + TextBox9.Text + "','" + CheckBox13.Checked + "')", con);
            cmd1.ExecuteNonQuery();
            Label3.Text = "";
            Label5.Text = "";
            Label8.Text = "";
            DropDownList1.SelectedItem.Text = "- Select ID -";
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            TextBox7.Text = "";
            TextBox8.Text = "";
            TextBox9.Text = "";
            CheckBox1.Checked = false;
            CheckBox2.Checked = false;
            CheckBox3.Checked = false;
            CheckBox4.Checked = false;
            CheckBox5.Checked = false;
            CheckBox6.Checked = false;
            CheckBox7.Checked = false;
            CheckBox8.Checked = false;
            CheckBox9.Checked = false;
            CheckBox10.Checked = false;
            CheckBox11.Checked = false;
            CheckBox12.Checked = false;
            CheckBox13.Checked = false;
            RegisterStartupScript("msg", "<script>alert('Data Inserted Successfully...')</script>");
        }
            con.Close();        
    }
    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {
        if (CheckBox1.Checked == true)
        {
            if (Label3.Text == "")
            {
                RegisterStartupScript("msg", "<script>alert('The data is not available..')</script>");
                CheckBox1.Checked = false;
            }
            else
            {
                clearText = Label3.Text.Trim();
                cipherText = Encrypt(clearText, true);
                Label3.Text = cipherText;
                lab1 = cipherText;
                RegisterStartupScript("msg", "<script>alert('The Encrypted Doctor ID is " + lab1 + "')</script>");
            }
        }
        else
        {
            if (Label3.Text == "")
            {
                RegisterStartupScript("msg", "<script>alert('The data is not available..')</script>");
                CheckBox1.Checked = false;
            }
            else
            {
                cypertext = Label3.Text.Trim();
                plaintext = Decrypt(cypertext, true);
                Label3.Text = plaintext;
                lab1 = plaintext;
                
                RegisterStartupScript("msg", "<script>alert('The Decrypted Doctor ID is " + lab1 + "')</script>");
            }
        }
    }
    protected void CheckBox2_CheckedChanged(object sender, EventArgs e)
    {
        if (CheckBox2.Checked == true)
        {
            if (Label5.Text == "")
            {
                RegisterStartupScript("msg", "<script>alert('The data is not available..')</script>");
                CheckBox2.Checked = false;
            }
            else
            {
                clearText1 = Label5.Text.Trim();
                cipherText1 = Encrypt(clearText1, true);
                Label5.Text = cipherText1;
                lab2 = cipherText1;
                RegisterStartupScript("msg", "<script>alert('The Encrypted Doctor Name is " + lab2 + "')</script>");
            }
        }
        else
        {
            if (Label5.Text == "")
            {
                RegisterStartupScript("msg", "<script>alert('The data is not available..')</script>");
                CheckBox2.Checked = false;
            }
            else
            {
                cypertext1 = Label5.Text.Trim();
                plaintext1 = Decrypt(cypertext1, true);
                Label5.Text = plaintext1;
                lab2 = plaintext1;
                RegisterStartupScript("msg", "<script>alert('The Decrypted Doctor Name is " + lab2 + "')</script>");
            }
        }        
    }
    protected void CheckBox3_CheckedChanged(object sender, EventArgs e)
    {
        if (CheckBox3.Checked == true)
        {
            if (DropDownList1.SelectedItem.Text == "- Select ID -")
            {
                RegisterStartupScript("msg", "<script>alert('First to Select the Data..')</script>");
                CheckBox3.Checked = false;
            }
            else
            {
                clearText2 = DropDownList1.SelectedItem.Text.Trim();
                cipherText2 = Encrypt(clearText2, true);
                DropDownList1.SelectedItem.Text = cipherText2;
                lab3 = cipherText2;
                RegisterStartupScript("msg", "<script>alert('The Encrypted Patient ID is " + lab3 + "')</script>");
            }
        }
        else
        {
            if (DropDownList1.SelectedItem.Text == "- Select ID -")
            {
                RegisterStartupScript("msg", "<script>alert('First to Select the Data..')</script>");
                CheckBox3.Checked = false;
            }
            else
            {
                cypertext2 = DropDownList1.SelectedItem.Text.Trim();
                plaintext2 = Decrypt(cypertext2, true);
                DropDownList1.SelectedItem.Text = plaintext2;
                lab3 = plaintext2;
                RegisterStartupScript("msg", "<script>alert('The Decrypted Patient ID is " + lab3 + "')</script>");
            }
        }       
    }
    protected void CheckBox4_CheckedChanged(object sender, EventArgs e)
    {
        if (CheckBox4.Checked == true)
        {
            if (Label8.Text == "")
            {
                RegisterStartupScript("msg", "<script>alert('The data is not available..')</script>");
                CheckBox4.Checked = false;
            }
            else
            {
                clearText3 = Label8.Text.Trim();
                cipherText3 = Encrypt(clearText3, true);
                Label8.Text = cipherText3;
                lab4 = cipherText3;
                RegisterStartupScript("msg", "<script>alert('The Encrypted Patient Name is " + lab4 + "')</script>");
            }
        }
        else
        {
            if (Label8.Text == "")
            {
                RegisterStartupScript("msg", "<script>alert('The data is not available..')</script>");
                CheckBox4.Checked = false;
            }
            else
            {
                cypertext3 = Label8.Text.Trim();
                plaintext3 = Decrypt(cypertext3, true);
                Label8.Text = plaintext3;
                lab4 = plaintext3;
                RegisterStartupScript("msg", "<script>alert('The Decrypted Patient Name is " + lab4 + "')</script>");
            }
        }
    }
    protected void CheckBox5_CheckedChanged(object sender, EventArgs e)
    {
        if (CheckBox5.Checked == true)
        {
            if (TextBox1.Text == "")
            {
                RegisterStartupScript("msg", "<script>alert('To Enter The Data..')</script>");
                CheckBox5.Checked = false;
            }
            else
            {
                clearText4 = TextBox1.Text.Trim();
                cipherText4 = Encrypt(clearText4, true);
                TextBox1.Text = cipherText4;
                lab5 = cipherText4;
                RegisterStartupScript("msg", "<script>alert('The Encrypted Admission Date is " + lab5 + "')</script>");
            }
        }
        else
        {
            if (TextBox1.Text == "")
            {
                RegisterStartupScript("msg", "<script>alert('To Enter The Data..')</script>");
                CheckBox5.Checked = false;
            }
            else
            {
                cypertext4 = TextBox1.Text.Trim();
                plaintext4 = Decrypt(cypertext4, true);
                TextBox1.Text = plaintext4;
                lab5 = plaintext4;
                RegisterStartupScript("msg", "<script>alert('The Decrypted Admission Date is " + lab5 + "')</script>");
            }
        }        
    }
    protected void CheckBox6_CheckedChanged(object sender, EventArgs e)
    {
        if (CheckBox6.Checked == true)
        {
            if (TextBox2.Text == "")
            {
                RegisterStartupScript("msg", "<script>alert('To Enter The Data..')</script>");
                CheckBox6.Checked = false;
            }
            else
            {
                clearText5 = TextBox2.Text.Trim();
                cipherText5 = Encrypt(clearText5, true);
                TextBox2.Text = cipherText5;
                lab6 = cipherText5;
                RegisterStartupScript("msg", "<script>alert('The Encrypted Disease Name is " + lab6 + "')</script>");
            }
        }
        else
        {
            if (TextBox2.Text == "")
            {
                RegisterStartupScript("msg", "<script>alert('To Enter The Data..')</script>");
                CheckBox6.Checked = false;
            }
            else
            {
                cypertext5 = TextBox2.Text.Trim();
                plaintext5 = Decrypt(cypertext5, true);
                TextBox2.Text = plaintext5;
                lab6 = plaintext5;
                RegisterStartupScript("msg", "<script>alert('The Decrypted Disease Name is " + lab6 + "')</script>");
            }
        }
    }
    protected void CheckBox7_CheckedChanged(object sender, EventArgs e)
    {
        if (CheckBox7.Checked == true)
        {
            if (TextBox3.Text == "")
            {
                RegisterStartupScript("msg", "<script>alert('To Enter The Data..')</script>");
                CheckBox7.Checked = false;
            }
            else
            {
                clearText6 = TextBox3.Text.Trim();
                cipherText6 = Encrypt(clearText6, true);
                TextBox3.Text = cipherText6;
                lab7 = cipherText6;
                RegisterStartupScript("msg", "<script>alert('The Encrypted ECG Test Result is " + lab7 + "')</script>");
            }
        }
        else
        {
            if (TextBox3.Text == "")
            {
                RegisterStartupScript("msg", "<script>alert('To Enter The Data..')</script>");
                CheckBox7.Checked = false;
            }
            else
            {
                cypertext6 = TextBox3.Text.Trim();
                plaintext6 = Decrypt(cypertext6, true);
                TextBox3.Text = plaintext6;
                lab7 = plaintext6;
                RegisterStartupScript("msg", "<script>alert('The Decrypted ECG Test Result is " + lab7 + "')</script>");
            }
        }        
    }
    protected void CheckBox8_CheckedChanged(object sender, EventArgs e)
    {
        if (CheckBox8.Checked == true)
        {
            if (TextBox4.Text == "")
            {
                RegisterStartupScript("msg", "<script>alert('To Enter The Data..')</script>");
                CheckBox8.Checked = false;
            }
            else
            {
                clearText7 = TextBox4.Text.Trim();
                cipherText7 = Encrypt(clearText7, true);
                TextBox4.Text = cipherText7;
                lab8 = cipherText7;
                RegisterStartupScript("msg", "<script>alert('The Encrypted Scan Test Result is " + lab8 + "')</script>");
            }
        }
        else
        {
            if (TextBox4.Text == "")
            {
                RegisterStartupScript("msg", "<script>alert('To Enter The Data..')</script>");
                CheckBox8.Checked = false;
            }
            else
            {
                cypertext7 = TextBox4.Text.Trim();
                plaintext7 = Decrypt(cypertext7, true);
                TextBox4.Text = plaintext7;
                lab8 = plaintext7;
                RegisterStartupScript("msg", "<script>alert('The Decrypted Scan Test Result is " + lab8 + "')</script>");
            }
        }       
    }
    protected void CheckBox9_CheckedChanged(object sender, EventArgs e)
    {
        if (CheckBox9.Checked == true)
        {
            if (TextBox5.Text == "")
            {
                RegisterStartupScript("msg", "<script>alert('To Enter The Data..')</script>");
                CheckBox9.Checked = false;
            }
            else
            {
                clearText8 = TextBox5.Text.Trim();
                cipherText8 = Encrypt(clearText8, true);
                TextBox5.Text = cipherText8;
                lab9 = cipherText8;
                RegisterStartupScript("msg", "<script>alert('The Encrypted X-Ray Test Result is " + lab9 + "')</script>");
            }
        }
        else
        {
            if (TextBox5.Text == "")
            {
                RegisterStartupScript("msg", "<script>alert('To Enter The Data..')</script>");
                CheckBox9.Checked = false;
            }
            else
            {
                cypertext8 = TextBox5.Text.Trim();
                plaintext8 = Decrypt(cypertext8, true);
                TextBox5.Text = plaintext8;
                lab9 = plaintext8;
                RegisterStartupScript("msg", "<script>alert('The Decrypted X-Ray Test Result is " + lab9 + "')</script>");
            }
        }       
    }
    protected void CheckBox10_CheckedChanged(object sender, EventArgs e)
    {
        if (CheckBox10.Checked == true)
        {
            if (TextBox6.Text == "")
            {
                RegisterStartupScript("msg", "<script>alert('To Enter The Data..')</script>");
                CheckBox10.Checked = false;
            }
            else
            {
                clearText9 = TextBox6.Text.Trim();
                cipherText9 = Encrypt(clearText9, true);
                TextBox6.Text = cipherText9;
                lab10 = cipherText9;
                RegisterStartupScript("msg", "<script>alert('The Encrypted Urine Test Result is " + lab10 + "')</script>");
            }
        }
        else
        {
            if (TextBox6.Text == "")
            {
                RegisterStartupScript("msg", "<script>alert('To Enter The Data..')</script>");
                CheckBox10.Checked = false;
            }
            else
            {
                cypertext9 = TextBox6.Text.Trim();
                plaintext9 = Decrypt(cypertext9, true);
                TextBox6.Text = plaintext9;
                lab10 = plaintext9;
                RegisterStartupScript("msg", "<script>alert('The Decrypted Urine Test Result is " + lab10 + "')</script>");
            }
        }
    }
    protected void CheckBox11_CheckedChanged(object sender, EventArgs e)
    {
        if (CheckBox11.Checked == true)
        {
            if (TextBox7.Text == "")
            {
                RegisterStartupScript("msg", "<script>alert('To Enter The Data..')</script>");
                CheckBox11.Checked = false;
            }
            else
            {
                clearText10 = TextBox7.Text.Trim();
                cipherText10 = Encrypt(clearText10, true);
                TextBox7.Text = cipherText10;
                lab11 = cipherText10;
                RegisterStartupScript("msg", "<script>alert('The Encrypted Blood Group is " + lab11 + "')</script>");
            }
        }
        else
        {
            if (TextBox7.Text == "")
            {
                RegisterStartupScript("msg", "<script>alert('To Enter The Data..')</script>");
                CheckBox11.Checked = false;
            }
            else
            {
                cypertext10 = TextBox7.Text.Trim();
                plaintext10 = Decrypt(cypertext10, true);
                TextBox7.Text = plaintext10;
                lab11 = plaintext10;
                RegisterStartupScript("msg", "<script>alert('The Decrypted Blood Group is " + lab11 + "')</script>");
            }
        }
    }
    protected void CheckBox12_CheckedChanged(object sender, EventArgs e)
    {
        if (CheckBox12.Checked == true)
        {
            if (TextBox8.Text == "")
            {
                RegisterStartupScript("msg", "<script>alert('To Enter The Data..')</script>");
                CheckBox12.Checked = false;
            }
            else
            {
                clearText11 = TextBox8.Text.Trim();
                cipherText11 = Encrypt(clearText11, true);
                TextBox8.Text = cipherText11;
                lab12 = cipherText11;
                RegisterStartupScript("msg", "<script>alert('The Encrypted Health Condition is " + lab12 + "')</script>");
            }
        }
        else
        {
            if (TextBox8.Text == "")
            {
                RegisterStartupScript("msg", "<script>alert('To Enter The Data..')</script>");
                CheckBox12.Checked = false;
            }
            else
            {
                cypertext11 = TextBox8.Text.Trim();
                plaintext11 = Decrypt(cypertext11, true);
                TextBox8.Text = plaintext11;
                lab12 = plaintext11;
                RegisterStartupScript("msg", "<script>alert('The Decrypted Health Condition is " + lab12 + "')</script>");
            }
        }
    }
    protected void CheckBox13_CheckedChanged(object sender, EventArgs e)
    {
        if (CheckBox13.Checked == true)
        {
            if (TextBox9.Text == "")
            {
                RegisterStartupScript("msg", "<script>alert('To Enter The Data..')</script>");
                CheckBox13.Checked = false;
            }
            else
            {
                clearText12 = TextBox9.Text.Trim();
                cipherText12 = Encrypt(clearText12, true);
                TextBox9.Text = cipherText12;
                lab13 = cipherText12;
                RegisterStartupScript("msg", "<script>alert('The Encrypted Discharge Date is " + lab13 + "')</script>");
            }
        }
        else
        {
            if (TextBox9.Text == "")
            {
                RegisterStartupScript("msg", "<script>alert('To Enter The Data..')</script>");
                CheckBox13.Checked = false;
            }
            else
            {
                cypertext12 = TextBox9.Text.Trim();
                plaintext12 = Decrypt(cypertext12, true);
                TextBox9.Text = plaintext12;
                lab13 = plaintext12;
                RegisterStartupScript("msg", "<script>alert('The Decrypted Discharge Date is " + lab13 + "')</script>");
            }
        }
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
