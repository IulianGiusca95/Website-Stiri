<%@ Page Title="Propune" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Propune.aspx.cs" Inherits="Propune" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">

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
             <div style="padding: 10px" aria-checked="undefined">
    <div>
        <asp:Label ID="Label1" runat="server" Text="Titlu:"></asp:Label>
    </div>
    <asp:TextBox ID="TBTitle" runat="server" CssClass="form-control" ></asp:TextBox>
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
        <asp:Label ID="Label4" runat="server" Text="Descriere:"></asp:Label>
    </div>
    <asp:TextBox ID="TBDescriere" runat="server" CssClass="form-control" ></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TBDescriere" ErrorMessage="News content required." ForeColor="Red"></asp:RequiredFieldValidator>
       
    </div>

    <div style="padding: 10px">
    <div>
        <asp:Label ID="Label5" runat="server" Text="Autor:"></asp:Label>
    </div>
    <asp:TextBox ID="TBAutor" runat="server" CssClass="form-control" ></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TBAutor" ErrorMessage="Author required." ForeColor="Red"></asp:RequiredFieldValidator>
    
    </div>

    <div style="padding: 10px">
    <div>
        <asp:Label ID="Label3" runat="server" Text="Link:"></asp:Label>
    </div>
    <asp:TextBox ID="TBLink" runat="server" CssClass="form-control" ></asp:TextBox>
    
    
    </div>

    <div style="padding: 10px">
    <div>
        <asp:Label ID="Label7" runat="server" Text="Catchphrase:"></asp:Label>
    </div>
    <asp:TextBox ID="TBCatch" runat="server" CssClass="form-control" ></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TBCatch" ErrorMessage="Catchphrase required." ForeColor="Red"></asp:RequiredFieldValidator>
   
    </div>



    <div style="padding: 10px">
        <asp:Button ID="AddNewsButton" runat="server" Text="Done" OnClick="Button_Click" />
    </div>

        </LoggedInTemplate>

        <RoleGroups>
            <asp:RoleGroup Roles="Editor">
                <ContentTemplate>
            <h3>Te-ai pierdut in cautarea celor mai fresh stiri?</h3>
            <a href ="Default.aspx">Intoarce-te cat inca mai poti</a>
                </ContentTemplate>
            </asp:RoleGroup>
        </RoleGroups>
    </asp:LoginView>

   
</asp:Content>
