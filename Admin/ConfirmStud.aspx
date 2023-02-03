<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdmPage.master" AutoEventWireup="true" CodeFile="ConfirmStud.aspx.cs" Inherits="Admin_ConfirmStud" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <section id="main-content">
	<section class="wrapper">
    <div class="card">
        <div class="card-body">
            <hr />
        <asp:ListView ID="ListView1" runat="server" GroupPlaceholderID="groupPlaceholder1" ItemPlaceholderID="itemPlaceholder1" GroupItemCount="1000" >
                <GroupTemplate>
               <table class="table table-striped table-responsive-md btn-table">
                   <thead>
             <tr>
            <th>Student Name</th>            
            <th>Class</th>
            <th>Email</th>
            <th>Phone</th>
            <th>Bank Name</th>
            <th>Account Number</th>
             </tr>
                 </thead>
                 <asp:PlaceHolder ID="itemPlaceholder1" runat="server"></asp:PlaceHolder>
                </GroupTemplate>
                <ItemTemplate>
             <tbody>
              <tr>
             <td> <%#Eval("Sname") %></td>
             <td> <%#Eval("Stud_class") %></td>
            <td><%#Eval("Stud_email") %></td>
            <td><%#Eval("Stud_mobile_no") %></td>
            <td><%#Eval("Bname") %></td>
            <td><%#Eval("B_account_no") %></td>
           </tr>
           </tbody>
                </ItemTemplate>   
            </asp:ListView>
       </div>
     </div>
      </section>
        </section>  
          
</asp:Content>

