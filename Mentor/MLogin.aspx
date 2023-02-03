
<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="MLogin.aspx.cs" Inherits="Default2" %>

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
            <p class="h4 text-center py-4"><b>Mentor Login</b></p>
            <hr />
            <!-- Default input name -->
            <label for="Memail" class="white-text font-weight-light">Enter Email Id</label>
            <asp:TextBox ID="Memail" runat="server" TextMode="Email" class="form-control" required></asp:TextBox>
            <br />
            <!-- Default input email -->
            <label for="Mpass" class="white-text font-weight-light">Password</label>
             <asp:TextBox ID="Mpass" runat="server" TextMode="Password" required class="form-control"></asp:TextBox>
            <div class="text-center py-4 mt-3">
                <asp:Button ID="Button1" runat="server" Text="Login" cssclass="btn btn-danger btn-md" OnClick="Button1_Click"/>
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
