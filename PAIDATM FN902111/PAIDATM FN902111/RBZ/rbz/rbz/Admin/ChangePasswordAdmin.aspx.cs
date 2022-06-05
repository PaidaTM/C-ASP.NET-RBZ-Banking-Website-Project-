using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

public partial class ChangePasswordAdmin : System.Web.UI.Page
{

    MySqlDBHelper sdb = new MySqlDBHelper();

    protected void Page_Load(object sender, EventArgs e)
    {
        UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        if (!IsPostBack)
        {
            if (Session["User_Name"] != null)
            {
                Label1.Text = Session["User_Name"].ToString();
            }
            else
            {
                Response.Write("<script>alert('You are not logged in yet! Please login and try to change the password!');window.location.href='Login.aspx';</script>");
            }
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string sql1 = string.Format(@"select count(*) from LoginAdmin where User_Name='{0}' and User_Password='{1}'",
                Label1.Text, TextBox1.Text);
        if (Convert.ToInt32(sdb.ExecuteScalar(sql1)) > 0)
        {
            string sql2 = string.Format(@"update LoginAdmin set User_Password='{0}' where User_Name='{1}'",
                TextBox2.Text, Label1.Text);
            if (sdb.ExecuteInsertUpdateDelete(sql2) > 0)
            {

                Response.Write("<script>alert('Password modification succeeded! Please remember your new password!');</script>");
            }
        }
        else
        {
            Response.Write("<script>alert('Old password input error! Please re-enter!');</script>");

        }
    }
}