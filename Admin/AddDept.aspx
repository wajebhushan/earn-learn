<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdmPage.master" AutoEventWireup="true" CodeFile="AddDept.aspx.cs" Inherits="Admin_AddDept" %>

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
            <p class="h4 text-center py-4"><b>Add Department</b></p>
            <hr />
            <!-- Default input name -->
            <label for="Dname" class="white-text font-weight-light">Department Name</label>
            <asp:TextBox ID="Dname" runat="server"  pattern="[a-zA-Z\s]+" required class="form-control"></asp:TextBox>
            <br />
             <label for="Demail" class="white-text font-weight-light">Enter Email Id</label>
            <asp:TextBox ID="Demail" runat="server" TextMode="Email" class="form-control"></asp:TextBox>
            <br />
            <!-- Default input email -->
            <label for="Dpass" class="white-text font-weight-light">Enter Password</label>
             <asp:TextBox ID="Dpass" runat="server" title="Atleast one small letter" onchange="form.pwd2.pattern = this.value;"  required pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,12}" class="form-control"></asp:TextBox>
            <br />

              <label for="Dpass" >Confirm Password</label>
              <input type="password" class="form-control"  title="Enter Correct Password"  required pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,12}" name="pwd2" />          
            <br />
            <div class="text-center py-4 mt-3">
                <asp:Button ID="Button1" runat="server" Text="Add" cssclass="btn btn-danger btn-md" OnClick="Button1_Click" /> 
            </div>
           
        </form>
    </div>
</div>
            </div>
            </div>
        </section>
        </section>
</asp:Content>

