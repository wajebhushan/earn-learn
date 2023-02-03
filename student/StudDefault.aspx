<%@ Page Title="" Language="C#" MasterPageFile="~/student/StudMaster.master" AutoEventWireup="true" CodeFile="StudDefault.aspx.cs" Inherits="student_StudDefault" %>

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
            <th>Email</th>
            <th>Phone</th>
             </tr>
                 </thead>
                 <asp:PlaceHolder ID="itemPlaceholder1" runat="server"></asp:PlaceHolder>
                </GroupTemplate>
                <ItemTemplate>
             <tbody>
              <tr>
             <td> <%#Eval("sname") %></td>
            <td><%#Eval("semail") %></td>
            <td><%#Eval("smobile") %></td>
           </tr>
           </tbody>
                </ItemTemplate>   
            </asp:ListView>
       </div>
     </div>
       </div>
       </div>    
          
</asp:Content>

