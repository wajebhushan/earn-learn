<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdmPage.master" AutoEventWireup="true" CodeFile="ViewDept.aspx.cs" Inherits="Department_ViewDept" %>

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
            <th><h4>Department Name</h4></th>
            <th><h4>Password</h4></th>
             </tr>
                 </thead>
                 <asp:PlaceHolder ID="itemPlaceholder1" runat="server"></asp:PlaceHolder>
                </GroupTemplate>
                <ItemTemplate>
             <tbody>
              <tr>
             <td> <%#Eval("Dname") %></td>
              <td> <%#Eval("Dpassword") %></td>
                   <td>
                <a href="EditDept.aspx?id=<%#Eval("Did") %>"><input type="button"  value="Edit" /></a>
              </td>
                <td>
               <a href="DeleteDept.aspx?id=<%#Eval("Did") %>"><input type="button"  value="Delete" /></a>
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

