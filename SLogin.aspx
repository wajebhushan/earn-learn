<%--  --%>
<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="SLogin.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="row">
        <div class="col-4">
        </div>
        <div class="col-4">
    <div class="card mx-xl-6 bgded">

    <div class="card-body align-content-center badge-default ">
        <!-- Default form subscription -->
        <form>
            <p class="h4 text-center py-4"><b>Student Login</b></p>
            <hr />
            <!-- Default input name -->
            <label for="Studemail" class="white-text font-weight-light">Email</label>
            <asp:TextBox ID="Studemail" runat="server" class="form-control"></asp:TextBox>
            <br />
            <!-- Default input email -->
            <label for="Studpass" class="white-text font-weight-light">Password</label>
             <asp:TextBox ID="Studpass" runat="server" TextMode="Password" class="form-control"></asp:TextBox>
            <div class="text-center py-4 mt-3">
                <asp:Button ID="Button1" runat="server" Text="Login" cssclass="btn btn-danger btn-md" OnClick="Button1_Click" />
            </div>
            Don't have an account? / Can't login using existing account?<a href="Sregister.aspx">Register</a><br />
            <a href="Forgetpwd.aspx">Forget Password</a>
        </form>
        <!-- Default form subscription -->

    </div>
    <!-- Card body -->

</div>
    </div>
         </div>
</asp:Content>
