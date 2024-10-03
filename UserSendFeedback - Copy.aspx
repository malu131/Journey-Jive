<%@ Page Title="" Language="C#" MasterPageFile="~/UserMasterPage1.master" AutoEventWireup="true" CodeFile="UserSendFeedback.aspx.cs" Inherits="UserSendFeedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

     <div class="form-w3agile form1">
  <asp:Label ID="Label2" runat="server"  Font-Bold="True" ForeColor="Black" Font-Size = "X-Large" 
            Text="Send Feedback"></asp:Label>
        <br />
         <br />

         <div style="Width:500px;text-align:left">
           <asp:Label ID="Label1" runat="server" Text="Driver Uname:"></asp:Label>
        &nbsp;<asp:TextBox ID="TextBox2" runat="server" Width="275px"></asp:TextBox>
        <br />
        <br />
          <asp:Label ID="Label3" runat="server" Text="Pool Name:"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox1" runat="server" Width="275px"></asp:TextBox>
        <br />
        <br />
         <asp:Label ID="Label6" runat="server" Text="Feedback:"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox4" runat="server" Width="275px" 
                 Height="100px" TextMode="MultiLine"></asp:TextBox>
        <br />
         <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button 
                 ID="Button1" runat="server" Height="32px" Text="Register"   
        Width="275px"  onclick="Button1_Click" class="ml-auto btn btn-primary"/>
        <br />
        <br />
         <asp:Label ID="Label11" runat="server" Visible="False"></asp:Label>
        </div>
         </div>
</asp:Content>

