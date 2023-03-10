<%@ Page Title="" Language="C#" MasterPageFile="~/Mentor/MentorMaster.master" AutoEventWireup="true" CodeFile="ViewWorksheet.aspx.cs" Inherits="Mentor_ViewWorksheet" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div id="page-wrapper">
    <div class="main-page">       
         <div class="col-md-2"></div>
                    <div class="col-md-10">                        
                <div class="card center-block">
                    <div class="card-body">        
                             <h2>Student Worksheet</h2>
                        <hr />                                        
                <asp:ListView ID="ListView1" runat="server" GroupPlaceholderID="grouplaceholder1" ItemPlaceholderID="itemplaceholder1" GroupItemCount="1000">
                <GroupTemplate>
                <table class="table table-striped table-responsive-md btn-table">
                   <thead>
                  <tr>
                <th>Student Name</th>
                 <th>description</th>
                  <th>Date</th>
                 <th>Working Hours</th>
                <th>Total Amount</th>
                
                 </tr>
                 </thead>
                 <asp:PlaceHolder ID="itemPlaceholder1" runat="server"></asp:PlaceHolder>
                </GroupTemplate>
                <ItemTemplate>
               <tbody>
                <tr>
              <td> <%#Eval("Sname") %></td>
               <td> <%#Eval("Wdesc") %></td>
               <td> <%#Eval("Wdate") %></td>
              <td><%#Eval("hour") %></td>
              <td><%#Eval("Payment") %></td>            
             </tr>
               </tbody>
                </ItemTemplate>   
                </asp:ListView>                                   
       </div>
       </div>    
      </div>
        </div>
         </div>   
</asp:Content>

