using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Register : System.Web.UI.Page
{

    MySqlDBHelper mdb = new MySqlDBHelper();

    protected void Page_Load(object sender, EventArgs e)

    {
        Button1.Enabled = false;

    }


    protected void Button1_Click(object sender, EventArgs e)
    {

        string sql1 = string.Format(@"select count(*)from accounts where User_Name='{0}'", TextBox1.Text);

        string sql2 = string.Format(@"insert into accounts values(null,'{0}','{1}','{2}','{3}','{4}','{5}','{6}','{7}','{8}','{9}','{10}');",
            TextBox1.Text, TextBox10.Text, TextBox2.Text, RadioButtonList1.SelectedIndex, RadioButtonList2.SelectedIndex, TextBox4.Text, TextBox9.Text, TextBox5.Text, TextBox6.Text, TextBox7.Text,TextBox11.Text);
        if (Convert.ToInt32(mdb.ExecuteScalar(sql1)) > 0)
        {
            Response.Write("<script>alert('User name already exists');</script>");
        }
        else
        {
            if (mdb.ExecuteInsertUpdateDelete(sql2) > 0)
            {
                Response.Write("<script>alert('Registration Successfull');window.location.href='Login.aspx';</script>");
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
            Response.Write("<script>alert('You need to read and agree with the company's terms and privacy policy ');</script>");
        }
    }
}
