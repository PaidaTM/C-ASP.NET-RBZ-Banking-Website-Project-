using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class CustomerHome : System.Web.UI.Page
{

    MySqlDBHelper mdb = new MySqlDBHelper();
    protected void Page_Load(object sender, EventArgs e)
    { 
        if (Session["User_Name"] == null)
        {

        }
        else
        { 
            Label1.Text = Session["User_Name"].ToString();
        }

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string sql1 = string.Format(@"select count(*) from accounts
            where User_First_Name='{0}'", Label1.Text);
        Response.Redirect("Transaction.aspx");

    }


}







