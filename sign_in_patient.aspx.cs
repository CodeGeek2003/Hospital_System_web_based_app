using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace Hospital_System
{
    public partial class sign_in_patient : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            using (SqlConnection conn = new SqlConnection())
            {
                conn.ConnectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|Hospital_Database.mdf;Integrated Security=True";

                string query = "SELECT FirstName FROM [Patient] WHERE SSN = @ssn AND DoB = @DoB";

                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    try
                    {
                        cmd.Parameters.AddWithValue("@ssn", txtSSN.Text);
                        cmd.Parameters.AddWithValue("@DoB", txtDoB.Text);

                        conn.Open();

                        object result = cmd.ExecuteScalar();

                        if (result != null)
                        {
                            Response.Redirect("~/patient_Home.aspx");
                        }
                        else
                        {
                            lblMsg.Text = "Invalid SSN or Date of Birth";
                        }
                    }
                    catch (SqlException err)
                    {
                        lblMsg.Text = "Database Error: " + err.Message;
                    }
                }
            }

        }

    }
}