using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineSystem
{
    public partial class login : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataReader reader;

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnRegister_Click(object sender, EventArgs e)
        {
            Response.Redirect("Registration.aspx");
        }
        protected void lbForgotPassword_Click(object sender, EventArgs e)
        {
            if (txtUserName.Text == string.Empty)
            {
                error.InnerText = "Invalid input.";
                txtUserName.Focus();
            }
            else
            {
                Session["forgotpassword"] = txtUserName.Text.Trim();
                Response.Redirect("ForgotPassword.aspx", false);
            }

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            con = new SqlConnection(common.GetConnectionString());
            cmd = new SqlCommand("Select * from Account where UserName = @Username and Password = @Password", con);

            cmd.Parameters.AddWithValue("@Username", txtUserName.Text.Trim());
            cmd.Parameters.AddWithValue("@Password", txtPassword.Text.Trim());

            try
            {
                con.Open();
                reader = cmd.ExecuteReader();

                bool isTrue = false;
                while (reader.Read())
                {
                    isTrue = true;
                    Session["userId"] = reader["AccountId"];
                }
                if(isTrue)
                {
                    Response.Redirect("PerformTransaction.aspx");
                }
                else
                {
                    error.InnerText = "Invalid input";
                }
            }
            catch(Exception ex)
            {
                Response.Write("<script>alert('Error - " + ex.Message + " ' )</script>");
            }
            finally 
            {
                reader.Close();
                con.Close();
            }
        }

    }
}