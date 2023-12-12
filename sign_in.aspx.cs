using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace Hospital_System
{
    public partial class sign_in : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
                using (SqlConnection conn = new SqlConnection())
                {
                conn.ConnectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|Hospital_Database.mdf;Integrated Security=True";

                string query = "SELECT UserType FROM [User] WHERE Username = @username AND Password = @password";

                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        try
                        {
                            cmd.Parameters.AddWithValue("@username", txtUser.Text);
                            cmd.Parameters.AddWithValue("@password", txtPassword.Text);

                            conn.Open();

                            object result = cmd.ExecuteScalar();

                            if (result != null)
                            {
                                string userType = result.ToString();
                                lblMsg.Text = $"Login Successful. User Type: {userType}";
                                if (userType == "Doctor")
                            {
                                Response.Redirect("~/doctor_home.aspx");
                            }
                                else if (userType == "Nurse") { Response.Redirect("~/Nurse_home.aspx"); }
                            else if (userType == "Hospital Manager") { Response.Redirect("~/hospitalManager_home.aspx"); }
                            else if (userType == "Pharmacist") { Response.Redirect("~/pharmacist_home.aspx"); }
                            else if (userType == "System Admin") { Response.Redirect("~/Sys_admin_home.aspx"); }
                            else
                            {
                                lblMsg.Text = "User Type is Not supported";
                            }
                        }
                            else
                            {
                                lblMsg.Text = "Invalid username or password";
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