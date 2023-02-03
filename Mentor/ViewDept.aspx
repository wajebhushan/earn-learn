<%@ Page Title="" Language="C#" MasterPageFile="~/Mentor/MentorMaster.master" AutoEventWireup="true" CodeFile="ViewDept.aspx.cs" Inherits="Mentor_ViewDept" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="page-wrapper">
      <div class="main-page"> 
      <div class="row">
      <div class="col-md-4"></div>
     <div class="col-md-4">
    <div class="card">
        <div class="card-body">
        <asp:ListView ID="ListView1" runat="server" GroupPlaceholderID="groupPlaceholder1" ItemPlaceholderID="itemPlaceholder1" GroupItemCount="1000" >
                <GroupTemplate>
               <table class="table table-striped table-responsive-md btn-table">
                   <thead>
             <tr>
            <th><h4>Department Name</h4></th>
             </tr>
                 </thead>
                 <asp:PlaceHolder ID="itemPlaceholder1" runat="server"></asp:PlaceHolder>
                </GroupTemplate>
                <ItemTemplate>
             <tbody>
              <tr>
             <td> <%#Eval("Dname") %></td>
           </tr>
           </tbody>
                </ItemTemplate>   
            </asp:ListView>
       </div>
     </div>
       </div>
       </div>  
    </div>    
    </div>        
</asp:Content>

