using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using MySql.Data.MySqlClient;

public partial class Deposit : System.Web.UI.Page
{

    MySqlDBHelper mdb = new MySqlDBHelper();
    MySqlConnection cs = new MySqlConnection();
    MySqlCommand cmd = new MySqlCommand();

    protected void Page_Load(object sender, EventArgs e)
    {

        Button1.Enabled = false;
        if (Session["User_Name"] == null)
        {
            
        }
        else
        {
            Label1.Text = Session["User_Name"].ToString();
           
        }

        string sql1 = string.Format(@"select * from accounts where User_Name='{0}'", Session["user_name"]);
        DataTable dt3 = mdb.ExecuteDataTable(sql1);
        if (dt3 != null)
        {

            Label2.Text = dt3.Rows[0]["Balance"].ToString();
        }
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        string sql1 = string.Format(@"select count(*)from finance where User_Name='{0}'", TextBox1.Text);

        string sql2 = string.Format(@"insert into finance values('{0}','{1}','{2}','{3}');",
            Label1.Text, " ",TextBox1.Text, "Deposit");

        string sql4 = string.Format(@"update accounts set Balance = Balance + '{0}' where User_Name = '{1}'", Convert.ToInt32(TextBox1.Text), Label1.Text);



        if (Convert.ToInt32(mdb.ExecuteScalar(sql1)) > 0)
        {
            Response.Write("<script>alert('User name X!!!!!');</script>");
        }
        else
        {
            if (mdb.ExecuteInsertUpdateDelete(sql2) > 0)
            {
                Response.Write("<script>alert('Records Stored');</script>");
            }
            if (mdb.ExecuteInsertUpdateDelete(sql4) > 0)
            {
                Response.Write("<script>alert('Amount Deposited');</script>");

            }
            

        }
        Response.Write("<script>alert('Deposit Successful!');window.location.href='Transaction.aspx';</script>");
    }

    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {
        if (CheckBox1.Checked == true)
        {
            Button1.Enabled = true;

        }
        else
        {
            Button1.Enabled = false;

        }

    }
}