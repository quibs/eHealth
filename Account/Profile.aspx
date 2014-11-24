<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="eHealth.Account.Profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <div class="content-wrapper">
        <div>

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DB_9B80F3_ehealthConnectionString %>" SelectCommand="SELECT Appointment.startDate, Physicians.firstName, Physicians.lastName, Facilities.name, Facilities.address, Facilities.state, Facilities.city, Facilities.zip, Facilities.phone FROM Appointment INNER JOIN Physicians ON Appointment.pID = Physicians.pID INNER JOIN Facilities ON Appointment.fID = Facilities.fID AND Physicians.fID = Facilities.fID WHERE (Appointment.userName = @userName)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="Label1" Name="userName" PropertyName="Text"/>
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="startDate" HeaderText="Date" SortExpression="startDate" />
                    <asp:BoundField DataField="firstName" HeaderText="Name" SortExpression="firstName" />
                    <asp:BoundField DataField="lastName" HeaderText="" SortExpression="lastName" />
                    <asp:BoundField DataField="name" HeaderText="Location" SortExpression="name" />
                    <asp:BoundField DataField="address" HeaderText="" SortExpression="address" />
                    <asp:BoundField DataField="state" HeaderText="" SortExpression="state" />
                    <asp:BoundField DataField="city" HeaderText="" SortExpression="city" />
                    <asp:BoundField DataField="zip" HeaderText="" SortExpression="zip" />
                    <asp:BoundField DataField="phone" HeaderText="Contact" SortExpression="phone" />
                </Columns>
            </asp:GridView>

        </div>
    </div>
</asp:Content>
