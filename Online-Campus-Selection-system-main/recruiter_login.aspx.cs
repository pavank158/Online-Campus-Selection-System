using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class recruiter_login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Visible = false;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        int Rowcount;
        String Username = null;
        string Password = null;

        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());
        con.Open();
        SqlCommand cmd = new SqlCommand("Select * from Login where username=@username and password=@password",con);
        cmd.Parameters.AddWithValue("@username", TextBox1.Text);
        cmd.Parameters.AddWithValue("@password", TextBox2.Text);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();

        da.Fill(dt);
        Rowcount = dt.Rows.Count;
        for (int i = 0; i < Rowcount; i++) {

            Username = dt.Rows[i]["username"].ToString();
            Password = dt.Rows[i]["password"].ToString();
            if (Username == TextBox1.Text && Password == TextBox2.Text)
            {
                Session["User"] = Username;
                if (dt.Rows[i]["role"].ToString() == "admin")
                    Response.Redirect("~/admin.aspx");
                else if (dt.Rows[i]["role"].ToString() == "recruiter")
                    Response.Redirect("~/recruiter_profile.aspx");
                else if (dt.Rows[i]["role"].ToString() == "jobseeker")
                    Response.Redirect("~/Default.aspx");


            }
            else {
                Label1.Visible = true;
                Label1.Text = "Invalid username and password";
                Label1.ForeColor = System.Drawing.Color.Red;
            }
 
        
        
        }
    }
}