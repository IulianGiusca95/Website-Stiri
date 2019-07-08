<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Utilizatori.aspx.cs" Inherits="Utilizatori" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <br />
    <br />
    <br />
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='Data Source=(LocalDb)\v11.0;AttachDbFilename="C:\Users\Iulian\Documents\Visual Studio 2013\WebSites\WebSite5\App_Data\aspnet-WebSite5-2eb0dc8c-e5d7-47c5-adc9-8695639eb6ae.mdf";Initial Catalog=aspnet-WebSite5-2eb0dc8c-e5d7-47c5-adc9-8695639eb6ae;Integrated Security=True' SelectCommand="select UserName,Id from AspNetUsers">

    </asp:SqlDataSource>

    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString='Data Source=(LocalDb)\v11.0;AttachDbFilename="C:\Users\Iulian\Documents\Visual Studio 2013\WebSites\WebSite5\App_Data\aspnet-WebSite5-2eb0dc8c-e5d7-47c5-adc9-8695639eb6ae.mdf";Initial Catalog=aspnet-WebSite5-2eb0dc8c-e5d7-47c5-adc9-8695639eb6ae;Integrated Security=True' SelectCommand="select UserName from AspNetUsers join AspNetUserRoles on(UserId=Id) where RoleId like '3f715fe8-bf44-4c8e-b036-3822de5f166e'">

    </asp:SqlDataSource>

    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString='Data Source=(LocalDb)\v11.0;AttachDbFilename="C:\Users\Iulian\Documents\Visual Studio 2013\WebSites\WebSite5\App_Data\aspnet-WebSite5-2eb0dc8c-e5d7-47c5-adc9-8695639eb6ae.mdf";Initial Catalog=aspnet-WebSite5-2eb0dc8c-e5d7-47c5-adc9-8695639eb6ae;Integrated Security=True' SelectCommand="select UserName from AspNetUsers join AspNetUserRoles on(UserId=Id) where RoleId like '8df1c63d-a766-4353-bacf-bd7c6ccee5dc'">

    </asp:SqlDataSource>

    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString='Data Source=(LocalDb)\v11.0;AttachDbFilename="C:\Users\Iulian\Documents\Visual Studio 2013\WebSites\WebSite5\App_Data\aspnet-WebSite5-2eb0dc8c-e5d7-47c5-adc9-8695639eb6ae.mdf";Initial Catalog=aspnet-WebSite5-2eb0dc8c-e5d7-47c5-adc9-8695639eb6ae;Integrated Security=True' SelectCommand="select UserName from AspNetUsers join AspNetUserRoles on(UserId=Id) where RoleId like '38924b02-14b4-4659-9ecb-68c972d49b71'">

    </asp:SqlDataSource>


     <h4>Utilizatori</h4>
    <asp:Repeater runat="server" DataSourceID="SqlDataSource1">
        <ItemTemplate>
              <p><%#Eval("UserName")%></p>
              <a class="btn btn-default" href="Utilizatori.aspx?q=<%#Eval("UserName") %>">Sterge</a>
              <a class="btn btn-default" href="Utilizatori.aspx?q=<%#Eval("UserName") %>&p=StergeRol">Sterge Rol</a>
              <a class="btn btn-default" href="Utilizatori.aspx?q=<%#Eval("Id") %>&p=AdaugaAdmin">Adauga admin</a>
              <a class="btn btn-default" href="Utilizatori.aspx?q=<%#Eval("Id") %>&p=AdaugaEditor">Adauga editor</a>
              <a class="btn btn-default" href="Utilizatori.aspx?q=<%#Eval("Id") %>&p=Blocheaza">Blocheaza</a>
         </ItemTemplate>
    </asp:Repeater>
    <br />
    <br />
    <br />

    <h4>Utilizatori in roluri</h4>
    <h4>Admini</h4>
    <asp:Repeater runat="server" DataSourceID="SqlDataSource2">
        <ItemTemplate>
            <p><%#Eval("UserName")%></p>
        </ItemTemplate>
    </asp:Repeater>
    <br />

    <h4>Editori</h4>
    <asp:Repeater runat="server" DataSourceID="SqlDataSource3">
        <ItemTemplate>
            <p><%#Eval("UserName")%></p>
        </ItemTemplate>
    </asp:Repeater>
    <br />
    <h4>Blocati</h4>
    <asp:Repeater runat="server" DataSourceID="SqlDataSource4">
        <ItemTemplate>
            <p><%#Eval("UserName")%></p>
        </ItemTemplate>
    </asp:Repeater>

    
</asp:Content>

