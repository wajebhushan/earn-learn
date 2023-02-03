<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdmPage.master" AutoEventWireup="true" CodeFile="EditMentor.aspx.cs" Inherits="Admin_EditMentor" %>

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
            <p class="h4 text-center py-4"><b>Add Accountant</b></p>
            <hr />
            <!-- Default input name -->
            <label for="Mname" class="white-text font-weight-light">Mentor Name</label>
            <asp:TextBox ID="Mname" runat="server"  pattern="[a-zA-Z\s]+" required class="form-control"></asp:TextBox>
            <br />
             <label for="Memail" class="white-text font-weight-light">Enter Email</label>
            <asp:TextBox ID="Memail" runat="server" TextMode="Email" class="form-control"></asp:TextBox>
            <br />
            <!-- Default input email -->
            <label for="Mpass" class="white-text font-weight-light">Enter Password</label>
             <asp:TextBox ID="Mpass" runat="server" title="Atleast one small letter" onchange="form.pwd2.pattern = this.value;"  required pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,12}" class="form-control"></asp:TextBox>
            <br />

              <label for="Mpass" >Confirm Password</label>
              <input type="password" class="form-control"  title="Enter Correct Password"  required pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,12}" name="pwd2">          
            <br />
            <div class="text-center py-4 mt-3">
                <asp:Button ID="Button1" runat="server" Text="Update"  cssclass="btn btn-danger btn-md" OnClick="Button1_Click" />
            </div>
           
        </form>
    </div>
</div>
            </div>
            </div>
        </section>
        </section>
</asp:Content>

