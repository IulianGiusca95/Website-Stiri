<%@ Page Title="Propuse" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="StiriPropuse.aspx.cs" Inherits="StiriPropuse" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
          <br />
         <br />
         <br />
         <br />
         <br />

        <asp:SqlDataSource ID="DataSource1" runat="server" ConnectionString='Data Source=(LocalDb)\v11.0;AttachDbFilename="C:\Users\Iulian\Documents\Visual Studio 2013\WebSites\WebSite5\App_Data\aspnet-WebSite5-2eb0dc8c-e5d7-47c5-adc9-8695639eb6ae.mdf";Initial Catalog=aspnet-WebSite5-2eb0dc8c-e5d7-47c5-adc9-8695639eb6ae;Integrated Security=True' SelectCommand='select Id, Titlu, Descriere, Autor, Data, Imagine, Link from Stiri where Gen_stire=0'>
        </asp:SqlDataSource>
        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="DataSource1">
            <ItemTemplate>
                <asp:LoginView ID="LoginView1" runat="server">              
                    <AnonymousTemplate>
                     <h3>Te-ai ratacit in cautarea celor mai fresh stiri?</h3>
                        <div>
                        <a href ="~/Default.aspx">Intoarce-te cat inca mai poti</a>
                        </div>
                    </AnonymousTemplate>
                    <LoggedInTemplate>
                     <h3>Te-ai ratacit in cautarea celor mai fresh stiri?</h3>
                        <div>
                        <a href ="~/Default.aspx">Intoarce-te cat inca mai poti</a>
                        </div>
                    </LoggedInTemplate>
                    <RoleGroups>
                        <asp:RoleGroup Roles="Editor">
                             <ContentTemplate>
                 <h3><%#Eval("Titlu")%></h3>
                 <div>
                     <img src="<%#Eval("Imagine")%>" width="200px" height="200px" alt ="Placeholder imagine"/>
                 </div>
                <p><%#Eval("Autor") %></p>
                <p><%#Eval("Data") %></p>
                <p><%#Eval("Descriere")%></p>
                <p><a href='<%#Eval("Link") %>'>Citeste mai mult</a></p>

                                <table>
                                    <tr>
                                        <td>
                                            <a href="EditNews.aspx?Id=<%#Eval("Id") %>">Editare</a>
                                        </td>
                                    </tr>
                                </table>
                            </ContentTemplate>
                        </asp:RoleGroup>
                    </RoleGroups>


                </asp:LoginView>


                
            </ItemTemplate>

            <SeparatorTemplate>
                <br />
            </SeparatorTemplate>
        </asp:Repeater>
</asp:Content>
