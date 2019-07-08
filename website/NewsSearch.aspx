<%@ Page Title="Search" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="NewsSearch.aspx.cs" Inherits="NewsSearch" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    
    <br />
    <br />
    <br />
    <br />
    <br />
    <asp:SqlDataSource ID="SDSSearch" runat="server" ConnectionString='Data Source=(LocalDb)\v11.0;AttachDbFilename="C:\Users\Iulian\Documents\Visual Studio 2013\WebSites\WebSite5\App_Data\aspnet-WebSite5-2eb0dc8c-e5d7-47c5-adc9-8695639eb6ae.mdf";Initial Catalog=aspnet-WebSite5-2eb0dc8c-e5d7-47c5-adc9-8695639eb6ae;Integrated Security=True'>
    </asp:SqlDataSource>

    <asp:Label ID="LSelect" runat="server" Text=""></asp:Label>
    <br />
        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SDSSearch">
            <ItemTemplate>
                 <div style="width:500px; text-align:justify; text-justify:inter-word;"> 
                 <h3><%#Eval("Titlu")%></h3>
                 <div>
                     <img src="<%#Eval("Imagine")%>" width="400px" height="400px" alt ="Placeholder imagine"/>
                 </div>
                <p><%#Eval("Catchphrase") %></p>
                <a href="MaiMult.aspx?Id=<%#Eval("Id") %>">Mai mult</a>
                </div>
            </ItemTemplate>

            <SeparatorTemplate>
                <br />
            </SeparatorTemplate>
        </asp:Repeater>



</asp:Content>

