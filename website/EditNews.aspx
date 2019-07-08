<%@ Page Title="Editare" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="EditNews.aspx.cs" Inherits="EditNews" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
           <br />
         <br />
         <br />
         <br />
         <br />


    <asp:LoginView runat="server" ID="LV1">
        <AnonymousTemplate>
            <h3>Te-ai pierdut in cautarea celor mai fresh stiri?</h3>
            <a href ="Default.aspx">Intoarce-te cat inca mai poti</a>
        </AnonymousTemplate>

        <LoggedInTemplate>
            <h3>Te-ai pierdut in cautarea celor mai fresh stiri?</h3>
            <a href ="Default.aspx">Intoarce-te cat inca mai poti</a>
        </LoggedInTemplate>
        <RoleGroups>
            <asp:RoleGroup Roles="Editor, Admin">
                <ContentTemplate>
    <div style="padding: 10px" aria-checked="undefined">
    <div>
        <asp:Label ID="Label1" runat="server" Text="Titlu:"></asp:Label>
    </div>
    <asp:TextBox ID="TBTitle" runat="server" CssClass="form-control" Width="300px" Height="100" TextMode="MultiLine"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TBTitle" ErrorMessage="Title required." ForeColor="Red"></asp:RequiredFieldValidator>
    
    </div>

    <div style="padding: 10px">
    <div>
        <asp:Label ID="Label2" runat="server" Text="Imagine:"></asp:Label>
    </div>
    <asp:TextBox ID="TBImagine" runat="server" CssClass="form-control" ></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TBImagine" ErrorMessage="Image required." ForeColor="Red"></asp:RequiredFieldValidator>
   
    </div>

    <div style="padding: 10px">
    <div>
        <asp:Label ID="Label3" runat="server" Text="Categorie:"></asp:Label>
    </div>
    <asp:TextBox ID="TBCategorie" runat="server" CssClass="form-control" ></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TBCategorie" ErrorMessage="News type required." ForeColor="Red"></asp:RequiredFieldValidator>
    
    </div>

    <div style="padding: 10px">
    <div>
        <asp:Label ID="Label4" runat="server" Text="Descriere:"></asp:Label>
    </div>
    <asp:TextBox ID="TBDescriere" runat="server" CssClass="form-control" TextMode="MultiLine" Width="400px" Height="400px"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TBDescriere" ErrorMessage="News content required." ForeColor="Red"></asp:RequiredFieldValidator>
       
    </div>

    <div style="padding: 10px">
    <div>
        <asp:Label ID="Label5" runat="server" Text="Autor:"></asp:Label>
    </div>
    <asp:TextBox ID="TBAutor" runat="server" CssClass="form-control"  ></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TBAutor" ErrorMessage="Author required." ForeColor="Red"></asp:RequiredFieldValidator>
    
    </div>

    <div style="padding: 10px">
    <div>
        <asp:Label ID="Label8" runat="server" Text="Link:"></asp:Label>
    </div>
    <asp:TextBox ID="TBLink" runat="server" CssClass="form-control" ></asp:TextBox>
  
   
    </div>

    <div style="padding: 10px">
    <div>
        <asp:Label ID="Label6" runat="server" Text="Data:"></asp:Label>
    </div>
    <asp:TextBox ID="TBData" runat="server" CssClass="form-control"  ></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TBData" ErrorMessage="Data required." ForeColor="Red"></asp:RequiredFieldValidator>
    
    </div>

    <div style="padding: 10px">
    <div>
        <asp:Label ID="Label7" runat="server" Text="Summary:"></asp:Label>
    </div>
    <asp:TextBox ID="TBCatch" runat="server" CssClass="form-control" Height="100px" Width="300px" TextMode="MultiLine"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TBImagine" ErrorMessage="Summary required." ForeColor="Red"></asp:RequiredFieldValidator>
   
    </div>

    <div style="padding: 10px">
        <asp:Button ID="AddNewsButton" runat="server" Text="Done" OnClick="Button_Click" />
    </div>

   
                </ContentTemplate>
            </asp:RoleGroup>


        </RoleGroups>
    </asp:LoginView>
                 

</asp:Content>

