<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="StudVarif.aspx.cs" Inherits="Mentor_StudInfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">     
    <br /> <br />  <br />
    <div class="row">
        <div class="col-lg-3"></div>     
        <div class="col-lg-5">
    <div class="card">
        <div class="card-body badge-default">
    <form>
    <p class="h4 text-center mb-4"><b>Student Verification</b></p>
<hr />
    <!-- Default input email -->
        <div class="row">
            <div class="col-md-3"></div>
            <div class="col-md-6">
     <label for="TextBox1" class="white-text font-weight-light">Enter Student Name</label>
            <asp:TextBox ID="TextBox1" runat="server" title="Enter Valid Name" pattern="[a-zA-Z\s]+" required class="form-control"></asp:TextBox>
           </div>
            </div>
            <br />
            <!-- Default input email -->
         <div class="row">
              <div class="col-md-4"></div>
            <div class="col-md-4">            
    <div class="text-center mt-4">
        <asp:Button ID="Button1" runat="server" cssclass="btn btn-danger btn-md" Text="Submit" OnClick="Button1_Click" />
    </div>
      </div>
    </div>
</form>
 </div>
 </div>
   </div>
    </div>
</asp:Content>

