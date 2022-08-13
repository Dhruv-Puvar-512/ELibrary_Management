using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ELibraryManagement
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["role"].Equals(""))
                {
                    UserLogin.Visible = true; // user login link button
                    SignUp.Visible = true; // sign up link button

                    Logout.Visible = false; // logout link button
                    HelloUser.Visible = false; // hello user link button


                    AdminLogin.Visible = true; // admin login link button
                    AuthorManagement.Visible = false; // author management link button
                    PublisherManagement.Visible = false; // publisher management link button
                    BookInventory.Visible = false; // book inventory link button
                    BookIssuing.Visible = false; // book issuing link button
                    MemberManagement.Visible = false; // member management link button

                }
                else if (Session["role"].Equals("user"))
                {
                    UserLogin.Visible = false; // user login link button
                    SignUp.Visible = false; // sign up link button

                    Logout.Visible = true; // logout link button
                    HelloUser.Visible = true; // hello user link button
                    HelloUser.Text = "Hello, " + Session["username"].ToString();


                    AdminLogin.Visible = true; // admin login link button
                    AuthorManagement.Visible = false; // author management link button
                    PublisherManagement.Visible = false; // publisher management link button
                    BookInventory.Visible = false; // book inventory link button
                    BookIssuing.Visible = false; //  book issuing link button
                    MemberManagement.Visible = false; // book issuing link button
                }
                else if (Session["role"].Equals("admin"))
                {
                    UserLogin.Visible = false; // user login link button
                    SignUp.Visible = false; // sign up link button

                    Logout.Visible = true; // logout link button
                    HelloUser.Visible = true; // hello user link button
                    HelloUser.Text = "Hello, Admin";


                    AdminLogin.Visible = false; // admin login link button
                    AuthorManagement.Visible = true; // author management link button
                    PublisherManagement.Visible = true; // publisher management link button
                    BookInventory.Visible = true; // book inventory link button
                    BookIssuing.Visible = true; // book issue link button
                    MemberManagement.Visible = true; // book issuing link button
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        
        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminlogin.aspx");
        }

        protected void LinkButton11_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminAuthorManagement.aspx");

        }

        protected void LinkButton12_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminPublisherManagement.aspx");

        }

        protected void LinkButton8_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminBookInventory.aspx");

        }

        protected void LinkButton9_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminBookIssuing.aspx");

        }

        protected void LinkButton10_Click(object sender, EventArgs e)
        {

            Response.Redirect("adminMemberManagement.aspx");
        }


        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Response.Redirect("userlogin.aspx");

        }

        //sign up
        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("usersignup.aspx");

        }

        // logout
        protected void LinkButton1_Click(object sender, EventArgs e)
        {

            Session["username"] = "";
            Session["fullname"] = "";
            Session["role"] = "";
            Session["status"] = "";

            UserLogin.Visible = true; // user login link button
            SignUp.Visible = true; // sign up link button

            Logout.Visible = false; // logout link button
            HelloUser.Visible = true; // hello user link button


            AdminLogin.Visible = true; // admin login link button
            AuthorManagement.Visible = false; // author management link button
            PublisherManagement.Visible = false; // publisher management link button
            BookInventory.Visible = false; // book inventory link button
            BookIssuing.Visible = false; // book issuing link button
            MemberManagement.Visible = false; // member management link button
            Response.Redirect("homepage.aspx");
            
        }

        protected void HelloUser_Click(object sender, EventArgs e)
        {
            Response.Redirect("userprofile.aspx");
            
        }

        protected void ViewBooks_Click(object sender, EventArgs e)
        {
            Response.Redirect("viewbooks.aspx");
        }
    }
}