<%@ Page Title="" Language="C#" MasterPageFile="~/UserMasterPage1.master" AutoEventWireup="true" CodeFile="UserSearchPooler.aspx.cs" Inherits="UserSearchPooler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label9" runat="server" Font-Bold="True" ForeColor="BlueViolet" Font-Size = "X-Large"
            Text="User Search Pooler"></asp:Label>
        <br />
         <br />
             <asp:Label ID="Label10" runat="server" Text="Pooler UserName"></asp:Label>
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox1" runat="server" Height="26px" Width="225px"></asp:TextBox>&nbsp;<asp:Button 
                 ID="Button3" runat="server" Height="32px" Text="Submit" onclick="Button1_Click"  
        Width="110px" class="ml-auto btn btn-primary"/> &nbsp;&nbsp;<br />
<br />

</asp:Content>

