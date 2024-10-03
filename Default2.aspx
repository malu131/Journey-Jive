<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <textarea id="txtAddress" rows="3" cols="25"></textarea>
    <br />
    <input type="button" onclick="GetLocation()" value="Get Location" />
     <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBsVO8WE0nP0dD5aoHMqI0NmO84SXhu32s&libraries=places"></script>
    <script type="text/javascript">
    <!--
        function GetLocation() {
            var geocoder = new google.maps.Geocoder();
            var address = document.getElementById("txtAddress").value;
            geocoder.geocode({ 'address': address }, function (results, status) {
                if (status == google.maps.GeocoderStatus.OK) {
                    var latitude = results[0].geometry.location.lat();
                    var longitude = results[0].geometry.location.lng();
                    alert("Latitude: " + latitude + "\nLongitude: " + longitude);
                } else {
                    alert("Request failed.")
                }
            });
        };
        //-->
    </script>
</body>
    <br />
    </div>
    </form>
</body>
</html>
