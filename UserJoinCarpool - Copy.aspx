<%@ Page Title="" Language="C#" MasterPageFile="~/UserMasterPage1.master" AutoEventWireup="true" CodeFile="UserJoinCarpool.aspx.cs" Inherits="UserJoinCarpool" %>

<%--<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>--%>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <%-- <div style="Width:1000px;text-align:left;padding-left: 200px;">--%>

         <asp:Label ID="Label9" runat="server" Font-Bold="True" ForeColor="BlueViolet" Font-Size = "X-Large"
            Text="Search Car Pool"></asp:Label>
        <br />
         <br />
             <asp:Label ID="Label10" runat="server" Text="Source:"></asp:Label>
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:DropDownList ID="DropDownList2" 
                 runat="server" Width="225px" Height="29px" ></asp:DropDownList>
         
     &nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label12" runat="server" Text="Destination:"></asp:Label>
        &nbsp;&nbsp;<asp:DropDownList ID="DropDownList1" 
                 runat="server" Width="225px" Height="29px" ></asp:DropDownList> &nbsp;&nbsp;<asp:Button 
                 ID="Button3" runat="server" Height="32px" Text="Search" onclick="Button3_Click"  
        Width="110px" class="ml-auto btn btn-primary"/>
         <br />
         <br />
         <br />
         <br />
<%--</div>--%>

<%--<div style="Width:1300px;text-align:left;padding-left: 200px;">--%>
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
                        <asp:BoundColumn DataField="dusername" HeaderText="Username"></asp:BoundColumn>
                        <asp:BoundColumn DataField="sdate" HeaderText="Start Date"></asp:BoundColumn>
                         <asp:BoundColumn DataField="ddate" HeaderText="End Date"></asp:BoundColumn>
                          <asp:BoundColumn DataField="vehicleno" HeaderText="Vehicle No"></asp:BoundColumn>
                           <asp:BoundColumn DataField="rdate" HeaderText="Registration"></asp:BoundColumn>
                         <asp:BoundColumn DataField="source" HeaderText="Source"></asp:BoundColumn>
                          <asp:BoundColumn DataField="destination" HeaderText="Destination"></asp:BoundColumn>
                           <asp:BoundColumn DataField="stime" HeaderText="Start Time"></asp:BoundColumn>
                         <asp:BoundColumn DataField="dtime" HeaderText="Stop Time"></asp:BoundColumn>
                          <asp:BoundColumn DataField="cost" HeaderText="Amount"></asp:BoundColumn>
                       <asp:ButtonColumn CommandName="Select" Text="Join"></asp:ButtonColumn>
                    </Columns>
                     <FooterStyle BackColor="White" ForeColor="#000066" />
                    <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                    <ItemStyle ForeColor="#000066" />
                    <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" 
                        Mode="NumericPages" />
                    <SelectedItemStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                </asp:DataGrid>
                 <br />
       <%--          </div>--%>
<%--
<div style="Width:1000px;text-align:left;padding-left: 200px;">--%>
     
         <asp:Label ID="Label8" runat="server" Font-Bold="True" ForeColor="Black" Font-Size = "X-Large"
            Text="Join Car Pool"></asp:Label> &nbsp;&nbsp;&nbsp;<asp:Label ID="Label27" runat="server" Font-Bold="True" ForeColor="Red" Font-Size = "Large"
            Text=""></asp:Label>
        <br />
         <br />
          <asp:Label ID="Label3" runat="server" Text="Username:"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox1" 
             runat="server" Height="26px" Width="225px" ontextchanged="TextBox1_TextChanged" 
             Enabled="False"></asp:TextBox> &nbsp;&nbsp;&nbsp;<asp:Label ID="lblmsg" runat="server"></asp:Label>
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label15" runat="server" Text="Starting Date:"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox12" runat="server"  
             Height="26px" Width="225px" Enabled="False" ></asp:TextBox>
         <br />
         <br />
        <asp:Label ID="Label14" runat="server" Text="Name:"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox 
             ID="TextBox8" runat="server"  Height="26px" Width="225px" Enabled="False"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  <asp:Label ID="Label16" runat="server" Text="Ending Date:"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox10" 
             runat="server"  Height="26px" Width="225px" Enabled="False" ></asp:TextBox>
             <br />
         <br />

        <asp:Label ID="Label4" runat="server" Text="Email ID:"></asp:Label>
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox 
             ID="TextBox2" runat="server"  Height="26px" Width="225px" Enabled="False"></asp:TextBox>
         
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label17" runat="server" Text="Source:"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox 
             ID="TextBox9" runat="server"  Height="26px" Width="225px" Enabled="False"></asp:TextBox>
         <br />
         <br />
         
        <asp:Label ID="Label5" runat="server" Text="Contact No:"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox3" 
             runat="server" Height="26px" Width="225px" Enabled="False"></asp:TextBox>
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label18" runat="server" Text="Destination:"></asp:Label>
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox7" 
             runat="server"  Height="26px" Width="225px" Enabled="False"></asp:TextBox>
        <br />
         <br />
        <asp:Label ID="Label7" runat="server" Text="Car Pool Name:"></asp:Label>
       <asp:TextBox ID="TextBox5" runat="server" Width="225px"  Height="26px" 
             Enabled="False" ></asp:TextBox> 
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label19" runat="server" Text="Available Seats:"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox11" runat="server"  
             Height="26px" Width="225px" Enabled="False" ></asp:TextBox>
             <br />
         <br />    
         <asp:Label ID="Label1" runat="server" Text="Vehicle Reg No:"></asp:Label>
       <asp:TextBox ID="TextBox4" runat="server" Width="225px"  Height="26px" 
             Enabled="False"></asp:TextBox> 
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label2" runat="server" Text="Join Date:"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox 
             ID="TextBox6" runat="server"  Height="26px" Width="225px" Enabled="False" ></asp:TextBox>
             <br />
         <br />  
          <asp:Label ID="Label13" runat="server" Text="Gender:"></asp:Label>
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox13" runat="server" Width="225px"  Height="26px" 
             Enabled="False"></asp:TextBox>  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label20" runat="server" Text="Amount:"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox 
             ID="TextBox14" runat="server"  Height="26px" Width="225px" Enabled="False" ></asp:TextBox>
             <br />
         <br />  
         <asp:Label ID="Label25" runat="server" Text="Ticket For:"></asp:Label>
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox16" runat="server" Width="225px"  Height="26px" ></asp:TextBox>  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label26" runat="server" Text="Contact No:"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox 
             ID="TextBox18" runat="server"  Height="26px" Width="225px" ></asp:TextBox>
             <br />
         <br />  
           <asp:Label ID="Label23" runat="server" Text="Boarding:"></asp:Label>
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:DropDownList ID="DropDownList3" 
                 runat="server" Width="225px" Height="29px" AutoPostBack="True" 
        onselectedindexchanged="DropDownList3_SelectedIndexChanged" >
        <asp:ListItem>SELECT</asp:ListItem>
    </asp:DropDownList> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label 
        ID="Label24" runat="server" Text="Selected Boarding"></asp:Label>
        <asp:TextBox 
             ID="TextBox15" runat="server"  Height="26px" Width="225px" Enabled="False" ></asp:TextBox>
                 <br />
         <br />  
         <asp:Label ID="Label22" runat="server" Text="Route:"></asp:Label>
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox17" runat="server" Width="610px"  Height="50px" 
             Enabled="False"></asp:TextBox>
                <br />
         <br />  
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button 
                 ID="Button1" runat="server" Height="32px" Text="Join" onclick="Button1_Click"  
        Width="110px" class="ml-auto btn btn-primary"/> &nbsp;&nbsp;<asp:Button ID="Button2" 
                 runat="server" Height="32px" Text="Cancel"   
        Width="112px" onclick="Button2_Click" class="ml-auto btn btn-primary"/>
        <br />
        <br />
         <asp:Label ID="Label11" runat="server" Visible="False"></asp:Label>
          <br />
        <br />
         <asp:Label ID="Label21" runat="server" Visible="False" Font-Bold="True" 
             Font-Names="Arial" Font-Size="X-Large" ForeColor="#0033CC"></asp:Label>
<%--          </div>--%>
</asp:Content>

