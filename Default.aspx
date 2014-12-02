<%@ Page Title="Home" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="eHealth._Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <section class="featured">

        <div class="content-wrapper">
            <div class="center">
                <img class="auto-size" src="Account/home-pic.jpg" />
            </div>
            <hgroup class="title" style="text-align: center">
                <h1>Welcome to eHealth</h1>
            </hgroup>
            <!--
            <p>
                To learn more about ASP.NET, visit <a href="http://asp.net" title="ASP.NET Website">http://asp.net</a>.
                The page features <mark>videos, tutorials, and samples</mark> to help you get the most from ASP.NET.
                If you have any questions about ASP.NET visit
                <a href="http://forums.asp.net/18.aspx" title="ASP.NET Forum">our forums</a>.
            </p>
            -->
        </div>

    </section>
</asp:Content>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    
    <div>
    <h2>Getting Started:</h2>
    <ol class="round">
        <li class="one">
            <h5>Registration</h5>
            <a href="~/Account/Register">Register</a> for an account to get instant access to eHealth!
        </li>
        <li class="two">
            <h5>Physician</h5>
            Find the <a href="~/Account/Physician">physician</a> that is right for you.
        </li>
        <li class="three">
            <h5>Appointment</h5>
            Book an <a href="~/Account/Appointment">appointment</a> after you've found your physician.
        </li>
    </ol>
    </div>
</asp:Content>
