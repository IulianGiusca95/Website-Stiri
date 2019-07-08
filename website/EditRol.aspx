<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="EditRol.aspx.cs" Inherits="EditRol" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">

        <br />
    <br />
    <br />
    <br />

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='Data Source=(LocalDb)\v11.0;AttachDbFilename="C:\Users\Iulian\Documents\Visual Studio 2013\WebSites\WebSite5\App_Data\aspnet-WebSite5-2eb0dc8c-e5d7-47c5-adc9-8695639eb6ae.mdf";Initial Catalog=aspnet-WebSite5-2eb0dc8c-e5d7-47c5-adc9-8695639eb6ae;Integrated Security=True' SelectCommand="select Id, Name from AspNetRoles">
        
    </asp:SqlDataSource>

    <asp:Repeater runat="server" DataSourceID="SqlDataSource1">
        <ItemTemplate>
            <a href =Request.Url.AbsoluteUri><%#Eval("Name") %> </a>
        </ItemTemplate>
    </asp:Repeater>

</asp:Content>

