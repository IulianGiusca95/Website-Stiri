using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdaugaCategorie : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.Params["q"] != null)
        {

            SqlConnection con = new SqlConnection(@"Data Source=(LocalDb)\v11.0;AttachDbFilename='C:\Users\Iulian\Documents\Visual Studio 2013\WebSites\WebSite5\App_Data\aspnet-WebSite5-2eb0dc8c-e5d7-47c5-adc9-8695639eb6ae.mdf';Initial Catalog=aspnet-WebSite5-2eb0dc8c-e5d7-47c5-adc9-8695639eb6ae;Integrated Security=True");
            con.Open();

            string query = "delete from Categorie where Id = @q";

            try
            {
                SqlCommand com = new SqlCommand(query, con);
                com.Parameters.AddWithValue("q", Request.Params["q"]);
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
    }

    protected void Button_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            TextBox TBId = (TextBox)LV1.FindControl("TBId");
            TextBox TBCat = (TextBox)LV1.FindControl("TBCat");

            string _Id = TBId.Text;
            string _Categorie = TBCat.Text;

            TBId.Text = String.Empty;
            TBCat.Text = String.Empty;

            string query = "insert into Categorie values (@id, @gen);";

            SqlConnection con = new SqlConnection(@"Data Source=(LocalDb)\v11.0;AttachDbFilename='C:\Users\Iulian\Documents\Visual Studio 2013\WebSites\WebSite5\App_Data\aspnet-WebSite5-2eb0dc8c-e5d7-47c5-adc9-8695639eb6ae.mdf';Initial Catalog=aspnet-WebSite5-2eb0dc8c-e5d7-47c5-adc9-8695639eb6ae;Integrated Security=True");
            con.Open();

            try
            {
                SqlCommand com = new SqlCommand(query, con);
                com.Parameters.AddWithValue("id", _Id);
                com.Parameters.AddWithValue("gen", _Categorie);
                com.ExecuteScalar();
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