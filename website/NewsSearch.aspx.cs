using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class NewsSearch : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack && Request.Params["q"] != null)
        {
            string query = Server.UrlDecode(Request.Params["q"]);

            SDSSearch.SelectCommand = "SELECT Id, Gen_stire, Titlu, Descriere, Autor, Data, Imagine, Catchphrase from Stiri"
                + " WHERE Titlu LIKE @q or Descriere LIKE @q or Catchphrase like @q order by data desc";

            SDSSearch.SelectParameters.Clear();
            SDSSearch.SelectParameters.Add("q","%"+ query + "%");
            SDSSearch.DataBind();
        }
    }
}