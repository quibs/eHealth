<%@ Page Title="Locate a Facility" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Facility.aspx.cs" Inherits="eHealth.Account.Facility" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">

    <!-- code from http://www.codeproject.com/Articles/291499/Google-Maps-API-V-for-ASP-NET by S V Saichandra -->
    <script type="text/javascript">
        var directionsDisplay;
        var directionsService = new google.maps.DirectionsService();

        function InitializeMap() {
            directionsDisplay = new google.maps.DirectionsRenderer();
            var latlng = new google.maps.LatLng(37.297, -121.817);

            var myOptions =
            {
                zoom: 8,
                center: latlng,
                mapTypeId: google.maps.MapTypeId.ROADMAP
            };
            var map = new google.maps.Map(document.getElementById("map-canvas"), myOptions);

            directionsDisplay.setMap(map);
            directionsDisplay.setPanel(document.getElementById('directionpanel'));

            var control = document.getElementById('<%= control2.ClientID %>');
            //control.style.display = 'block';
        }

        function calcRoute() {
            var start = document.getElementById('<%= source.ClientID %>').value;
            var end = document.getElementById('<%= destination.ClientID %>').value;
            var request = {
                origin: start,
                destination: end,
                travelMode: google.maps.DirectionsTravelMode.DRIVING
            };
            directionsService.route(request, function (response, status) {
                if (status == google.maps.DirectionsStatus.OK) {
                    directionsDisplay.setDirections(response);
                }
            });

        }

        function Button1_onclick() {
            calcRoute();
        }

        window.onload = InitializeMap;
        </script>

    <div class="content-wrapper">
        <hgroup class="title">
            <h1><%: Title %></h1>
        </hgroup>

        <asp:Table ID="control2" runat="server" CssClass="facility-table">
        <asp:TableRow>
            <asp:TableCell><asp:Label ID="Label1" runat="server" Text="Starting Point: "></asp:Label></asp:TableCell>
            <asp:TableCell><asp:TextBox ID="source" runat="server" Width="300px"></asp:TextBox></asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell><asp:Label ID="Label2" runat="server" Text="Destination: "></asp:Label></asp:TableCell>
            <asp:TableCell><asp:TextBox ID="destination" runat="server" Width="300px"></asp:TextBox></asp:TableCell>
        </asp:TableRow>
        </asp:Table>

        <div class="center">
            <asp:Button ID="Button1" runat="server" Text="Get Directions" OnClientClick="Button1_onclick(); return false;" />
        

        <asp:Table runat="server" CssClass="facility-table" >
            <asp:TableRow>
                <asp:TableCell>
                    <div id ="directionpanel" style="height: 400px; width: 500px; display:inline" ></div>
                    <div id ="map-canvas" style="height: 400px; width: 550px"></div>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
            </div>
    </div>
</asp:Content>
