<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="eHealth.Contact" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1><%: Title %> Us.</h1>
        <h2></h2>
    </hgroup>

    <section class="contact">
        <header>
            <h3>Phone:</h3>
        </header>
        <p>
            <span class="label">San Jose State University:</span>
            <span>(408) 924-1000</span>
        </p>
    </section>

    <section class="contact">
        <header>
            <h3>Email:</h3>
        </header>
        <p>
            <span class="label">Qui Trinh:</span>
            <span>qui.trinh@sjsu.edu</span>
        </p>
        <p>
            <span class="label">Matt Reiss:</span>
            <span>matt.reiss@sjsu.edu</span>
        </p>
        <p>
            <span class="label">Jordan Petersen:</span>
            <span>jordan.petersen@sjsu.edu</span>
        </p>
        <p>
            <span class="label">Sarmad Syed:</span>
            <span>sarmad.syed@sjsu.edu</span>
        </p>
        <p>
            <span class="label">Weider Yu:</span>
            <span>weider.yu@sjsu.edu</span>
        </p>
    </section>

    <section class="contact">
        <header>
            <h3>Address:</h3>
        </header>
        <p>
            San Jose State University<br />
            One Washington Square<br />
            San Jose, CA 95192
        </p>
    </section>
</asp:Content>