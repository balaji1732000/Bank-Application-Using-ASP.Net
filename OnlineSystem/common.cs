using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Cryptography.X509Certificates;
using System.Web;

namespace OnlineSystem
{
    public class common
    {

        public static string GetConnectionString()
        {
            return ConfigurationManager.ConnectionStrings["BankingTransactionDbConnectionString"].ConnectionString;
        }
    }

    public class Utils
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter sda;
        DataTable dt;

        public int accountBalance(int userId)
        {
            int balanceAmount = 0;
            try
            {
                con = new SqlConnection(common.GetConnectionString());
                cmd = new SqlCommand("Select Amount from Account where AccountId = @AccountId", con);
                cmd.Parameters.AddWithValue("@AccountId", userId);
                sda = new SqlDataAdapter(cmd);
                dt = new DataTable();
                sda.Fill(dt);
                balanceAmount = Convert.ToInt32(dt.Rows[0]["Amount"]) == 0 ? 0 : Convert.ToInt32(dt.Rows[0]["Amount"]);
            }
            catch(Exception ex)
            {
                System.Web.HttpContext.Current.Response.Write("<script>alert('Error -"+ ex.Message +"')</scripts>");
            }
            return balanceAmount;
        }

    }
}