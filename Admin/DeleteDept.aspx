<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdmPage.master" AutoEventWireup="true" CodeFile="DeleteDept.aspx.cs" Inherits="Admin_DeleteDept" %>

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
                <asp:Button ID="Button1" runat="server" Text="Yes" cssclass="btn btn-danger btn-sm" OnClick="Button1_Click"/>
                <asp:Button ID="Button2" runat="server" Text="No" cssclass="btn btn-danger btn-sm" OnClick="Button2_Click"/>
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

