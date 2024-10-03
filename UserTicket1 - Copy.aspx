<%@ Page Title="" Language="C#" MasterPageFile="~/UserMasterPage1.master" AutoEventWireup="true" CodeFile="UserTicket1.aspx.cs" Inherits="UserTicket1" %>

<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=10.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<%--<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>--%>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <%--   <div style="Width:1000px;text-align:left;padding-left: 200px;">--%>
   <asp:Label ID="Label9" runat="server" Font-Bold="True" ForeColor="BlueViolet" Font-Size = "X-Large"
            Text="View Ticket"></asp:Label>
        <br />
         <br />
             <asp:Label ID="Label10" runat="server" Text="Ticket No:"></asp:Label>
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox1" runat="server" Height="26px" Width="225px"></asp:TextBox>&nbsp;<asp:Button 
                 ID="Button3" runat="server" Height="32px" Text="Submit" onclick="Button1_Click"  
        Width="110px" class="ml-auto btn btn-primary"/> &nbsp;&nbsp;<br />
<br />

                  <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <br />
    <rsweb:ReportViewer ID="ReportViewer1" runat="server" Font-Names="Verdana" 
        Font-Size="8pt" InteractiveDeviceInfos="(Collection)" 
        WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt" Width="571px">
        <LocalReport ReportPath="Report2.rdlc">
           
            <DataSources>
                <rsweb:ReportDataSource DataSourceId="ObjectDataSource1" Name="DataSet1" />
            </DataSources>
           
        </LocalReport>
    </rsweb:ReportViewer>
        <asp:ObjectDataSource ID="ObjectDataSource3" runat="server" 
            TypeName="DataSet1TableAdapters."></asp:ObjectDataSource>
        <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" 
            SelectMethod="GetData" 
            TypeName="CarPoolDataSetTableAdapters.paymentTableAdapter">
        </asp:ObjectDataSource>
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
            SelectMethod="Clone" TypeName="DataSet1"></asp:ObjectDataSource>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:CarPoolConnectionString %>" 
        SelectCommand="SELECT [jid], [cpid], [cpname], [uname], [source], [destination], [distance], [cost], [sdate] FROM [payment] WHERE ([jid] = @jid)">
        <SelectParameters>
            <asp:Parameter DefaultValue="701" Name="jid" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
   
</asp:Content>

