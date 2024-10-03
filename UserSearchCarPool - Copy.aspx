<%@ Page Title="" Language="C#" MasterPageFile="~/UserMasterPage1.master" AutoEventWireup="true" CodeFile="UserSearchCarPool.aspx.cs" Inherits="UserSearchCarPool" %>

<%--<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>--%>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <%--<div style="Width:1000px;text-align:left;padding-left: 200px;">--%>

         <asp:Label ID="Label9" runat="server" Font-Bold="True" ForeColor="Black" Font-Size = "X-Large"
            Text="Search Car Pool"></asp:Label>
        <br />
         <br />
             <asp:Label ID="Label10" runat="server" Text="Source:"></asp:Label>
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:DropDownList ID="DropDownList2" 
                 runat="server" Width="225px" Height="29px" ></asp:DropDownList>
         
     &nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label12" runat="server" Text="Destination:"></asp:Label>
        &nbsp;&nbsp;<asp:DropDownList ID="DropDownList1" 
                 runat="server" Width="225px" Height="29px" 
             onselectedindexchanged="DropDownList1_SelectedIndexChanged" ></asp:DropDownList> &nbsp;&nbsp;<asp:Button 
                 ID="Button3" runat="server" Height="32px" Text="Search" onclick="Button3_Click"  
        Width="110px" class="ml-auto btn btn-primary"/>
         <br />
         <br />

        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
         <br />
<%--</div>--%>

<%--<div style="Width:1000px;text-align:left;padding-left: 200px;">--%>
 <asp:Label ID="Label6" runat="server" Font-Bold="True" ForeColor="Black" Font-Size = "X-Large"
            Text="Result Carpool "></asp:Label>
        <br />
         <br />
       <asp:DataGrid ID="dgpublic" runat="server"  
                    AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" 
                    BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyField="cpid"  
                                PageSize="5" Width="930px" 
             onselectedindexchanged="dgpublic_SelectedIndexChanged" 
             ondeletecommand="dgpublic_DeleteCommand" >
                    <Columns>
                        <asp:BoundColumn DataField="cpid" HeaderText="Pool Code"></asp:BoundColumn>
                        <asp:BoundColumn DataField="cpname" HeaderText="Pool Name"></asp:BoundColumn>
                        <asp:BoundColumn DataField="dusername" HeaderText="Driver Code"></asp:BoundColumn>
                        <asp:BoundColumn DataField="sdate" HeaderText="Start Date"></asp:BoundColumn>
                         <asp:BoundColumn DataField="ddate" HeaderText="End Date"></asp:BoundColumn>
                          <asp:BoundColumn DataField="vehicleno" HeaderText="Vehicle No"></asp:BoundColumn>
                           <asp:BoundColumn DataField="rdate" HeaderText="Registration"></asp:BoundColumn>
                         <asp:BoundColumn DataField="source" HeaderText="Source"></asp:BoundColumn>
                          <asp:BoundColumn DataField="destination" HeaderText="Destination"></asp:BoundColumn>
                           <asp:BoundColumn DataField="stime" HeaderText="Start Time"></asp:BoundColumn>
                         <asp:BoundColumn DataField="dtime" HeaderText="Stop Time"></asp:BoundColumn>
                       <%--<asp:ButtonColumn CommandName="Select" Text="Join"></asp:ButtonColumn>--%>
                    </Columns>
                     <FooterStyle BackColor="White" ForeColor="#000066" />
                    <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                    <ItemStyle ForeColor="#000066" />
                    <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" 
                        Mode="NumericPages" />
                    <SelectedItemStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                </asp:DataGrid>
                 <br />
                <%-- </div>--%>

</asp:Content>

