<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdmMaster1.master" AutoEventWireup="true" CodeFile="Forgetpwd.aspx.cs" Inherits="Admin_Forgetpwd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <section id="main-content">
	<section class="wrapper">
         <div class="row">
             <div class="col-md-3"></div>
            <div class="col-md-4">
    <div class="card">
    <div class="card-body">
        <!-- Default form subscription -->
            <p class="h4 text-center py-4"><b>Forget Password</b></p>
            <hr />
             <label for="AEmail" class="white-text font-weight-light">Enter Email</label>
            <asp:TextBox ID="AEmail" runat="server" TextMode="Email" class="form-control" required></asp:TextBox>
            <br />
             <div class="text-center py-4 mt-3">
            <asp:Button ID="Button1" runat="server" cssclass="btn btn-danger btn-md" Text="Submit" OnClick="Button1_Click"/>
            </div>
        </div>
        </div>
        </div>
             </div>
        </section>
        </section>
</asp:Content>

