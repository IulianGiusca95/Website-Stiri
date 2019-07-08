<%@ Page Title="HomePage" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron" style="background-color:#003399">
        <br />
        <br />
        <h1 style="color:white">LACURENT.RO</h1>
        <p style="color:white">LaCurent.ro este un site de stiri care si-a propus sa fie cu un pas inaintea celorlalte in materie de actualitate.</p>
        
    </div>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='Data Source=(LocalDb)\v11.0;AttachDbFilename="C:\Users\Iulian\Documents\Visual Studio 2013\WebSites\WebSite5\App_Data\aspnet-WebSite5-2eb0dc8c-e5d7-47c5-adc9-8695639eb6ae.mdf";Initial Catalog=aspnet-WebSite5-2eb0dc8c-e5d7-47c5-adc9-8695639eb6ae;Integrated Security=True' SelectCommand="select * from stiri where (Gen_stire=1 or Gen_stire=2 or Gen_stire=3 or Gen_stire=4 or Gen_stire=5) and DATEDIFF(day,Data,GETDATE()) <10 order by Data desc"></asp:SqlDataSource>
    
    <div class="row">
        <asp:Repeater DataSourceID="SqlDataSource1" runat="server">
            <ItemTemplate>
        <div class="col-md-4">
            <div style ="width:350px;height:600px;">
            <h3><a href="MaiMult.aspx?Id=<%#Eval("Id") %>"><%#Eval("Titlu")%></a></h3>
            <div>
                     <img src="<%#Eval("Imagine")%>" width="350px" height="350px" alt ="Placeholder imagine"/>
            </div>
              <p><%#Eval("Catchphrase") %></p>
            <p>
                <a class="btn btn-default" href="MaiMult.aspx?Id=<%#Eval("Id") %>">>Mai mult &raquo;</a>
            </p>
            </div>
        
        </div>
                </ItemTemplate>
        </asp:Repeater>
    </div>
</asp:Content>
