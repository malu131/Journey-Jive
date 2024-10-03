<%@ Page Title="" Language="C#" MasterPageFile="~/UserMasterPage1.master" AutoEventWireup="true" CodeFile="UserViewMessage.aspx.cs" Inherits="UserViewMessage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="Width:1300px;text-align:left;padding-left: 50px;">

  <asp:Label ID="Label2" runat="server" Font-Bold="True" 
            Text="Inbox "></asp:Label>
        <br />
         <br />
        <asp:DataGrid ID="dgpublic" runat="server" AllowPaging="True" 
                    AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" 
                    BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyField="compid"  
                                PageSize="5" Width="830px" >
                    <Columns>
                        <asp:BoundColumn DataField="compid" HeaderText="Complaint ID"></asp:BoundColumn>
                        <asp:BoundColumn DataField="senderid" HeaderText="Sender"></asp:BoundColumn>
                        <asp:BoundColumn DataField="sub" HeaderText="Subject"></asp:BoundColumn>
                        <asp:BoundColumn DataField="msg" HeaderText="Message"></asp:BoundColumn>
                         <asp:BoundColumn DataField="date1" HeaderText="Send Date"></asp:BoundColumn>
                       
                    </Columns>
                            <FooterStyle BackColor="White" ForeColor="#000066" />
                            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                            <ItemStyle ForeColor="#000066" />
                            <PagerStyle BackColor="White" ForeColor="#000066" 
                        HorizontalAlign="Left" Mode="NumericPages" />
                            <SelectedItemStyle BackColor="#669999" Font-Bold="True" 
                        ForeColor="White" />
                </asp:DataGrid>
                 <br />
        
         </div>

</asp:Content>

