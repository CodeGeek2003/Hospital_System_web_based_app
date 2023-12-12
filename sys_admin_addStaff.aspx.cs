using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace Hospital_System
{
    public partial class sys_admin_addStaff : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ddlUserType_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            using (SqlConnection conn = new SqlConnection())
            {
                conn.ConnectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|Hospital_Database.mdf;Integrated Security=True";

                string insertion = "insert into [User] values (@user,@dob,@phone,@address,@usertype,@password,@fname,@lname)";

                using (SqlCommand cmdinsert = new SqlCommand(insertion, conn))
                {
                    try
                    {
                        cmdinsert.Parameters.AddWithValue("@user", txtUser.Text);
                        cmdinsert.Parameters.AddWithValue("@fname", txtFname.Text);
                        cmdinsert.Parameters.AddWithValue("@lname", txtlname.Text);
                        cmdinsert.Parameters.AddWithValue("@usertype", ddlUserType.SelectedValue);
                        cmdinsert.Parameters.AddWithValue("@address", txtAdd.Text);
                        cmdinsert.Parameters.AddWithValue("@phone", txtPhone.Text);
                        cmdinsert.Parameters.AddWithValue("@password", txtPassword.Text);
                        DateTime dob;
                        if (DateTime.TryParse(txtDob.Text, out dob))
                        {
                            cmdinsert.Parameters.AddWithValue("@dob", dob);
                        }
                        else
                        {

                            lblMsg.Text = "Invalid date format for Date of Birth";
                            return;
                        }
                        conn.Open();
                        cmdinsert.ExecuteNonQuery();
                        lblMsg.Text = "Data Saved Successfully into our database";
                    }
                    catch (SqlException err)
                    {
                        if (err.Number == 2627)
                        {
                            lblMsg.Text = "This Username already exists in our Database";
                        }
                        else
                        {
                            lblMsg.Text = "Database Error With This Error Message"+err.Message;
                        }
                    }
                }
            }
        }

    }
}