using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

/// <summary>
/// Summary description for Class1
/// </summary>
public partial class Transaction : System.Web.UI.Page
{


    MySqlDBHelper mdb = new MySqlDBHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
        
        string sql1 = string.Format(@"select * from accounts where User_Name='{0}'", Session["user_name"]);
            DataTable dt3 = mdb.ExecuteDataTable(sql1);
            if (dt3 != null)
            {
                Label1.Text = dt3.Rows[0]["User_Name"].ToString();
                Label2.Text = dt3.Rows[0]["Balance"].ToString();
            }       
    }
    private void ShowRecords()
    {
        
    }


    

    protected void Button1_Click1(object sender, EventArgs e)
    {
        Response.Redirect("Transfer.aspx");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Deposit.aspx");
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("Withdraw.aspx");
    }
}



