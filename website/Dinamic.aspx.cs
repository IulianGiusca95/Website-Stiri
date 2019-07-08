using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Dinamic : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        string query = Request.Params["q"].ToString();
        DataSource2.SelectCommand = "select Id,Gen_stire from Categorie where Id=" + query;
        DataSource2.DataBind();

        if (!Page.IsPostBack && Request.Params["q"] != null && Request.Params["p"] ==null)
        {

            DataSource1.SelectCommand = "select Id,Gen_stire,Titlu,Descriere,Autor,Data,Imagine,Catchphrase from Stiri where Gen_stire=" + query;
            DataSource1.DataBind();
        }

        if (!Page.IsPostBack && Request.Params["q"] != null && Request.Params["p"] != null)
        {
            string query1 = Request.Params["p"].ToString();
 

            if (query1 != "Data1")
            {
                DataSource1.SelectCommand = "select Id, Titlu, Descriere, Autor, Data, Imagine, Catchphrase from Stiri where Gen_stire="+query+" order by " + query1;
                DataSource1.DataBind();
            }
            else
            {
                DataSource1.SelectCommand = "select Id, Titlu, Descriere, Autor, Data, Imagine, Catchphrase from Stiri where Gen_stire="+query+" order by Data desc";
                DataSource1.DataBind();
            }
        }
    }
}