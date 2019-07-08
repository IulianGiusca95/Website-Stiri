<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="AdaugaCategorie.aspx.cs" Inherits="AdaugaCategorie" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='Data Source=(LocalDb)\v11.0;AttachDbFilename="C:\Users\Iulian\Documents\Visual Studio 2013\WebSites\WebSite5\App_Data\aspnet-WebSite5-2eb0dc8c-e5d7-47c5-adc9-8695639eb6ae.mdf";Initial Catalog=aspnet-WebSite5-2eb0dc8c-e5d7-47c5-adc9-8695639eb6ae;Integrated Security=True' SelectCommand="select Id, Gen_stire from Categorie where not (Id = 0)"></asp:SqlDataSource>
    <br />
         <br />
         <br />
         <br />
         <br />

    <asp:LoginView ID="LV1" runat="server">
        <AnonymousTemplate>
            <h3>Te-ai pierdut in cautarea celor mai fresh stiri?</h3>
            <a href ="Default.aspx">Intoarce-te cat inca mai poti</a>
        </AnonymousTemplate>

        <LoggedInTemplate>
            <h3>Te-ai pierdut in cautarea celor mai fresh stiri?</h3>
            <a href ="Default.aspx">Intoarce-te cat inca mai poti</a>
        </LoggedInTemplate>

        <RoleGroups>
            <asp:RoleGroup Roles="Admin">
                <ContentTemplate>
                                    <div style="padding: 10px" aria-checked="undefined">
    <div>
        <asp:Label ID="Label1" runat="server" Text="Id:"></asp:Label>
    </div>
    <asp:TextBox ID="TBId" runat="server" CssClass="form-control" ></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TBId" ErrorMessage="Id required." ForeColor="Red"></asp:RequiredFieldValidator>
    
    </div>


                                    <div style="padding: 10px" aria-checked="undefined">
    <div>
        <asp:Label ID="Label2" runat="server" Text="Categorie:"></asp:Label>
    </div>
    <asp:TextBox ID="TBCat" runat="server" CssClass="form-control" ></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TBCat" ErrorMessage="News type required." ForeColor="Red"></asp:RequiredFieldValidator>
    
    </div>


                    <div style="padding: 10px">
        <asp:Button ID="AddNewsButton" runat="server" Text="Adauga" OnClick="Button_Click" />
                    </div>


                    <asp:Repeater runat="server" DataSourceID="SqlDataSource1">
                        <ItemTemplate>
                                    <p><%#Eval("Gen_stire") %></p>
                                    <a href="AdaugaCategorie.aspx?q=<%#Eval("Id") %>">Sterge categorie</a>
                        </ItemTemplate>

                        <SeparatorTemplate>
                            <br />
                        </SeparatorTemplate>
                    </asp:Repeater>
                </ContentTemplate>


                
            </asp:RoleGroup>
        </RoleGroups>

        </asp:LoginView>
</asp:Content>

