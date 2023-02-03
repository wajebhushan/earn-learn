
<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="DLogin.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="row">
        <div class="col-4">
        </div>
        <div class="col-4">
    <div class="card mx-xl-6 bgded">

    <div class="card-body align-content-center badge-default
        ">

        <!-- Default form subscription -->
        <form>
            <p class="h4 text-center py-4"><b>Department Login</b></p>
            <hr />
            <!-- Default input name -->
            <label for="Demail" class="white-text font-weight-light">Enter Your Email</label>
            <asp:TextBox ID="Demail" runat="server" TextMode="Email" class="form-control" required></asp:TextBox>
            <br />
            <!-- Default input email -->
            <label for="Dpass" class="white-text font-weight-light">Password</label>
             <asp:TextBox ID="Dpass" runat="server" TextMode="Password" class="form-control" required></asp:TextBox>
            <div class="text-center py-4 mt-3">
                <asp:Button ID="Button1" runat="server" Text="Login" cssclass="btn btn-danger btn-md" OnClick="Button1_Click" />
            </div>
            <a href="#">Forget Password</a>
        </form>
        <!-- Default form subscription -->

    </div>
    <!-- Card body -->

</div>
    </div>
         </div>
</asp:Content>
