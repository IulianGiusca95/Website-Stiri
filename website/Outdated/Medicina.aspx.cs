﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Medicina : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack && Request.Params["q"] == null)
        {
            DataSource1.SelectCommand = "select Id, Titlu, Descriere, Autor, Data, Imagine, Catchphrase from Stiri where Gen_stire=4";
            DataSource1.DataBind();
        }

        if (!Page.IsPostBack && Request.Params["q"] != null)
        {
            string query = Request.Params["q"].ToString();

            if (query != "Data1")
            {
                DataSource1.SelectCommand = "select Id, Titlu, Descriere, Autor, Data, Imagine, Catchphrase from Stiri where Gen_stire=4 order by " + query;
                DataSource1.DataBind();
            }
            else
            {
                DataSource1.SelectCommand = "select Id, Titlu, Descriere, Autor, Data, Imagine, Catchphrase from Stiri where Gen_stire=4 order by Data desc";
                DataSource1.DataBind();
            }
        }
    }
}