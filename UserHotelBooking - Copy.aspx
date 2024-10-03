<%@ Page Title="" Language="C#" MasterPageFile="~/UserMasterPage1.master" AutoEventWireup="true" CodeFile="UserHotelBooking.aspx.cs" Inherits="UserHotelBooking" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label8" runat="server" Font-Bold="True" ForeColor="#CC3300" Font-Size = "X-Large"
            Text="Accomadation Registration" Font-Names="Arial"></asp:Label>
        <br />
         <br />
          <asp:Label ID="Label12" runat="server" Text="Booking Date:" 
        Font-Names="Arial" Font-Size="Medium" ForeColor="Black"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox13" runat="server" Height="26px" Width="225px"></asp:TextBox>
         <br />
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Calendar ID="Calendar2" runat="server" Width="350px" SelectionMode="DayWeekMonth" onselectionchanged="Calendar2_SelectionChanged"></asp:Calendar>
          <br />
           <asp:Label ID="Label3" runat="server" Text="Username:" Font-Names="Arial" 
        Font-Size="Medium" ForeColor="Black"></asp:Label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox1" runat="server" Height="26px" Width="225px"></asp:TextBox> &nbsp;&nbsp;&nbsp;<asp:Label 
        ID="lblmsg" runat="server" Font-Names="Arial" Font-Size="Medium" 
        ForeColor="White"></asp:Label>
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
    <asp:Label ID="Label15" runat="server" 
        Text="Location:" Font-Names="Arial" Font-Size="Medium" ForeColor="Black"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:DropDownList ID="DropDownList6" 
                 runat="server" Width="225px" Height="29px" AutoPostBack="True" 
        onselectedindexchanged="DropDownList6_SelectedIndexChanged" ></asp:DropDownList>
         <br />
         <br />
        <asp:Label ID="Label14" runat="server" Text="Name:" Font-Names="Arial" 
        Font-Size="Medium" ForeColor="Black"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox8" runat="server"  Height="26px" Width="225px"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  
    <asp:Label ID="Label16" runat="server" Text="Hotel Uname:" Font-Names="Arial" 
        Font-Size="Medium" ForeColor="Black"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:DropDownList ID="DropDownList2" 
                 runat="server" Width="225px" Height="29px" AutoPostBack="True" 
        onselectedindexchanged="DropDownList2_SelectedIndexChanged" ></asp:DropDownList>
             
             <br />
         <br />

        <asp:Label ID="Label4" runat="server" Text="Email ID:" Font-Names="Arial" 
        Font-Size="Medium" ForeColor="Black"></asp:Label>
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox2" runat="server"  Height="26px" Width="225px"></asp:TextBox>
         <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="*" ForeColor="Red" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
     <asp:Label ID="Label7" runat="server" Text="Room Type:" 
        Font-Names="Arial" Font-Size="Medium" ForeColor="Black"></asp:Label>
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:DropDownList ID="DropDownList3" 
                 runat="server" Width="225px" Height="29px" AutoPostBack="True" 
        onselectedindexchanged="DropDownList3_SelectedIndexChanged">
             </asp:DropDownList> 
         
        <br />
         <br />
    <asp:Label ID="Label5" runat="server" Text="Contact:" Font-Names="Arial" 
        Font-Size="Medium" ForeColor="Black"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox 
        ID="TextBox3" runat="server" Height="26px" Width="225px"></asp:TextBox>
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
       <asp:Label ID="Label19" 
        runat="server" Text="Facility:" Font-Names="Arial" Font-Size="Medium" 
        ForeColor="Black"></asp:Label>
        &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;<asp:DropDownList ID="DropDownList7" 
                 runat="server" Width="225px" Height="29px" AutoPostBack="True" 
        onselectedindexchanged="DropDownList7_SelectedIndexChanged">
             </asp:DropDownList> 
         
        &nbsp;&nbsp;&nbsp;<br />
         <br />   
         <asp:Label ID="Label1" runat="server" Text="No of Rooms" 
        Font-Names="Arial" Font-Size="Medium" ForeColor="Black"></asp:Label>
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:DropDownList ID="DropDownList8" 
                 runat="server" Width="225px" Height="29px" AutoPostBack="True" 
        onselectedindexchanged="DropDownList8_SelectedIndexChanged">
             </asp:DropDownList> 
         
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label2" 
        runat="server" Text="Hotel Name:" Font-Names="Arial" Font-Size="Medium" 
        ForeColor="Black"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox11" runat="server"  Height="26px" Width="225px" ></asp:TextBox>
             <br />
         <br />     
         <asp:Label ID="Label6" runat="server" Text="Room Price:" 
        Font-Names="Arial" Font-Size="Medium" ForeColor="Black"></asp:Label>
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox 
        ID="TextBox9" runat="server" Width="225px"  Height="26px"></asp:TextBox> 
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label9" 
        runat="server" Text="Total Price:" Font-Names="Arial" Font-Size="Medium" 
        ForeColor="Black"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox10" runat="server"  Height="26px" Width="225px" ></asp:TextBox>
             <br />
         <br />        
           <asp:Label ID="Label10" runat="server" Text="BreakFast" 
 Font-Names="Arial" Font-Size="Medium" ForeColor="Black"></asp:Label>
<asp:DropDownList ID="DropDownList1" 
          runat="server" Width="175px" Height="29px" AutoPostBack="True" 
 onselectedindexchanged="DropDownList1_SelectedIndexChanged">
      </asp:DropDownList> 
  <asp:Label ID="Label13" 
 runat="server" Text="Selected Food:" Font-Names="Arial" Font-Size="Medium" 
 ForeColor="Black"></asp:Label>
 &nbsp;<asp:TextBox ID="TextBox4" runat="server"  Height="26px" Width="200px" >NA</asp:TextBox>
    &nbsp;<asp:Label ID="Label22" 
 runat="server" Text="Price:" Font-Names="Arial" Font-Size="Medium" 
 ForeColor="Black"></asp:Label>
 &nbsp;<asp:TextBox ID="TextBox7" runat="server"  Height="26px" Width="100px" >0</asp:TextBox>
      <br />
  <br />     
      <asp:Label ID="Label17" runat="server" Text="Lunch" 
 Font-Names="Arial" Font-Size="Medium" ForeColor="Black"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:DropDownList ID="DropDownList4" 
          runat="server" Width="175px" Height="29px" AutoPostBack="True" 
 onselectedindexchanged="DropDownList4_SelectedIndexChanged">
      </asp:DropDownList> 
  
<asp:Label ID="Label18" 
 runat="server" Text="Selected Food:" Font-Names="Arial" Font-Size="Medium" 
 ForeColor="Black"></asp:Label>
 &nbsp;<asp:TextBox ID="TextBox5" runat="server"  Height="26px" Width="200px" >NA</asp:TextBox>
  &nbsp;<asp:Label ID="Label23" 
 runat="server" Text="Price:" Font-Names="Arial" Font-Size="Medium" 
 ForeColor="Black"></asp:Label>
 &nbsp;<asp:TextBox ID="TextBox12" runat="server"  Height="26px" Width="100px" >0</asp:TextBox>    
    <br />
  <br />     
      <asp:Label ID="Label20" runat="server" Text="Dinner" 
 Font-Names="Arial" Font-Size="Medium" ForeColor="Black"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:DropDownList ID="DropDownList5" 
          runat="server" Width="175px" Height="29px" AutoPostBack="True" 
 onselectedindexchanged="DropDownList5_SelectedIndexChanged">
      </asp:DropDownList> 
  <asp:Label ID="Label21" 
 runat="server" Text="Selected Food:" Font-Names="Arial" Font-Size="Medium" 
 ForeColor="Black"></asp:Label>
 &nbsp;<asp:TextBox ID="TextBox6" runat="server"  Height="26px" Width="200px" >NA</asp:TextBox>
   &nbsp;<asp:Label ID="Label24" 
 runat="server" Text="Price:" Font-Names="Arial" Font-Size="Medium" 
 ForeColor="Black"></asp:Label>
 &nbsp;<asp:TextBox ID="TextBox14" runat="server"  Height="26px" Width="100px" >0</asp:TextBox>   
    <br />
  <br />     
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button 
                 ID="Button3" runat="server" Height="32px" Text="Book" onclick="Button1_Click"  
        Width="110px" class="btn btn-primary"/> &nbsp;&nbsp;<asp:Button ID="Button4" 
                 runat="server" Height="32px" Text="Cancel"   
        Width="112px" onclick="Button2_Click" class="btn btn-primary"/>
        <br />
        <br />
         <asp:Label ID="Label11" runat="server" Visible="False" Font-Names="Arial" 
        Font-Size="Medium" ForeColor="Black"></asp:Label>
</asp:Content>

