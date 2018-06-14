using System;
using System.Data;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;

/// <summary>
/// Summary description for id
/// </summary>
public class id
{
    string id1,id2;
    int eid,eid1;
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
	public id()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public int idgeneration()
    {
        con.Open();
        SqlCommand c1 = new SqlCommand("select max(did) from doctorreg", con);
        id1 = Convert.ToString(c1.ExecuteScalar());
        if (id1 == "")
        {
            eid = 1;
        }
        else
        {
            eid = Convert.ToInt16(id1);
            eid = eid + 1;
        }
        con.Close();
        return eid;
    }
    public int idgeneration1()
    {
        con.Open();
        SqlCommand c2 = new SqlCommand("select max(pid) from patientreg", con);
        id2 = Convert.ToString(c2.ExecuteScalar());
        if (id2 == "")
        {
            eid1 = 1;
        }
        else
        {
            eid1 = Convert.ToInt16(id2);
            eid1 = eid1 + 1;
        }
        con.Close();
        return eid1;
    }
}
