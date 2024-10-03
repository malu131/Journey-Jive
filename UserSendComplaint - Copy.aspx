<%@ Page Title="" Language="C#" MasterPageFile="~/UserMasterPage1.master" AutoEventWireup="true" CodeFile="UserSendComplaint.aspx.cs" Inherits="UserSendComplaint" %>

<%--<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>--%>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<%--<div style="Width:1300px;text-align:left;padding-left: 200px;">--%>
 <div class="form-w3agile form1">
  <asp:Label ID="Label2" runat="server"  Font-Bold="True" ForeColor="Black" Font-Size = "X-Large" 
            Text="Send Message"></asp:Label>
        <br />
         <br />

         <div style="Width:500px;text-align:left">
           <asp:Label ID="Label1" runat="server" Text="User Name:"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox2" runat="server" Width="275px"></asp:TextBox>
        <br />
        <br />
          <asp:Label ID="Label3" runat="server" Text="Subject:"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox1" runat="server" Width="275px"></asp:TextBox>
        <br />
        <br />
         <asp:Label ID="Label6" runat="server" Text="Complaints:"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox4" runat="server" Width="275px" 
                 Height="100px" TextMode="MultiLine"></asp:TextBox>
        <br />
         <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button 
                 ID="Button1" runat="server" Height="32px" Text="Register"   
        Width="275px"  onclick="Button1_Click" class="ml-auto btn btn-primary"/>
        <br />
        <br />
         <asp:Label ID="Label11" runat="server" Visible="False"></asp:Label>
        </div>
        <div style="Width:800px;text-align:left">
         <asp:DataGrid ID="dgdpublic" runat="server" 
                            AutoGenerateColumns="False" CellPadding="3" 
                            DataKeyField="compid" ForeColor="Black" 
                            PageSize="7" Width="830px" GridLines="Vertical" 
                BackColor="White" BorderColor="#999999" BorderStyle="Solid" 
                BorderWidth="1px">
                            <AlternatingItemStyle BackColor="#CCCCCC" />
                            <Columns>
                                <asp:BoundColumn DataField="compid" HeaderText="ID"></asp:BoundColumn>
                                <asp:BoundColumn DataField="sub" HeaderText="Subject"></asp:BoundColumn>
                                <asp:BoundColumn DataField="msg" HeaderText="Mail"></asp:BoundColumn>
                                <asp:BoundColumn DataField="date1" HeaderText="Send Date"></asp:BoundColumn>
                                 <asp:BoundColumn DataField="reply" HeaderText="Reply"></asp:BoundColumn>
                                  <asp:BoundColumn DataField="date2" HeaderText="Reply Date"></asp:BoundColumn>
                            </Columns>
                            <FooterStyle BackColor="#CCCCCC" />
                            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                            <SelectedItemStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                        </asp:DataGrid>

         </div>
  </div>
<%--        </div>--%>
</asp:Content>

