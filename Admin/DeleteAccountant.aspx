<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdmPage.master" AutoEventWireup="true" CodeFile="DeleteAccountant.aspx.cs" Inherits="Admin_DeleteAccountant" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <section id="main-content">
	<section class="wrapper">
      <div class="row">
      <div class="col-md-2"></div>
     <div class="col-md-8">
    <div class="card">
        <div class="card-body">
 <table>
        <tr>
            <td>
               <h4> Are you sure?</h4>
            </td>
            <td>
                <asp:Button ID="Button1" runat="server" cssclass="btn btn-danger btn-sm" Text="Yes" OnClick="Button1_Click" />&nbsp
                <asp:Button ID="Button2" runat="server" cssclass="btn btn-danger btn-sm" Text="No" OnClick="Button2_Click"/>
            </td>
        </tr>
    </table>
         </div>
        </div>
         </div>
          </div>
        </section>
        </section>
</asp:Content>

