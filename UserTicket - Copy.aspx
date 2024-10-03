<%@ Page Title="" Language="C#" MasterPageFile="~/UserMasterPage1.master" AutoEventWireup="true" CodeFile="UserTicket.aspx.cs" Inherits="UserTicket" %>

<%--<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>--%>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


<%--<div style="Width:1000px;text-align:left;padding-left: 200px;">--%>
   <asp:Label ID="Label9" runat="server" Font-Bold="True" ForeColor="Black" Font-Size = "X-Large"
            Text="View Ticket"></asp:Label>
        <br />
         <br />
             <asp:Label ID="Label10" runat="server" Text="Ticket No:"></asp:Label>
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox1" runat="server" Height="26px" Width="225px"></asp:TextBox>&nbsp;<asp:Button 
                 ID="Button3" runat="server" Height="32px" Text="Submit" onclick="Button1_Click"  
        Width="110px" class="ml-auto btn btn-primary"/> &nbsp;&nbsp;<%--<asp:Button 
                 ID="Button1" runat="server" Height="32px" Text="Print" onclick="Button2_Click"  
        Width="110px" class="ml-auto btn btn-primary"/>--%>
<br />
<br />

                 <asp:DataGrid ID="dgpublic" runat="server" AllowPaging="True" 
                    AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" 
                    BorderStyle="None" BorderWidth="1px" CellPadding="3" 
             DataKeyField="jpid" Width="830px" 
             onselectedindexchanged="dgpublic_SelectedIndexChanged" >
                    <Columns>
                        <asp:BoundColumn DataField="jpid" HeaderText="Ticket No"></asp:BoundColumn>
                        <asp:BoundColumn DataField="cpname" HeaderText="Pool Name"></asp:BoundColumn>
                        <asp:BoundColumn DataField="dusername" HeaderText="Driver Name"></asp:BoundColumn>
                        <asp:BoundColumn DataField="uuname" HeaderText="User Name"></asp:BoundColumn>
                        <asp:BoundColumn DataField="source" HeaderText="Source"></asp:BoundColumn>
                         <asp:BoundColumn DataField="destination" HeaderText="Destination"></asp:BoundColumn>
                           <asp:BoundColumn DataField="distance" HeaderText="Distance"></asp:BoundColumn>
                            <asp:BoundColumn DataField="bpoint" HeaderText="Boarding"></asp:BoundColumn>
                      
                    </Columns>
                            <FooterStyle BackColor="White" ForeColor="#000066" />
                            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                            <ItemStyle ForeColor="#000066" />
                            <PagerStyle BackColor="White" ForeColor="#000066" 
                        HorizontalAlign="Left" Mode="NumericPages" />
                            <SelectedItemStyle BackColor="#669999" Font-Bold="True" 
                        ForeColor="White" />
                </asp:DataGrid>
           <%--     </div>--%>

</asp:Content>

