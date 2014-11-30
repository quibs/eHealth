<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Facility.aspx.cs" Inherits="eHealth.Account.Facility" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">

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

            var control = document.getElementById('control');
            control.style.display = 'block';


        }


        function calcRoute() {
            var start = document.getElementById('startvalue').value;
            var end = document.getElementById('<%= endvalue.ClientID %>').value;
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
        <div style="padding-top: 1px">
            <h1>Locate a Facility</h1>
        </div>

        <table id ="control">
        <tr>
            <td>
                <table>
                    <tr>
                        <td>From:</td>
                        <td><input id="startvalue" type="text" style="width: 300px" value="" />
                        </td>
                        
                    </tr>
                    <tr>
                        <td>To:</td>
                        <td><asp:TextBox ID="endvalue" runat="server"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td style="text-align: center"><input id="Button2" type="button" value="Get Directions" onclick="return Button1_onclick()" /></td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
                <div id ="directionpanel"  style="height: 300px;overflow: auto" ></div>
            </td>
            <td>
                <div id ="map-canvas" style="height: 400px; width: 500px"></div>
            </td>
        </tr>
        </table>



    </div>
</asp:Content>
