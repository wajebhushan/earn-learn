<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdmPage.master" AutoEventWireup="true" CodeFile="Datewise.aspx.cs" Inherits="Admin_Datewise" %>

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
        <!-- Default form subscription -->
        <form>
            <p class="h4 text-center py-4"><b>Enter Date</b></p>
            <hr />
            <!-- Default input name -->
            <label for="Todate" class="white-text font-weight-light">To Date</label>
            <asp:TextBox ID="Todate" runat="server" TextMode="date" class="form-control" required></asp:TextBox>
            <br />
             <label for="Fromdate" class="white-text font-weight-light">From Date</label>
            <asp:TextBox ID="Fromdate" runat="server" TextMode="date" class="form-control" required></asp:TextBox>
            <br />
            <div class="text-center py-4 mt-3">
                <asp:Button ID="Button1" runat="server" Text="Submit" cssclass="btn btn-danger btn-md" OnClick="Button1_click" />
            </div>
           
        </form>
       </div>
     </div>
    </div>
    </div>
</section>
   </section>
</asp:Content>

