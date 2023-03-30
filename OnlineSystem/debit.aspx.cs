using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Security.Cryptography;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineSystem
{
    public partial class debit : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter sda;
        DataTable dt;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["userId"] == null) 
                {
                    Response.Redirect("login.aspx");
                }
                getDebit();
                
            }
        }
        void getDebit()
        {
            try
            {
                con = new SqlConnection(common.GetConnectionString());
                cmd = new SqlCommand(@"Select a.AccountNumber, a.UserName, t.Amount, t.Remarks from [Transaction] t inner join Account a on t.ReceiverAccountId = a.AccountId 
                                       where t.SenderAccountId = @SenderAccountId", con);
                cmd.Parameters.AddWithValue("@SenderAccountId", Session["userId"]);

                sda = new SqlDataAdapter(cmd);
                dt = new DataTable();
                sda.Fill(dt);

                if(dt.Rows.Count > 0)
                {
                    gvMyDebits.DataSource = dt;
                    gvMyDebits.DataBind();
                }
                else {
                    error.InnerText = "No matching records found";
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");
            }


        }
    }
}