using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MaiMult : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            string ID = Request.Params["Id"].ToString();
            DataSource1.SelectParameters.Add("Id", ID);
            DataSource1.SelectCommand = "select  Id, Titlu, Descriere, Autor, Data, Imagine, Catchphrase, Link from Stiri where Id = @Id";

            DataSource2.SelectParameters.Add("Id", ID);
            DataSource2.SelectCommand = "select Id, Comentariu, Id_utilizator, Data from Comentarii where Id_stire = @Id order by Data desc";
        }

    }

    protected void Button_Click1(object sender, EventArgs e)
    {
        if (Page.IsValid && Request.Params["Id"] != null && Page.IsPostBack)
        {

            Literal EroareBD = (Literal)LV3.FindControl("EroareBD");
            TextBox TB1 = (TextBox)LV3.FindControl("TB1");
            EroareBD.Text = "Trebuie sa te loghezi pentru a comenta";
            TB1.Text = String.Empty;
        }
    }

    protected void Button_Click2(object sender, EventArgs e)
    {
        if (Page.IsValid && Request.Params["Id"] != null && Page.IsPostBack)
        {

            Literal EroareBD2 = (Literal)LV3.FindControl("EroareBD2");
            TextBox TB2 = (TextBox)LV3.FindControl("TB2");

            string ID = Request.Params["Id"].ToString();

            string _id_stire = ID;
            string _comentariu = TB2.Text;
            string _id_ut = System.Web.HttpContext.Current.User.Identity.Name.ToString();
            string _data = DateTime.Now.ToString();

            if (_id_ut != "")
            {
                SqlConnection con = new SqlConnection(@"Data Source=(LocalDb)\v11.0;AttachDbFilename='C:\Users\Iulian\Documents\Visual Studio 2013\WebSites\WebSite5\App_Data\aspnet-WebSite5-2eb0dc8c-e5d7-47c5-adc9-8695639eb6ae.mdf';Initial Catalog=aspnet-WebSite5-2eb0dc8c-e5d7-47c5-adc9-8695639eb6ae;Integrated Security=True");
                con.Open();

                string query = "INSERT INTO Comentarii"
                    + "(Id_stire, Comentariu, Id_utilizator, Data) VALUES (@Id_st, @Com, @Id_ut, @Data);"
                    + "SELECT CAST(scope_identity() AS int)";


                try
                {



                    SqlCommand com = new SqlCommand(query, con);
                    com.Parameters.AddWithValue("Id_st", _id_stire);
                    com.Parameters.AddWithValue("Com", _comentariu);
                    com.Parameters.AddWithValue("Id_ut", _id_ut);
                    com.Parameters.AddWithValue("Data", _data);
                    com.ExecuteScalar();


                }
                catch (Exception ex)
                {

                    EroareBD2.Text = "Eroare baza de date" + ex.Message;
                }
                finally
                {
                    con.Close();
                }

                TB2.Text = String.Empty;
                Response.Redirect(Request.RawUrl);
            }
            else
            {

                EroareBD2.Text = "Trebuie sa te loghezi pentru a comenta";
                TB2.Text = String.Empty;
            }

        }
    }


}