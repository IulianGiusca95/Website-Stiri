using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Utilizatori : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.Params["q"] != null && Request.Params["p"] == null)
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDb)\v11.0;AttachDbFilename='C:\Users\Iulian\Documents\Visual Studio 2013\WebSites\WebSite5\App_Data\aspnet-WebSite5-2eb0dc8c-e5d7-47c5-adc9-8695639eb6ae.mdf';Initial Catalog=aspnet-WebSite5-2eb0dc8c-e5d7-47c5-adc9-8695639eb6ae;Integrated Security=True");
            con.Open();

            try
            {
                string query = "delete from AspNetUsers where UserName = @User";
                SqlCommand com = new SqlCommand(query, con);
                com.Parameters.AddWithValue("User", Request.Params["q"]);
                com.ExecuteNonQuery();
            }
            catch
            {

            }
            finally
            {
                con.Close();
            }
        }


        if (Request.Params["q"] != null && Request.Params["p"] != null && Request.Params["p"] =="StergeRol")
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDb)\v11.0;AttachDbFilename='C:\Users\Iulian\Documents\Visual Studio 2013\WebSites\WebSite5\App_Data\aspnet-WebSite5-2eb0dc8c-e5d7-47c5-adc9-8695639eb6ae.mdf';Initial Catalog=aspnet-WebSite5-2eb0dc8c-e5d7-47c5-adc9-8695639eb6ae;Integrated Security=True");
            con.Open();

            try
            {
                string query4 = "delete from AspNetUserRoles where UserId = (select Id from AspNetUsers where UserName = @q)";
                SqlCommand com4 = new SqlCommand(query4, con);
                com4.Parameters.AddWithValue("q", Request.Params["q"]);
                com4.ExecuteNonQuery();
            }
            catch
            {

            }
            finally
            {
                con.Close();
            }
        }

        if (Request.Params["q"] != null && Request.Params["p"] != null && Request.Params["p"] == "AdaugaAdmin")
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDb)\v11.0;AttachDbFilename='C:\Users\Iulian\Documents\Visual Studio 2013\WebSites\WebSite5\App_Data\aspnet-WebSite5-2eb0dc8c-e5d7-47c5-adc9-8695639eb6ae.mdf';Initial Catalog=aspnet-WebSite5-2eb0dc8c-e5d7-47c5-adc9-8695639eb6ae;Integrated Security=True");
            con.Open();

            try
            {
                string query4 = "insert into AspNetUserRoles (UserId, RoleId) values (@q, @p)";
                SqlCommand com4 = new SqlCommand(query4, con);
                com4.Parameters.AddWithValue("q", Request.Params["q"]);
                com4.Parameters.AddWithValue("p", "3f715fe8-bf44-4c8e-b036-3822de5f166e");
                com4.ExecuteNonQuery();
            }
            catch
            {

            }
            finally
            {
                con.Close();
            }
        }

        if (Request.Params["q"] != null && Request.Params["p"] != null && Request.Params["p"] == "AdaugaEditor")
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDb)\v11.0;AttachDbFilename='C:\Users\Iulian\Documents\Visual Studio 2013\WebSites\WebSite5\App_Data\aspnet-WebSite5-2eb0dc8c-e5d7-47c5-adc9-8695639eb6ae.mdf';Initial Catalog=aspnet-WebSite5-2eb0dc8c-e5d7-47c5-adc9-8695639eb6ae;Integrated Security=True");
            con.Open();

            try
            {
                string query4 = "INSERT into AspNetUserRoles (UserId, RoleId) VALUES (@q, @p);";
                SqlCommand com4 = new SqlCommand(query4, con);
                com4.Parameters.AddWithValue("q", Request.Params["q"]);
                com4.Parameters.AddWithValue("p", "8df1c63d-a766-4353-bacf-bd7c6ccee5dc");
                com4.ExecuteNonQuery();
            }
            catch
            {

            }
            finally
            {
                con.Close();
            }
        }

        if (Request.Params["q"] != null && Request.Params["p"] != null && Request.Params["p"] == "Blocheaza")
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDb)\v11.0;AttachDbFilename='C:\Users\Iulian\Documents\Visual Studio 2013\WebSites\WebSite5\App_Data\aspnet-WebSite5-2eb0dc8c-e5d7-47c5-adc9-8695639eb6ae.mdf';Initial Catalog=aspnet-WebSite5-2eb0dc8c-e5d7-47c5-adc9-8695639eb6ae;Integrated Security=True");
            con.Open();

            try
            {
                string query4 = "insert into AspNetUserRoles (UserId, RoleId) values(@q, @p)";
                SqlCommand com4 = new SqlCommand(query4, con);
                com4.Parameters.AddWithValue("q", Request.Params["q"]);
                com4.Parameters.AddWithValue("p", "38924b02-14b4-4659-9ecb-68c972d49b71");
                com4.ExecuteNonQuery();
            }
            catch
            {

            }
            finally
            {
                con.Close();
            }
        }

        
    }

 
}