<%@ Page Title="" Language="C#" MasterPageFile="~/UserMasterPage1.master" AutoEventWireup="true" CodeFile="UserRatingPool.aspx.cs" Inherits="UserRatingPool" %>

<%--<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>--%>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<%--<div style="Width:1300px;text-align:left;padding-left: 200px;">--%>

    <div class="form-w3agile form1">
         <asp:Label ID="Label1" runat="server" Text=" "></asp:Label>
        <asp:Label ID="Label2" runat="server" Font-Bold="True" ForeColor="Black" Font-Size="X-Large"
            Text="User Pool Details "></asp:Label>
        <asp:DataGrid ID="dgpublic" runat="server"  
                    AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" 
                    BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyField="jpid"  
                                PageSize="5" Width="930px" 
             onselectedindexchanged="dgpublic_SelectedIndexChanged" 
             ondeletecommand="dgpublic_DeleteCommand" >
                    <Columns>
                        <asp:BoundColumn DataField="jpid" HeaderText="Pool Code"></asp:BoundColumn>
                        <asp:BoundColumn DataField="cpname" HeaderText="Pool Name"></asp:BoundColumn>
                        <asp:BoundColumn DataField="dusername" HeaderText="Driver Username"></asp:BoundColumn>
                        <asp:BoundColumn DataField="source" HeaderText="Start Date"></asp:BoundColumn>
                         <asp:BoundColumn DataField="destination" HeaderText="End Date"></asp:BoundColumn>
                          <asp:BoundColumn DataField="distance" HeaderText="Distance"></asp:BoundColumn>
                           <asp:BoundColumn DataField="ndays" HeaderText="No of days"></asp:BoundColumn> 
                       <asp:ButtonColumn CommandName="Select" Text="Rate"></asp:ButtonColumn>
                  
                    </Columns>
                     <FooterStyle BackColor="White" ForeColor="#000066" />
                    <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                    <ItemStyle ForeColor="#000066" />
                    <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" 
                        Mode="NumericPages" />
                    <SelectedItemStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                </asp:DataGrid>
                 <br />
                  <br />
                   <asp:Label ID="Label10" runat="server" Text="Rating:"></asp:Label>
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:DropDownList ID="DropDownList2" 
                 runat="server" Width="225px" Height="29px" AutoPostBack="True" 
             onselectedindexchanged="DropDownList2_SelectedIndexChanged" ></asp:DropDownList>
         

        
         </div>
<%--         </div>--%>
</asp:Content>

