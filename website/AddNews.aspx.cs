using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AddNews : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {

            TextBox TBTitle = (TextBox)LV1.FindControl("TBTitle");
            TextBox TBCategorie = (TextBox)LV1.FindControl("TBCategorie");
            TextBox TBDescriere = (TextBox)LV1.FindControl("TBDescriere");
            TextBox TBAutor = (TextBox)LV1.FindControl("TBAutor");
            TextBox TBData = (TextBox)LV1.FindControl("TBData");
            TextBox TBImagine = (TextBox)LV1.FindControl("TBImagine");
            TextBox TBCatch = (TextBox)LV1.FindControl("TBCatch");
            TextBox TBLink = (TextBox)LV1.FindControl("TBLink");


            string _Titlu = TBTitle.Text;
            string _Gen = TBCategorie.Text;
            string _Descriere = TBDescriere.Text;
            string _Autor = TBAutor.Text;
            string _Data = TBData.Text;
            string _Imagine = TBImagine.Text;
            string _Catch = TBCatch.Text;
            string _Link = TBLink.Text;

            TBTitle.Text = String.Empty;
            TBCategorie.Text = String.Empty;
            TBDescriere.Text = String.Empty;
            TBAutor.Text = String.Empty;
            TBData.Text = String.Empty;
            TBImagine.Text = String.Empty;
            TBCatch.Text = String.Empty;
            TBLink.Text = String.Empty;

            string query = "INSERT into Stiri"
                    + "(Gen_stire,Titlu,Descriere,Autor,Data,Imagine,Catchphrase,Link) VALUES (@Categorie,@Titlu,@Descriere,@Autor,@Data,@Imagine,@Catch,@Link);"
                    + "SELECT CAST(scope_identity() AS int)";

            SqlConnection con = new SqlConnection(@"Data Source=(LocalDb)\v11.0;AttachDbFilename='C:\Users\Iulian\Documents\Visual Studio 2013\WebSites\WebSite5\App_Data\aspnet-WebSite5-2eb0dc8c-e5d7-47c5-adc9-8695639eb6ae.mdf';Initial Catalog=aspnet-WebSite5-2eb0dc8c-e5d7-47c5-adc9-8695639eb6ae;Integrated Security=True");
            con.Open();

            try
            {
                SqlCommand com = new SqlCommand(query, con);
                com.Parameters.AddWithValue("Categorie", _Gen);
                com.Parameters.AddWithValue("Titlu", _Titlu);
                com.Parameters.AddWithValue("Descriere", _Descriere);
                com.Parameters.AddWithValue("Autor", _Autor);
                com.Parameters.AddWithValue("Data", _Data);
                com.Parameters.AddWithValue("Imagine", _Imagine);
                com.Parameters.AddWithValue("Catch", _Catch);
                com.Parameters.AddWithValue("Link", _Link);
                com.ExecuteScalar();
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