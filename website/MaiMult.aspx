<%@ Page Title="Stire" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="MaiMult.aspx.cs" Inherits="MaiMult" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:SqlDataSource ID="DataSource1" ConnectionString='Data Source=(LocalDb)\v11.0;AttachDbFilename="C:\Users\Iulian\Documents\Visual Studio 2013\WebSites\WebSite5\App_Data\aspnet-WebSite5-2eb0dc8c-e5d7-47c5-adc9-8695639eb6ae.mdf";Initial Catalog=aspnet-WebSite5-2eb0dc8c-e5d7-47c5-adc9-8695639eb6ae;Integrated Security=True' runat="server">
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="DataSource2" runat="server" ConnectionString='Data Source=(LocalDb)\v11.0;AttachDbFilename="C:\Users\Iulian\Documents\Visual Studio 2013\WebSites\WebSite5\App_Data\aspnet-WebSite5-2eb0dc8c-e5d7-47c5-adc9-8695639eb6ae.mdf";Initial Catalog=aspnet-WebSite5-2eb0dc8c-e5d7-47c5-adc9-8695639eb6ae;Integrated Security=True'>
    </asp:SqlDataSource> 
    <asp:Repeater DataSourceID="DataSource1" runat="server">
        <ItemTemplate>
                </br>
    </br>
    </br>
    </br>
     </br>

                 <div style="width:500px; text-align:justify; text-justify:inter-word;"> 
                 <h2><%#Eval("Titlu")%></h2>
                 <p>Autorul: <%#Eval("Autor") %></p>
                 <p>Postat in data de: <%#Eval("Data") %></p>
                 </br>
                 <p style="font-size:125%;"><%#Eval("Catchphrase") %></p>
                 <div>
                     <img  src="<%#Eval("Imagine")%>" width="400px" height="400px" alt ="Placeholder imagine"/>
                 </div>
                 <p style="font-size:125%;"><%#Eval("Descriere")%></p>
                 <p><a href='<%#Eval("Link") %>'><%#Eval("Link") %></a></p>
                 </div> 
                <asp:LoginView ID="LoginView1" runat="server">
                    <AnonymousTemplate>
                     
                    </AnonymousTemplate>
                    <LoggedInTemplate>

                    </LoggedInTemplate>

                    <RoleGroups>
                        <asp:RoleGroup Roles="Admin">
                            <ContentTemplate>
                                <table>
                                    <tr>
                                        <td>
                                            <a href="EditNews.aspx?Id=<%#Eval("Id") %>">Editare</a>
                                        </td>
                                        <td>
                                            <a href="DeleteNews.aspx?Id=<%#Eval("Id") %>">Stergere</a>
                                        </td>
                                    </tr>
                                </table>
                            </ContentTemplate>
                        </asp:RoleGroup>

                        <asp:RoleGroup Roles="Editor">
                             <ContentTemplate>
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
        </asp:Repeater>
       
      


             <asp:LoginView ID="LV3" runat="server">
                 <AnonymousTemplate>
                    <div style="padding: 10px">
                    <div>
                <asp:Label ID="Label1" runat="server" Text="Adauga comentariu"></asp:Label>
                    </div>
                    <asp:TextBox ID="TB1" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Nu poti trimite un mesaj vid" ControlToValidate="TB1"></asp:RequiredFieldValidator>
                    <asp:Button ID="ButtonComment" runat="server" Text="Send" OnClick ="Button_Click1"/>
                    <asp:Literal ID="EroareBD" runat="server"></asp:Literal>
                </div>
                 </AnonymousTemplate>

                 <LoggedInTemplate>
                    <div style="padding: 10px">
                    <div>
                <asp:Label ID="Label2" runat="server" Text="Adauga comentariu"></asp:Label>
                    </div>
                    <asp:TextBox ID="TB2" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Nu poti trimite un mesaj vid" ControlToValidate="TB2"></asp:RequiredFieldValidator>
                    <asp:Button ID="ButtonComment" runat="server" Text="Send" OnClick ="Button_Click2"/>
                    <asp:Literal ID="EroareBD2" runat="server"></asp:Literal>
                </div>
                 </LoggedInTemplate>

                 <RoleGroups>
                     <asp:RoleGroup Roles="Banned">
                         <ContentTemplate>
                             <p style="color:red">Nu mai poti lasa comentarii</p>
                         </ContentTemplate>
                     </asp:RoleGroup>
                 </RoleGroups>

             </asp:LoginView>
                

               
    
                <asp:Repeater ID="Repeater2" runat="server" DataSourceID="DataSource2">
                    <ItemTemplate >
                       
                        <p><i><%#Eval("Comentariu") %> </i>(<%#Eval("Id_utilizator") %>,<%#Eval("Data") %>) </p>

                        <asp:LoginView ID="LoginView2" runat="server">
                    <AnonymousTemplate>
                     
                    </AnonymousTemplate>
                    <LoggedInTemplate>

                    </LoggedInTemplate>

                            <RoleGroups>
                                <asp:RoleGroup Roles="Admin">
                                    <ContentTemplate>
                                        <a href="DeleteComentariu.aspx?Id=<%#Eval("Id") %>">Sterge</a>
                                        
                                    </ContentTemplate>
                                </asp:RoleGroup>
                            </RoleGroups>
                        </asp:LoginView>


                    </ItemTemplate>
                </asp:Repeater>
            

                
 

</asp:Content>

