<%@ Page Title="" Language="C#" MasterPageFile="~/UserMasterPage1.master" AutoEventWireup="true" CodeFile="UserViewPooler.aspx.cs" Inherits="UserViewPooler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<style type="text/css">
        body
        {
            font-family: Arial;
            font-size: 12pt;
           
        }
    </style>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
    <script src='http://jquery-star-rating-plugin.googlecode.com/svn/trunk/jquery.rating.js'
        type="text/javascript"></script>
    <link rel="Stylesheet" href="http://jquery-star-rating-plugin.googlecode.com/svn/trunk/jquery.rating.css" />
    <script type="text/javascript">
        $(function () {
            GetRatings();
        });
        function GetRatings() {
            $.ajax({
                type: "POST",
                url: "UserViewPooler.aspx/GetRating",
                data: "{}",
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (response) {
                    var result = eval(response.d)[0];
                    if (result.Average > 0) {
                        $('.rating_star').eq(result.Average - 1).attr("checked", "checked");
                        $("#rating").html("Average Rating : " + result.Average + "<br/> <br/> Total No of Trip : " + result.Total);
                    }
                    ApplyPlugin();
                },
                failure: function (response) {
                    alert('There was an error.');
                }
            });
        }
        function ApplyPlugin() {
            $('.rating_star').rating({
                callback: function (value, link) {
                    $.ajax({
                        type: "POST",
                        url: "UserViewPooler.aspx/Rate",
                        data: "{rating: " + value + "}",
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function (response) {
                            GetRatings();
                            alert("Your rating has been saved.");
                        },
                        failure: function (response) {
                            alert('There was an error.');
                        }
                    });
                }
            });
        }
    </script>
 <%--   <div style="Width:1000px;text-align:left;padding-left: 200px;">--%>
     
         <asp:Label ID="Label8" runat="server" Font-Bold="True" ForeColor="Black" Font-Size = "X-Large"
            Text="Pooler Profile"></asp:Label>
        <br />
         <br />
         <div>
        <asp:DataList ID="DataList1" runat="server"
            Font-Names="Verdana" Font-Size="Small" 
            Width="150px" Height="100px">
            <HeaderStyle Font-Size="Large"
                HorizontalAlign="Center" VerticalAlign="Middle" />
            <HeaderTemplate>
            
                </HeaderTemplate>
            <ItemStyle BorderWidth="0px" Width="200px"/>
            <ItemTemplate>
                <asp:Image ID="imgEmp" runat="server" Width="150px" Height="100px" ImageUrl='<%# Bind("dphoto") %>' style="padding-left:40px"/>&nbsp;&nbsp;&nbsp; &nbsp; 
                <br />
            </ItemTemplate>
        </asp:DataList>
       </div>
          <asp:Label ID="Label3" runat="server" Text="Username:"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox1" runat="server" Height="26px" Width="225px"></asp:TextBox> &nbsp;&nbsp;&nbsp;<asp:Label ID="lblmsg" runat="server"></asp:Label>
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label15" runat="server" Text="Gender:"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox6" runat="server" Height="26px" Width="225px" ></asp:TextBox>
         <br />
         <br />
        <asp:Label ID="Label14" runat="server" Text="Name:"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox8" runat="server"  Height="26px" Width="225px"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  <asp:Label ID="Label16" runat="server" Text="Contact No:"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox10" runat="server"  Height="26px" Width="225px" ></asp:TextBox> 
             <br />
         <br />

        <asp:Label ID="Label4" runat="server" Text="Email ID:"></asp:Label>
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox2" runat="server"  Height="26px" Width="225px"></asp:TextBox>
         
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label17" runat="server" Text="DOB:"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox9" runat="server"  Height="26px" Width="225px"></asp:TextBox>
         <br />
         <br />
           
       <asp:Label ID="Label10" runat="server" Text="Address:"></asp:Label>
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox7" 
                 runat="server" Width="225px" Height="40px" TextMode="MultiLine"></asp:TextBox>
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <asp:Label ID="Label1" runat="server" Text="Company Details:"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox4" runat="server" Height="26px" Width="225px" ></asp:TextBox> 
        

         <div>
         <br />
         <br />
          <asp:Label ID="Label2" runat="server" Text="Pooler Rating:"></asp:Label>
          <br />
           <br />
        <input name="rating_star"  type="radio" class="rating_star"  value="1" style="height:35px; width:35px; vertical-align: middle;" />
        <input name="rating_star" type="radio" class="rating_star" value="2"  style="height:35px; width:35px; vertical-align: middle;"/>
        <input name="rating_star" type="radio" class="rating_star" value="3" style="height:35px; width:35px; vertical-align: middle; "/>
        <input name="rating_star" type="radio" class="rating_star" value="4" style="height:35px; width:35px; vertical-align: middle;"/>
        <input name="rating_star" type="radio" class="rating_star" value="5" style="height:35px; width:35px; vertical-align: middle;"/>
    </div>
    <br />
    <hr />
          
    <span id="rating" style="color:Green"></span>
    
         
         <asp:Label ID="Label11" runat="server" Visible="False"></asp:Label>
        
</asp:Content>

