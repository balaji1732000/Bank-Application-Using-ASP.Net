using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineSystem
{
    public partial class Registration : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataReader reader;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                lblAccountNumber.Text = displayAccountNumber();
            }
        }

        string displayAccountNumber()
        {
            con = new SqlConnection(common.GetConnectionString());
            cmd = new SqlCommand(@"SELECT 'BANK20220000' + CAST(MAX(CAST(SUBSTRING(ACCOUNTNUMBER, 12, 50) AS INT)) + 1 AS VARCHAR) AS ACCOUNTNUMBER FROM ACCOUNT;", con);

            con.Open();
            reader = cmd.ExecuteReader();
            string accountNumber = string.Empty;
            while(reader.Read())
            {
                accountNumber  = reader["ACCOUNTNUMBER"].ToString();
            }
            reader.Close();
            con.Close();
            return accountNumber;
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            con = new SqlConnection(common.GetConnectionString());
            cmd = new SqlCommand(@"Insert into 
            Account(AccountNumber, AccountType, 
            UserName, Gender, Email, Address, SecurityQuestionId, Answer, Amount, Password) values(@AccountNumber, @AccountType, 
            @UserName, @Gender, @Email, @Address, @SecurityQuestionId, @Answer, @Amount, @Password)", con);
           
            cmd.Parameters.AddWithValue("@AccountNumber", lblAccountNumber.Text);
            cmd.Parameters.AddWithValue("@AccountType", lblAccountType.Text);
            cmd.Parameters.AddWithValue("@UserName", txtUsername.Text.Trim());
            cmd.Parameters.AddWithValue("@Gender", ddlGender.SelectedValue);
            cmd.Parameters.AddWithValue("@Email", txtEmail.Text.Trim());
            cmd.Parameters.AddWithValue("@Address", txtAddress.Text.Trim());
            cmd.Parameters.AddWithValue("@SecurityQuestionId", ddlSecurityQuestion.SelectedValue);
            cmd.Parameters.AddWithValue("@Answer",txtAnswer.Text.Trim());
            cmd.Parameters.AddWithValue("@Amount", txtAmount.Text.Trim());
            cmd.Parameters.AddWithValue("@Password", txtPassword.Text.Trim());

            try
            {
                con.Open();
                int r = cmd.ExecuteNonQuery();
                if (r > 0)
                {
                    Response.Redirect("login.aspx", false);
                }
                else
                {
                    error.InnerText = "Invalid input";
                }

            }
            catch(Exception ex)
            {
                if (ex.Message.Contains("Violation of UNIQUE KEY constraint")) 
                {
                    error.InnerText = "User name already exists.";
                }
                else
                {
                    Response.Write("<script>alert('Error - " + ex.Message + " ');</script>");
                }
            }
            finally
            {
                con.Close();
            }
        }

        protected void BtnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
    }
}