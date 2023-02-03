
<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Sregister.aspx.cs" Inherits="Sregister" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="wrapper row1">
    <div class="row">
     <div class="col-md-3"></div>
        <div class="col-md-6">
    <div class="card">
        <div class="card-body badge-default">
    <p class="h4 text-center mb-4"><b>Student Registration</b></p>
   <hr />
        <div class="row">
            <div class="col-md-6">
                <label for="Rname" class="white-text">Enter Full Name</label>
                <asp:TextBox ID="Rname" runat="server" pattern="[a-zA-Z\s]+" required cssclass="form-control"></asp:TextBox>
               
                </div>   
            <div class="col-md-6 ">
        <label for="REmail" class="white-text">Your email</label>
        <asp:TextBox ID="REmail" runat="server" TextMode="Email" cssclass="form-control"></asp:TextBox>
    </div>                                                                                                                              
            </div>
            <div class="row">
             <div class="col-md-6">
      <br /><label for="Rmobile" class="white-text">Mobile No</label>
                 <asp:TextBox ID="Rmobile" runat="server" cssclass="form-control"></asp:TextBox>
      </div>
            <div class="col-md-6">
              <br /> <label for="Rbirthday" class="white-text"> birthdate</label>
        <asp:TextBox ID="Rbirthday" runat="server" Text="Birthdate" required pattern="\d{2}\-\d{2}\-\d{4}" TextMode="Date" cssclass="form-control" ></asp:TextBox>
      </div>
           
             </div>
            <div class="row">
            <div class="col-md-6">
    <br /><label for="Rpassword" class="white-text">Password</label>
            <asp:TextBox ID="Rpassword" TextMode="Password" runat="server" cssclass="form-control"  pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,12}" name="Rpassword"  onchange="form.Rcpassword.pattern = this.value;" required></asp:TextBox>
         </div>
            <div class="col-md-6">
    <br /><label for="Rcpassword" class="white-text">Confirm Password</label>
   <input type="password" required pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,12}" name="Rcpassword" class="form-control"  />
         </div>
     </div>
    <div class="text-center mt-4">
        <asp:Button ID="Button1" runat="server" Text="Register" cssclass="btn btn-danger btn-md" OnClick="Button1_Click"/>     
    </div>
          Already have an account?<a href="SLogin.aspx">Login</a>
            
               </div>
        </div>
           </div>
      </div>
        </div>
<!-- Default form register -->
</asp:Content>

