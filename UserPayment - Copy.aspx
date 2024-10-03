<%@ Page Title="" Language="C#" MasterPageFile="~/UserMasterPage1.master" AutoEventWireup="true" CodeFile="UserPayment.aspx.cs" Inherits="UserPayment" %>

<%--<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>--%>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <div style="Width:1180px;text-align:left;padding-left: 300px;">
   <table class="style1">
  <tr>
   
    <th style="width:50%;font-size: 200%;color: Black; border-style:groove">CUSTOMER DETAILS</th>
    <th style="width:50%;font-size: 200%;color: Black; border-style:groove">PAYMENT DETAILS</th>
  </tr>
  <tr>
 
    <td>
   <br />
        <br />
    <asp:Label ID="Label8" runat="server" Font-Bold="True" ForeColor="Black" Font-Size = "Large"
            Text="ID  :"></asp:Label>  &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label 
            ID="Label2" runat="server" Font-Bold="True" ForeColor="#000099" 
            Font-Size = "Large"></asp:Label>
        <br />
         <br />
         <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="Black" Font-Size = "Large"
            Text="poolid  :"></asp:Label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label3" runat="server" Font-Bold="True" ForeColor="#000099" 
            Font-Size = "Large"></asp:Label>
        <br />
        <br />
       <asp:Label ID="Label10" runat="server" Font-Bold="True" ForeColor="Black" Font-Size = "Large"
            Text="Pool Name  : "></asp:Label>
        &nbsp;&nbsp; 
        <asp:Label ID="Label11" runat="server" Font-Bold="True" ForeColor="#000099" 
            Font-Size = "Large"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label5" runat="server" Font-Bold="True" ForeColor="Black" Font-Size = "Large"
            Text="username  : "></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label9" 
            runat="server" Font-Bold="True" ForeColor="#000099" Font-Size = "Large"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label6" runat="server" Font-Bold="True" ForeColor="Black" Font-Size = "Large"
            Text="source : "></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label7" runat="server" Font-Bold="True" 
            ForeColor="#000099" Font-Size = "Large"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label21" runat="server" Font-Bold="True" ForeColor="Black" Font-Size = "Large"
            Text="destination  : "></asp:Label> &nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label22" runat="server" Font-Bold="True" ForeColor="#000099" 
            Font-Size = "Large"></asp:Label>
             <br />
              <br />
        <asp:Label ID="Label17" runat="server" Font-Bold="True" ForeColor="Black" Font-Size = "Large"
            Text="distance : "></asp:Label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label18" runat="server" Font-Bold="True" ForeColor="#0000CC" 
            Font-Size = "Large"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label19" runat="server" Font-Bold="True" ForeColor="Black" Font-Size = "Large"
            Text="Amount  : "></asp:Label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label20" runat="server" Font-Bold="True" ForeColor="#000099" 
            Font-Size = "Large"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label4" runat="server" Font-Bold="True" ForeColor="Black" Font-Size = "Large"
            Text="Date  : "></asp:Label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label16" runat="server" Font-Bold="True" ForeColor="#000099" 
            Font-Size = "Large"></asp:Label>
        
        
    
    </td>
    <td>
    <br />
         <br />
     <asp:Label ID="Label12" runat="server" Font-Bold="True" ForeColor="Black" Font-Size = "Large" Text="Credit/Debit Card No:"></asp:Label>
     <br />
       <asp:TextBox ID="TextBox2" runat="server" Height="40px" Width="300px" 
            MaxLength="16"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"  
ControlToValidate="TextBox2" ErrorMessage="Invalid"  
ValidationExpression="[0-9]{16}" ForeColor="#CC3300"></asp:RegularExpressionValidator>  
        <br />
         <br />
         
        <asp:Label ID="Label13" runat="server" Font-Bold="True" ForeColor="Black" Font-Size = "Large" Text="Valid Up To:"></asp:Label>
         <br />
        <asp:DropDownList ID="DropDownList7" 
                 runat="server" Width="155px" Height="45px" ></asp:DropDownList>&nbsp;&nbsp;&nbsp;<asp:DropDownList ID="DropDownList8" 
                 runat="server" Width="125px" Height="45px"></asp:DropDownList><br />
         <br />
        <asp:Label ID="Label14" runat="server" Font-Bold="True" ForeColor="Black" Font-Size = "Large" Text="CVV:"></asp:Label>
         <br />
       <asp:TextBox ID="TextBox5" runat="server" Height="40px" Width="300px" 
            MaxLength="3"></asp:TextBox><asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server"  
ControlToValidate="TextBox5" ErrorMessage="Invalid"  
ValidationExpression="[0-9]{3}" ForeColor="#CC3300"></asp:RegularExpressionValidator>  
        <br />
         <br />
         <asp:Label ID="Label15" runat="server" Font-Bold="True" ForeColor="Black" Font-Size = "Large" Text="Card Holder Name :"></asp:Label>
          <br />
        <asp:TextBox ID="TextBox6" runat="server" Height="40px" Width="300px"></asp:TextBox>
        <br />
         <br />
         <asp:Button 
                 ID="Button1" runat="server" Height="40px" Width="300px" Text="Submit"  
        
            
            
            
            
            onclick="Button1_Click" class="ml-auto btn btn-primary"/>

        <br />
<br />
 <asp:Label ID="Label23" runat="server" Visible="False"></asp:Label>
    </td>
  </tr>
  
  </table>
  </div>
</asp:Content>

