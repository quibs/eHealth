<%@ Page Title="My Profile" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="eHealth.Account.Profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <div class="content-wrapper">
        <div style="padding-top: 1px">
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DB_9B80F3_ehealthConnectionString %>" SelectCommand="SELECT Appointment.startDate, Physicians.firstName, Physicians.lastName, Physicians.field, Facilities.name, Facilities.address, Facilities.state, Facilities.city, Facilities.zip, Facilities.phone FROM Appointment INNER JOIN Physicians ON Appointment.pID = Physicians.pID INNER JOIN Facilities ON Appointment.fID = Facilities.fID AND Physicians.fID = Facilities.fID WHERE (Appointment.userName = @userName)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="Label1" Name="userName" PropertyName="Text"/>
                </SelectParameters>
            </asp:SqlDataSource>

            <hgroup class="title">
                <h1>My Appointments</h1>          
            </hgroup>

            <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CssClass="appoint-results" AlternatingRowStyle-CssClass="alt" PagerStyle-CssClass="pgr" >
                <Columns>
                    <asp:BoundField DataField="startDate" HeaderText="Date" SortExpression="startDate" DataFormatString="{0:g}" />
                    <asp:BoundField DataField="firstName" HeaderText="Name" SortExpression="firstName" />
                    <asp:BoundField DataField="lastName" HeaderText="" SortExpression="lastName" />
                    <asp:BoundField DataField="field" HeaderText="Field" SortExpression="fiend" />
                    <asp:BoundField DataField="name" HeaderText="Location" SortExpression="name" />
                    <asp:HyperLinkField DataNavigateUrlFields="address" DataNavigateUrlFormatString="~/Account/Facility.aspx?dest={0}" DataTextField="address"/>
                    <asp:BoundField DataField="state" HeaderText="" SortExpression="state" />
                    <asp:BoundField DataField="city" HeaderText="" SortExpression="city" />
                    <asp:BoundField DataField="zip" HeaderText="" SortExpression="zip" />
                    <asp:BoundField DataField="phone" HeaderText="Contact" SortExpression="phone" />
                </Columns>
            </asp:GridView>

        </div>
    </div>
</asp:Content>
