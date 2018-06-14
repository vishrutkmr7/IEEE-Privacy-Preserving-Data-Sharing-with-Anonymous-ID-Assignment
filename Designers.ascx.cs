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

public partial class Designers : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Timer1_Tick(object sender, EventArgs e)
    {
        //Label1.Text = System.DateTime.Now.ToLongTimeString() + " - " + Convert.ToString(System.DateTime.Now.Day) + " / " + System.DateTime.Now.ToString("MMM") + " / " + Convert.ToString(System.DateTime.Now.Year) + " - " + Convert.ToString(System.DateTime.Now.DayOfWeek);
    }
}
