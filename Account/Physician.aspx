<%@ Page Title="Find a Physician" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Physician.aspx.cs" Inherits="eHealth.Physician" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">

    <div class="content-wrapper">        
        <hgroup class="title">
        <h1><%: Title %></h1>
        </hgroup>

        <div>   
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DB_9B80F3_ehealthConnectionString %>" SelectCommand="select distinct field from physicians"></asp:SqlDataSource>
            <asp:SqlDataSource  ID="SqlDataSource2" runat="server" 
                ConnectionString="<%$ ConnectionStrings:DB_9B80F3_ehealthConnectionString %>" 
                SelectCommand="SELECT Physicians.pID, Physicians.firstName, Physicians.lastName, Physicians.field, Physicians.photoUrl, Facilities.name, Facilities.address, Facilities.state, Facilities.city, Facilities.zip, Facilities.phone 
                               FROM Physicians INNER JOIN Facilities 
                               ON Physicians.fID = Facilities.fID AND Physicians.field = @field">
                
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" PropertyName="SelectedValue" Name="field" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:DB_9B80F3_ehealthConnectionString %>" SelectCommand="SELECT DISTINCT Facilities.city FROM Physicians INNER JOIN Facilities ON Physicians.fID = Facilities.fID"></asp:SqlDataSource>

            <asp:Table runat="server" CssClass="physician-control">
                <asp:TableRow>
                    <asp:TableCell><asp:Label ID="Label1" runat="server" Text="City"></asp:Label></asp:TableCell>
                    <asp:TableCell>
                        <asp:DropDownList ID="DropDownList2" DataSourceID="SqlDataSource3" DataTextField="city" DataValueField="city" AppendDataBoundItems="true" runat="server" Width="100%">
                            <Items>
                                <asp:ListItem Text="" Value="empty"></asp:ListItem>
                            </Items>
                        </asp:DropDownList>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell><asp:Label ID="Label2" runat="server" Text="Field"></asp:Label></asp:TableCell>
                    <asp:TableCell>
                        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="field" DataValueField="field" AppendDataBoundItems="true" Width="100%">
                        <Items>
                            <asp:ListItem Text="" Value="empty"></asp:ListItem>
                        </Items>
                </asp:DropDownList>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell></asp:TableCell>
                    <asp:TableCell><asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Find" /></asp:TableCell>
                </asp:TableRow>
            </asp:Table>

            <div>
                <asp:DataList id="ItemsList" RepeatDirection="Horizontal" RepeatColumns="3" HorizontalAlign="Center" runat="server"  DataSourceID="SqlDataSource2">
                <ItemTemplate>
                    <div class="search-results"><p>
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("photoUrl") %>' CssClass="profile-image" />
                        <br />
                        <b><asp:Label ID="firstNameLabel" runat="server" Text='<%# Eval("firstName") %>' />
                        <asp:Label ID="lastNameLabel" runat="server" Text='<%# Eval("lastName") %>' />
                         (ID: <a id="A1" runat="server" href='<%#Eval("pID", "~/Account/Appointment.aspx?id={0}")%>'><%# Eval("pID") %></a>)</b>
                        
                        <br />
                        <asp:Label ID="fieldLabel" runat="server" Text='<%# Eval("field") %>' />
                        <br />
                        <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                        <br />
                         <a id="AL" runat="server" href='<%#Eval("address", "~/Account/Facility.aspx?dest={0}")%>'><%# Eval("address") %></a>
                        <br />
                        <asp:Label ID="stateLabel" runat="server" Text='<%# Eval("state") %>' />,
                        <asp:Label ID="cityLabel" runat="server" Text='<%# Eval("city") %>' />,
                        <asp:Label ID="zipLabel" runat="server"   Text='<%# Eval("zip") %>' />
                        <br />
                        <asp:Label ID="phoneLabel" runat="server" Text='<%# Eval("phone") %>' />
                        </p></div>
                </ItemTemplate>
                </asp:DataList>         
            </div>
        </div>

    </div>

</asp:Content>
