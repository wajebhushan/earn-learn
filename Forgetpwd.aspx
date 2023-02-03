<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="Forgetpwd.aspx.cs" Inherits="Forgetpwd" %>

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
            <p class="h4 text-center py-4"><b>Forget Password</b></p>
            <hr />
            <!-- Default input name -->
            <label for="Studemail" class="white-text font-weight-light"> Enter Your EmailId</label>
            <asp:TextBox ID="Studemail" runat="server" class="form-control"></asp:TextBox>
            <div class="text-center py-4 mt-3">
                <asp:Button ID="Submit" runat="server" Text="Button" cssclass="btn btn-danger btn-md" OnClick="Submit_Click" />
            </div>
        </form>
        <!-- Default form subscription -->

    </div>
    <!-- Card body -->

</div>
    </div>
         </div>
</asp:Content>

