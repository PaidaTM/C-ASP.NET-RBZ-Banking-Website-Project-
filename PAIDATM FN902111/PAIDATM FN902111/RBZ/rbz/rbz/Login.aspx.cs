using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Login : System.Web.UI.Page {

    MySqlDBHelper mdb = new MySqlDBHelper();
    protected void Page_Load(object sender, EventArgs e) {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {


        string sql = string.Format(@"select count(*) from accounts
                where User_Name='{0}' and User_Password='{1}'", TextBox1.Text, TextBox2.Text);
        if (Convert.ToInt32(mdb.ExecuteScalar(sql)) > 0)
        {
            Session["user_name"] = TextBox1.Text;
            Response.Write("<script>alert('Login Successful!');window.location.href='CustomerHome.aspx';</script>");


        }

        else
        {
            Response.Write("<script>alert('Your username or password is wrong');</script>");

        }
    }
}