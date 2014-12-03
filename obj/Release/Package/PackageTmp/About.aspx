<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="eHealth.About" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1><%: Title %></h1>
        <h2></h2>
    </hgroup>

    <article>
        <p>        
            <b>Disclaimer:</b> eHealth is a project for Weider Yu's CMPE/SE 
            137 Class at San Jose State University. All physician names and 
            professions are fictional. This site is for educational purposes 
            only. No copyright infringement intended.  
        </p>
    </article>

    <aside>
        <h3>Quick Links</h3>
        <ul>
            <li><a runat="server" href="http://engineering.sjsu.edu/" target="_blank">Engineering @ SJSU</a></li>
            <li><a runat="server" href="https://www.healthcare.gov/" target="_blank">HealthCare.gov</a></li>
        </ul>
    </aside>
</asp:Content>