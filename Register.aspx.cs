using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace LOGIN_FORM_ASP
{
    public partial class Register : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["dbcs2"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cs);
            string query = "insert into signup values (@fname,@lname,@gender,@email,@address,@username,@password)";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@fname",firstnameTextBox.Text);
            cmd.Parameters.AddWithValue("@lname", lastnameTextBox.Text);
            cmd.Parameters.AddWithValue("@gender", DropDownList1.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@email", emailTextBox.Text);
            cmd.Parameters.AddWithValue("@address", addressTextBox.Text);
            cmd.Parameters.AddWithValue("@username", usernameTextBox.Text);
            cmd.Parameters.AddWithValue("@password", passwordTextBox.Text);
            con.Open();
            int a = cmd.ExecuteNonQuery();
            if (a > 0)
            {
                ClientScript.RegisterStartupScript(typeof(Page),"script","alert('Signup Successful... Usernamem is: "+usernameTextBox.Text+" password is: "+passwordTextBox.Text+"')",true);
                ClearControl();
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "scripts", "<script>alert('signup failed')</script>");
            }
            con.Close();
            

            }
        void ClearControl()
        {
            firstnameTextBox.Text = lastnameTextBox.Text = emailTextBox.Text = addressTextBox.Text = usernameTextBox.Text = passwordTextBox.Text = confirmpasswordTextBox.Text = "";
            DropDownList1.ClearSelection();
        }
    
        }

    }
