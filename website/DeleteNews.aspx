<%@ Page Title="Sterge Stire" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="DeleteNews.aspx.cs" Inherits="DeleteNews" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">

    <br />
    <br />
    <br />
    <br />
    <br />

    <asp:LoginView ID="LoginView1" runat="server">

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
                    <asp:Panel ID="PConfirm" runat="server">
        <h4>
            Stergi stirea?
        </h4>
        <br />
        <asp:Button ID="DeleteButton" runat="server" Text="Da" Width="50" OnClick="DeleteButton_Click" /><span style="padding-left: 20px;"></span> <asp:Button ID="CancelButton" runat="server" Text="Nu"  Width="50" OnClick="CancelButton_Click" />
    </asp:Panel>
                </ContentTemplate>
            </asp:RoleGroup>
        </RoleGroups>
    </asp:LoginView>
</asp:Content>

