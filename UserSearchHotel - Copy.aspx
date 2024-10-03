<%@ Page Title="" Language="C#" MasterPageFile="~/UserMasterPage1.master" AutoEventWireup="true" CodeFile="UserSearchHotel.aspx.cs" Inherits="UserSearchHotel" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

                                <div class="box-header">
                                    <h3 class="box-title">Hotel Details </h3>                                    
                                </div><!-- /.box-header -->
                                 
                              
                  <div class="box-body table-responsive">
                                
                          
                                           <asp:DataList ID="DataList1" runat="server" DataKeyField="rcode"  >
            <HeaderTemplate>
               <table class="table table-bordered table-striped">
                  <tr>
                     <th>
                       Code
                     </th>
                     <th>
                        Hotel Username
                     </th>
                     <th>
                        Hotel Name
                     </th>
                     
                     <th>
                       Location
                     </th>
                     <th>
                      Room Type
                     </th>
                     <th>
                       Room Category
                     </th>
                      <th>
                       Price
                     </th>
                      
                  </tr>
                 
            </HeaderTemplate>
            <ItemTemplate>
           
               <tr >
               <td>
                 <%# Eval("rcode")%>
               </td>
               <td>
                <%# Eval("huname")%>
               </td>
               
               <td>
                <%# Eval("hname")%>
               </td>
               
               <td>
                <%# Eval("location")%>
               </td>
               <td>
                <%# Eval("rtype")%>
               </td>
               <td>
                <%# Eval("rcat")%>
               </td>
               <td>
                <%# Eval("price")%>
               </td>
                
              <%-- <td>
               <asp:Button class="btn btn-info" ID="btn1" runat="server" CommandName="Select"  Text="Block" /> 
               </td>--%>
            </tr>
       
         </ItemTemplate>
       
</asp:DataList>
                                       
                                   
                                     
                                </div>
                                
                                 
                              
                  
      
      
</asp:Content>

