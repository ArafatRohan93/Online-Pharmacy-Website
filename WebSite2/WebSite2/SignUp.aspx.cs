using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Drawing;
using System.Text;
using System.Text.RegularExpressions;

public partial class SignUp : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btSignup_Click(object sender, EventArgs e)
    {
        if (tbUname.Text != "" && tbPass.Text != "" && tbName.Text != "" && tbEmail.Text != "" && tbCPass.Text != "")
        {
            if (tbPass.Text == tbCPass.Text)
            {
                String CS = ConfigurationManager.ConnectionStrings["MyDatabaseConnectionString1"].ConnectionString;
                using (SqlConnection con = new SqlConnection(CS))
                {
                    SqlCommand cmd = new SqlCommand("insert into Users values('" + tbUname.Text + "','" + tbPass.Text + "','" + tbEmail.Text + "','" + tbName.Text + "','U')", con);
                    con.Open();
                    cmd.ExecuteNonQuery();
                    lblMsg.ForeColor = Color.Green;
                    lblMsg.Text = "Regestered Sucessfully!";
                    Response.Write("<script>window.alert('Regestered Sucessfully!')</script>");
                    Response.Redirect("~/SignIn.aspx");
                }
            }
            else
            {
                lblMsg.ForeColor = Color.Red;
                lblMsg.Text = "Passwords Do Not Match";
                Response.Write("<script>window.alert('Passwords Do Not Match')</script>");
            }
        }
        else
        {
            lblMsg.ForeColor = Color.Red;
            lblMsg.Text = "All Fields Are Mandatory";
        }
    }
}