<%@ Page Title="" Language="C#" MasterPageFile="~/VisitorMasterPage.master" AutoEventWireup="true" CodeFile="UserRegistration.aspx.cs" Inherits="UserRegistration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

         <div style="Width:1000px;text-align:left;padding-left: 200px;">
     
         <asp:Label ID="Label8" runat="server" Font-Bold="True" ForeColor="BlueViolet" Font-Size = "X-Large"
            Text="Customer Registration"></asp:Label>
        <br />
         <br />
          <asp:Label ID="Label3" runat="server" Text="Username:"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox1" runat="server" Height="26px" Width="225px" ontextchanged="TextBox1_TextChanged"></asp:TextBox> &nbsp;&nbsp;&nbsp;<asp:Label ID="lblmsg" runat="server"></asp:Label>
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label15" runat="server" Text="Gender:"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:DropDownList ID="DropDownList6" 
                 runat="server" Width="225px" Height="29px" ></asp:DropDownList>
         <br />
         <br />
        <asp:Label ID="Label14" runat="server" Text="Name:"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox8" runat="server"  Height="26px" Width="225px"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  <asp:Label ID="Label16" runat="server" Text="Contact No:"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox10" runat="server"  Height="26px" Width="225px" ></asp:TextBox>
             <%--<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                 ErrorMessage="*" ForeColor="#FF5050" ControlToValidate="TextBox10"></asp:RegularExpressionValidator>--%>
             <br />
         <br />

        <asp:Label ID="Label4" runat="server" Text="Email ID:"></asp:Label>
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox2" runat="server"  Height="26px" Width="225px"></asp:TextBox>
         <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="*" ForeColor="Red" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label17" runat="server" Text="DOB:"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:DropDownList ID="DropDownList7" 
                 runat="server" Width="65px" Height="29px" ></asp:DropDownList><asp:DropDownList ID="DropDownList8" 
                 runat="server" Width="65px" Height="29px"></asp:DropDownList><asp:DropDownList ID="DropDownList9" 
                 runat="server" Width="95px" Height="29px"></asp:DropDownList>
         <br />
         <br />
         
        <asp:Label ID="Label5" runat="server" Text="Password:"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox3" runat="server" Height="26px" Width="225px" TextMode="Password"></asp:TextBox>
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label18" runat="server" Text="Security Question:"></asp:Label>
       &nbsp;&nbsp;&nbsp;<asp:DropDownList ID="DropDownList10" 
                 runat="server" Width="225px" Height="29px">
             </asp:DropDownList>
        <br />
         <br />
        <asp:Label ID="Label7" runat="server" Text="Confirm Password:"></asp:Label>
       <asp:TextBox ID="TextBox5" runat="server" Width="225px"  Height="26px" TextMode="Password"></asp:TextBox> 
       &nbsp;&nbsp;&nbsp;<asp:CompareValidator ID="CompareValidator1" runat="server" 
                 ControlToCompare="TextBox3" ControlToValidate="TextBox5" ErrorMessage="*" 
                 ForeColor="Red"></asp:CompareValidator>
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label19" runat="server" Text="Answer:"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox11" runat="server"  Height="26px" Width="225px" ></asp:TextBox>
             <br />
         <br />      
       <asp:Label ID="Label10" runat="server" Text="Address:"></asp:Label>
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox7" 
                 runat="server" Width="225px" Height="40px" TextMode="MultiLine"></asp:TextBox>
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <asp:Label ID="Label1" runat="server" Text="Company Details:"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox4" runat="server" Height="26px" Width="225px" ></asp:TextBox> 
        <br />
        <br />
          <asp:Label ID="Label12" runat="server" Text="Uplod Image:"></asp:Label>             
             <div style="margin-top:-18px;margin-left:125px;"> 
                 <asp:FileUpload ID="FileUpload4" runat="server" Width="231px" Height="29px" 
                     onload="FileUpload4_Load" style="margin-left: 0px"/> 
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                 ControlToValidate="FileUpload4" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator></div>&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button 
                 ID="Button3" runat="server" Height="32px" Text="Submit" onclick="Button1_Click"  
        Width="110px"/> &nbsp;&nbsp;<asp:Button ID="Button4" 
                 runat="server" Height="32px" Text="Cancel"   
        Width="112px" onclick="Button2_Click"/>
        
        <br />
        <br />
         <asp:Label ID="Label11" runat="server" Visible="False"></asp:Label>
          </div>
</asp:Content>

