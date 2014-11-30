<%@ Page Title="Make an Appointment" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Appointment.aspx.cs" Inherits="eHealth.Account.Appointment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <div class="content-wrapper">
        <div>


            <div class="float-right">
            <img class="auto-size" src="appointment-pic3.jpg" />
            </div>

            <div class ="float-left">
                <h1>Make an Appointment</h1>
                <p>One appointment per physician. Conflicting appointments are not allowed.</p>
            <table>
                <tr>
                    <td><asp:Label ID="Label2" runat="server" Text="User name" Visible="False"></asp:Label></td>
                    <td><asp:LoginName ID="LoginName1" runat="server" Visible="False"  /></td>
                </tr>
                <tr>
                    <td><asp:Label ID="Label1" runat="server" Text="Physician ID"></asp:Label></td>
                    <td style ="text-align: right"><asp:TextBox ID="TextBox1" runat="server" Width="64px"></asp:TextBox></td>
                </tr>
            <!--
            <tr>
                <td><asp:Label ID="Label3" runat="server" Text="Physician last name"></asp:Label></td>
                <td><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
            </tr>
            -->
            <tr>
                <td><asp:Label ID="Label4" runat="server" Text="Month"></asp:Label></td>
                <td style ="text-align: right">
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem Value="01">January (01)</asp:ListItem>
                    <asp:ListItem Value="02">February (02)</asp:ListItem>
                    <asp:ListItem Value="03">March (03)</asp:ListItem>
                    <asp:ListItem Value="04">April (04)</asp:ListItem>
                    <asp:ListItem Value="05">May (05)</asp:ListItem>
                    <asp:ListItem Value="06">June (06)</asp:ListItem>
                    <asp:ListItem Value="07">July (07)</asp:ListItem>
                    <asp:ListItem Value="08">August (08)</asp:ListItem>
                    <asp:ListItem Value="09">September (09)</asp:ListItem>
                    <asp:ListItem Value="10">October (10)</asp:ListItem>
                    <asp:ListItem Value="11">November (11)</asp:ListItem>
                    <asp:ListItem Value="12">December (12)</asp:ListItem>
                </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td><asp:Label ID="Label5" runat="server" Text="Day"></asp:Label></td>
                <td style ="text-align: right"><asp:TextBox ID="TextBox3" runat="server" Width="64px"></asp:TextBox></td>
            </tr>
            <tr>
                <td><asp:Label ID="Label6" runat="server" Text="Year"></asp:Label></td>
                <td style ="text-align: right">
                <asp:DropDownList ID="DropDownList2" runat="server">
                    <asp:ListItem>2015</asp:ListItem>
                </asp:DropDownList> 
            </td>
            </tr>
            <tr>
                <td><asp:Label ID="Label7" runat="server" Text="Time"></asp:Label></td>
                <td style ="text-align: right"><asp:DropDownList ID="DropDownList3" runat="server">
                    <asp:ListItem Value="8">8:00 AM</asp:ListItem>
                    <asp:ListItem Value="9">9:00 AM</asp:ListItem>
                    <asp:ListItem Value="10">10:00 AM</asp:ListItem>
                    <asp:ListItem Value="11">11:00 AM</asp:ListItem>
                    <asp:ListItem Value="12">12:00 PM</asp:ListItem>
                    <asp:ListItem Value="1">1:00 PM</asp:ListItem>
                    <asp:ListItem Value="2">2:00 PM</asp:ListItem>
                    <asp:ListItem Value="3">3:00 PM</asp:ListItem>
                    <asp:ListItem Value="4">4:00 PM</asp:ListItem>
                    <asp:ListItem Value="5">5:00 PM</asp:ListItem>
                </asp:DropDownList>
                </td>
            </tr>
            </table>
                <div class="float-center">
                <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" /> 
            </div>

            </div>
               

            

        </div>



    </div>



</asp:Content>
