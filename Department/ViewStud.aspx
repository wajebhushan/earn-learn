<%@ Page Title="" Language="C#" MasterPageFile="~/Department/DeptMaster.master" AutoEventWireup="true" CodeFile="ViewStud.aspx.cs" Inherits="Department_ViewStud" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div id="page-wrapper">
      <div class="main-page"> 
    <div class="card">
        <div class="card-body">
        <asp:ListView ID="ListView1" runat="server" GroupPlaceholderID="groupPlaceholder1" ItemPlaceholderID="itemPlaceholder1" GroupItemCount="1000" >
                <GroupTemplate>
               <table class="table table-striped table-responsive-md btn-table">
                   <thead>
             <tr>
            <th>Student Name</th>
             <th>CRN Number</th>
            <th>Email</th>
            <th>Phone</th>
             </tr>
                 </thead>
                 <asp:PlaceHolder ID="itemPlaceholder1" runat="server"></asp:PlaceHolder>
                </GroupTemplate>
                <ItemTemplate>
             <tbody>
              <tr>
             <td> <%#Eval("Sname") %></td>
              <td> <%#Eval("CRN_NO") %></td>
            <td><%#Eval("Stud_email") %></td>
            <td><%#Eval("Stud_mobile_no") %></td>
           </tr>
           </tbody>
                </ItemTemplate>   
            </asp:ListView>
       </div>
     </div>
       </div>
       </div>    
          
</asp:Content>

