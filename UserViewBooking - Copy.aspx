<%@ Page Title="" Language="C#" MasterPageFile="~/UserMasterPage1.master" AutoEventWireup="true" CodeFile="UserViewBooking.aspx.cs" Inherits="UserViewBooking" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="box">
                                <div class="box-header">
                                    <h3 class="box-title">User Confirmed Booking </h3>                                    
                                </div><!-- /.box-header -->
                                 
                              
                  <div class="box-body table-responsive">
                                
                          
                                                                                    <asp:DataList ID="DataList1" runat="server" DataKeyField="bookid"  >
            <HeaderTemplate>
               <table class="table table-bordered table-striped">
                  <tr>
                     <th>
                       BookID
                     </th>
                     <th>
                        UserName
                     </th>
                   
                     
                     <th>
                       Room Type
                     </th>
                     <th>
                       Room Price
                     </th>
                      <th>
                       Location
                     </th>
                      <th>
                       Hotel Name
                     </th>
                       <th>
                       No of Rooms
                     </th>
                      <th>
                      BreakFast
                    </th>
                      <th>
                      Lunch
                    </th>
                     <th>
                      Dinner
                    </th>
                     <th>
                       Total 
                     </th>
                     <th>
                       Date
                     </th>
                     
                  </tr>
                 
            </HeaderTemplate>
            <ItemTemplate>
           
               <tr >
               <td>
                 <%# Eval("bookid")%>
               </td>
               <td>
                <%# Eval("uname")%>
               </td>
               
             
               <td>
                <%# Eval("roomtype")%>
               </td>
               <td>
                <%# Eval("roomprice")%>
               </td>
               <td>
                <%# Eval("location")%>
               </td>
                <td>
                <%# Eval("huname")%>
               </td>
                <td>
                <%# Eval("roomcode")%>
               </td>
                    <td>
                 <%# Eval("breakfast")%>
                </td>
                    <td>
                     <%# Eval("lunch")%>

                    </td>
                    <td>
                 <%# Eval("dinner")%>
                </td>
               <td>
                <%# Eval("totalprice")%>
               </td>
               <td>
                <%# Eval("bookdate")%>
               </td>
               
            </tr>
       
         </ItemTemplate>
       
</asp:DataList>
                                       
                                   
                                     
                                </div>
       <%--  </div>--%>
</asp:Content>

