<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdmPage.master" AutoEventWireup="true" CodeFile="Compose.aspx.cs" Inherits="Admin_Compose" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <section id="main-content">
	<section class="wrapper">
        <div class="row">
             <div class="col-md-3"></div>
            <div class="col-md-6">
    <div class="card">
    <div class="card-body">
        <p class="h3 text-center">
            <b>Compose Mail</b>
        </p>
              <hr />
        <div class="row">
            <div class="col-md-2">
             <label for="TextBox1">To:</label>
            </div>
            <div class="col-md-8">
             <asp:TextBox ID="TextBox1" runat="server" class="form-control" required></asp:TextBox>  
                </div>     
            </div>
        <br />
              <div class="row">
            <div class="col-md-2">
             <label for="TextBox2">Subject:</label>
            </div>
            <div class="col-md-8">
             <asp:TextBox ID="TextBox2" runat="server" class="form-control" required></asp:TextBox>  
                </div>     
            </div>
        <br />
			  <div class="row">
            <div class="col-md-2">
             <label for="TextBox3">Messege:</label>
            </div>
            <div class="col-md-8">
             <asp:TextBox ID="TextBox3" runat="server" TextMode="MultiLine" class="form-control" required></asp:TextBox>  
                </div>  
               </div>  
        <br />  
        <div class="row">
            <div class="col-md-2"></div>
        <asp:FileUpload ID="FileUpload1" runat="server" />  
            </div>
        <br />
        <div class="row">
            <div class="col-md-4"></div>
         <asp:Button ID="Button1" runat="server" Text="Send Messege" cssclass="btn btn-danger" OnClick="Button1_Click"/>
        </div>
            </div>
           </div>
            </div>
        </section>
        </section>
            </asp:Content>

