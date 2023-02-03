 <%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdmPage.master" AutoEventWireup="true" CodeFile="ViewAccountant.aspx.cs" Inherits="Admin_ViewAccountant" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <section id="main-content">
	<section class="wrapper">
      <div class="row">
      <div class="col-md-2"></div>
     <div class="col-md-8">
    <div class="card">
        <div class="card-body">
        <asp:ListView ID="ListView1" runat="server" GroupPlaceholderID="groupPlaceholder1" ItemPlaceholderID="itemPlaceholder1" GroupItemCount="1000" >
                <GroupTemplate>
               <table class="table table-striped table-responsive-md btn-table">
                   <thead>
             <tr>
            <th><h5>Accountant Name</h5></th>
            <th><h5>Accountant Email ID</h5></th>
            <th><h5>Password</h5></th>
             </tr>
                 </thead>
                 <asp:PlaceHolder ID="itemPlaceholder1" runat="server"></asp:PlaceHolder>
                </GroupTemplate>
                <ItemTemplate>
             <tbody>
              <tr>
             <td> <%#Eval("Aname") %></td>
             <td> <%#Eval("AEmail") %></td>
              <td> <%#Eval("Apassword") %></td>
                  <td>
              <a href="EditAccountant.aspx?id=<%#Eval("Aid")%>"><input type="button"  value="Edit" /></a>
              </td>
                <td>
                <a href="DeleteAccountant.aspx?id=<%#Eval("Aid") %>"><input type="button"  value="Delete" /></a>
                </td>
           </tr>
           </tbody>
                </ItemTemplate>   
            </asp:ListView>
       </div>
     </div>
       </div>
       </div>   
        </section>
        </section>     
</asp:Content>

