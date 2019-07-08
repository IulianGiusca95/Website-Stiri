<%@ Page Title="Divertisment" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Divertisment.aspx.cs" Inherits="Divertisment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
     <br />
         <br />
         <br />
         <br />
         <br />

    <h1> Stiri Divertisment</h1>
       <br />
       <a href ="Divertisment.aspx?q=Data">Sorteaza dupa Data ascendent</a><br />
       <a href ="Divertisment.aspx?q=Data1">Sorteaza dupa Data descendent</a><br />
       <a href ="Divertisment.aspx?q=Titlu">Sorteaza dupa Titlu</a>
        <asp:SqlDataSource ID="DataSource1" runat="server" ConnectionString='Data Source=(LocalDb)\v11.0;AttachDbFilename="C:\Users\Iulian\Documents\Visual Studio 2013\WebSites\WebSite5\App_Data\aspnet-WebSite5-2eb0dc8c-e5d7-47c5-adc9-8695639eb6ae.mdf";Initial Catalog=aspnet-WebSite5-2eb0dc8c-e5d7-47c5-adc9-8695639eb6ae;Integrated Security=True'>
        </asp:SqlDataSource>
        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="DataSource1">
            <ItemTemplate>
                <div>
                 <h3><%#Eval("Titlu")%></h3>
                 <div>
                     <img src="<%#Eval("Imagine")%>" width="500px" height="500px" alt ="Placeholder imagine"/>
                 </div>
                <p><%#Eval("Catchphrase") %></p>
                <a class="btn btn-default" href="MaiMult.aspx?Id=<%#Eval("Id") %>">Mai mult</a>
               </div>
            </ItemTemplate>

            <SeparatorTemplate>
                <br />
            </SeparatorTemplate>
        </asp:Repeater>
</asp:Content>

