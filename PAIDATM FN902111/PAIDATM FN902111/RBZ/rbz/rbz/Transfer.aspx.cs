using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using MySql.Data.MySqlClient;

public partial class Transfer : System.Web.UI.Page
{

    MySqlDBHelper mdb = new MySqlDBHelper();
 

    protected void Page_Load(object sender, EventArgs e)
    {

        Button1.Enabled = false;

        if (Session["user_name"] == null)
        {

        }
        else
        {
            Label1.Text = Session["user_name"].ToString();
            Label3.Text = Session["user_name"].ToString();

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
        string sql1 = string.Format(@"select count(*)from finance where User_Name='{0}'", Label2.Text);

        string sql2 = string.Format(@"insert into finance values('{0}','{1}','{2}','{3}');",
            Label1.Text, TextBox2.Text, TextBox3.Text, "Transfer");
        

        string sql4 = string.Format(@"update accounts set Balance = Balance - '{0}' where User_Name = '{1}'", Convert.ToInt32(TextBox3.Text), Label3.Text);
        string sql5 = string.Format(@"update accounts set Balance = Balance + '{0}' where User_Name = '{1}'", Convert.ToInt32(TextBox3.Text), TextBox2.Text);
       
          

        if (Convert.ToInt32(mdb.ExecuteScalar(sql1)) > 0)
        {
            Response.Write("<script>alert('User name X!!!!!');</script>");
        }
        else
        {
            if (mdb.ExecuteInsertUpdateDelete(sql2) > 0)
            {
                Response.Write("<script>alert('Amount Deducted....Transfer Successful!');window.location.href='Transaction.aspx';</script>");

            }
            if (mdb.ExecuteInsertUpdateDelete(sql4) > 0)
            {
                
            }
            if (mdb.ExecuteInsertUpdateDelete(sql5) > 0)
            {
                
                
            }
            
        }
    
        
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