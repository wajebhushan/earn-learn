<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdmPage.master" AutoEventWireup="true" CodeFile="SearchStud.aspx.cs" Inherits="Admin_SearchStud" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <section id="main-content">
	<section class="wrapper">
      <div class="row">
      <div class="col-md-4"></div>
     <div class="col-md-4">
    <div class="card">
        <div class="card-body">
           <label for="Studname" class="white-text font-weight-light center-block">Enter Student Name</label>
            <hr />
            <asp:TextBox ID="Studname" runat="server"  pattern="[a-zA-Z\s]+" required class="form-control"></asp:TextBox>
            <hr />
            <asp:Button ID="Button1" runat="server" Text="Search" cssclass="btn btn-danger btn-md" OnClick="Button1_Click" />
            </div>
        </div>
         </div>
          </div>
        </section>
        </section>
</asp:Content>

