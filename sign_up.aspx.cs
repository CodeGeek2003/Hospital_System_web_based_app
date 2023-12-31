﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace Hospital_System
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void txbPassword_TextChanged(object sender, EventArgs e)
        {

        }

        protected void txbPassword_TextChanged1(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            using (SqlConnection conn = new SqlConnection())
            {
                conn.ConnectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|Hospital_Database.mdf;Integrated Security=True";

                string insertion = "insert into Patient values (@ssn,@fname,@lname,@phone,@address,@gender,@dob,@room)";

                using (SqlCommand cmdinsert = new SqlCommand(insertion, conn))
                {
                    try
                    {
                        cmdinsert.Parameters.AddWithValue("@ssn", txtSSN.Text);
                        cmdinsert.Parameters.AddWithValue("@fname", txtFname.Text);
                        cmdinsert.Parameters.AddWithValue("@lname", txtlname.Text);
                        cmdinsert.Parameters.AddWithValue("@gender", rblGender.SelectedValue);
                        cmdinsert.Parameters.AddWithValue("@address", txtAdd.Text);
                        cmdinsert.Parameters.AddWithValue("@phone", txtPhone.Text);
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

                        if (!string.IsNullOrEmpty(txtRn.Text))
                        {
                            cmdinsert.Parameters.AddWithValue("@room", txtRn.Text);
                        }
                        else
                        {
                            cmdinsert.Parameters.AddWithValue("@room", DBNull.Value);
                        }

                        conn.Open();
                        cmdinsert.ExecuteNonQuery();
                        lblMsg.Text = "Data Saved Successfully into our database";
                }
                    catch (SqlException err)
                {
                    if (err.Number == 2627)
                    {
                        lblMsg.Text = "This SSN already exists in our Database";
                    }
                    else
                    {
                        lblMsg.Text = "Database Error Please Try Again";
                    }
                }
            }
            }
        }
    }
}