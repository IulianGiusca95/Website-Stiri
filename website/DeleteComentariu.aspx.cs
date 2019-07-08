using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DeleteComentariu : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void DeleteButton_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDb)\v11.0;AttachDbFilename='C:\Users\Iulian\Documents\Visual Studio 2013\WebSites\WebSite5\App_Data\aspnet-WebSite5-2eb0dc8c-e5d7-47c5-adc9-8695639eb6ae.mdf';Initial Catalog=aspnet-WebSite5-2eb0dc8c-e5d7-47c5-adc9-8695639eb6ae;Integrated Security=True");
        con.Open();

        if (Request.Params["Id"] != null)
        {
            string query = "delete from Comentarii where Id = @Id";
            SqlCommand com = new SqlCommand(query, con);

            com.Parameters.AddWithValue("Id", Request.Params["Id"]);
            try
            {
                com.ExecuteNonQuery();

            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }
    }

    protected void CancelButton_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx");
    }
}