using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineSystem
{
    public partial class WebForm1 : System.Web.UI.Page
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

                getCredit();
            }
        }
        void getCredit()
        {
            try
            {
                con = new SqlConnection(common.GetConnectionString());
                cmd = new SqlCommand(@"Select a.AccountNumber, a.UserName, t.Amount, t.Remarks from [Transaction] t inner join Account a on t.SenderAccountId = a.AccountId 
                                       where t.ReceiverAccountId = @ReceiverAccountId", con);
                cmd.Parameters.AddWithValue("@ReceiverAccountId", Session["userId"]);

                sda = new SqlDataAdapter(cmd);
                dt = new DataTable();
                sda.Fill(dt);

                if (dt.Rows.Count > 0)
                {
                    gvMyCredits.DataSource = dt;
                    gvMyCredits.DataBind();
                }
                else
                {
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