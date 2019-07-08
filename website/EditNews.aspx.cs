using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class EditNews : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            TextBox TBTitle = (TextBox)LV1.FindControl("TBTitle");
            TextBox TBCategorie = (TextBox)LV1.FindControl("TBCategorie");
            TextBox TBDescriere = (TextBox)LV1.FindControl("TBDescriere");
            TextBox TBAutor = (TextBox)LV1.FindControl("TBAutor");
            TextBox TBData = (TextBox)LV1.FindControl("TBData");
            TextBox TBImagine = (TextBox)LV1.FindControl("TBImagine");
            TextBox TBCatch = (TextBox)LV1.FindControl("TBCatch");
            TextBox TBLink = (TextBox)LV1.FindControl("TBLink");

            int ID = int.Parse(Request.Params["Id"].ToString());
            string query = "Select *"
                + "From Stiri where Id= @Id";
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDb)\v11.0;AttachDbFilename='C:\Users\Iulian\Documents\Visual Studio 2013\WebSites\WebSite5\App_Data\aspnet-WebSite5-2eb0dc8c-e5d7-47c5-adc9-8695639eb6ae.mdf';Initial Catalog=aspnet-WebSite5-2eb0dc8c-e5d7-47c5-adc9-8695639eb6ae;Integrated Security=True");
            con.Open();

            try
            {
                SqlCommand com = new SqlCommand(query, con);
                com.Parameters.AddWithValue("Id", ID);
                SqlDataReader reader = com.ExecuteReader();
                while (reader.Read())
                {
                    TBTitle.Text = reader["Titlu"].ToString();
                    TBCategorie.Text = reader["Gen_stire"].ToString();
                    TBDescriere.Text = reader["Descriere"].ToString();
                    TBAutor.Text = reader["Autor"].ToString();
                    TBData.Text = DateTime.Parse(reader["Data"].ToString()).ToShortDateString();
                    TBImagine.Text = reader["Imagine"].ToString();
                    TBCatch.Text = reader["Catchphrase"].ToString();
                    TBLink.Text = reader["Link"].ToString();
                }
            }
            catch (Exception ex)
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
        if (Page.IsValid && Request.Params["Id"] != null && Page.IsPostBack)
        {
            TextBox TBTitle = (TextBox)LV1.FindControl("TBTitle");
            TextBox TBCategorie = (TextBox)LV1.FindControl("TBCategorie");
            TextBox TBDescriere = (TextBox)LV1.FindControl("TBDescriere");
            TextBox TBAutor = (TextBox)LV1.FindControl("TBAutor");
            TextBox TBData = (TextBox)LV1.FindControl("TBData");
            TextBox TBImagine = (TextBox)LV1.FindControl("TBImagine");
            TextBox TBCatch = (TextBox)LV1.FindControl("TBCatch");
            TextBox TBLink = (TextBox)LV1.FindControl("TBLink");


            int ID = int.Parse(Request.Params["Id"].ToString());
            string _Titlu = TBTitle.Text;
            string _Gen = TBCategorie.Text;
            string _Descriere = TBDescriere.Text;
            string _Autor = TBAutor.Text;
            string _Data = TBData.Text;
            string _Imagine = TBImagine.Text;
            string _Catch = TBCatch.Text;
            string _Link = TBLink.Text;

            SqlConnection con = new SqlConnection(@"Data Source=(LocalDb)\v11.0;AttachDbFilename='C:\Users\Iulian\Documents\Visual Studio 2013\WebSites\WebSite5\App_Data\aspnet-WebSite5-2eb0dc8c-e5d7-47c5-adc9-8695639eb6ae.mdf';Initial Catalog=aspnet-WebSite5-2eb0dc8c-e5d7-47c5-adc9-8695639eb6ae;Integrated Security=True");
            con.Open();

            try
            {
                string query2 = "UPDATE Stiri "
                    + " SET Gen_stire = @Categorie, Titlu = @Titlu, Descriere = @Descriere, Autor = @Autor, Data = @Data, Imagine = @Imagine, Catchphrase = @Catch, Link = @Link"
                    + " Where Id = @id";
                SqlCommand com2 = new SqlCommand(query2, con);
                com2.Parameters.AddWithValue("id", ID);
                com2.Parameters.AddWithValue("Categorie", _Gen);
                com2.Parameters.AddWithValue("Descriere", _Descriere);
                com2.Parameters.AddWithValue("Autor", _Autor);
                com2.Parameters.AddWithValue("Data", _Data);
                com2.Parameters.AddWithValue("Imagine", _Imagine);
                com2.Parameters.AddWithValue("Titlu", _Titlu);
                com2.Parameters.AddWithValue("Catch", _Catch);
                com2.Parameters.AddWithValue("Link", _Link);
                com2.ExecuteNonQuery();
            }
            catch (Exception ex)
            {


            }
            finally
            {
                con.Close();
            }


        }
    }
}