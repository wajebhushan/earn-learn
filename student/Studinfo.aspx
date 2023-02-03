<%@ Page Title="" Language="C#" MasterPageFile="~/student/StudMaster.master" AutoEventWireup="true" CodeFile="Studinfo.aspx.cs" Inherits="student_Studinfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <script language="javascript" type="text/javascript">
        function printDiv(divID) {
            //Get the HTML of div
            var divElements = document.getElementById(divID).innerHTML;
            //Get the HTML of whole page
            var oldPage = document.body.innerHTML;

            //Reset the page's HTML with div's HTML only
            document.body.innerHTML =
              "<body>" +
              divElements + "</body>";

            //Print Page
            window.print();

            //Restore orignal HTML
            document.body.innerHTML = oldPage;
        }
    </script>
    <div id="page-wrapper">
        <div class="main-page">
            <div class="row">
                <div class="col-md-3"></div>
                <div class="col-md-6">
                    <div class="card center-block">
                        <div class="card-body">
                            <div id="printablediv">
                                <h2>Student Enrollment Form </h2>
                                <hr />
                                <asp:ListView ID="ListView1" runat="server" GroupPlaceholderID="grouplaceholder1" ItemPlaceholderID="itemplaceholder1" GroupItemCount="1000">
                                    <GroupTemplate>
                                        <table class="table table-sm">
                                            <asp:PlaceHolder ID="itemplaceholder1" runat="server"></asp:PlaceHolder>
                                        </table>
                                    </GroupTemplate>
                                    <ItemTemplate>
                                        <tbody>
                                            <tr>
                                                <th scope="row"><b>Student name</b></th>
                                                <td><%#Eval("sname") %></td>
                                            </tr>
                                            <tr>
                                                <th scope="row"><b>Date Of Birth</b></th>
                                                <td><%#Eval("Birthdate") %></td>
                                            </tr>
                                            <tr>
                                                <th scope="row"><b>Gender</b></th>
                                                <td><%#Eval("Gender") %></td>
                                            </tr>
                                            <tr>
                                                <th scope="row"><b>Email</b></th>
                                                <td><%#Eval("Stud_email") %></td>
                                            </tr>
                                            <tr>
                                                <th scope="row"><b>Mobile No</b></th>
                                                <td><%#Eval("Stud_mobile_no") %></td>
                                            </tr>
                                            <tr>
                                                <th scope="row"><b>CRN NO</b></th>
                                                <td><%#Eval("CRN_NO") %></td>
                                            </tr>
                                            <tr>
                                                <th scope="row"><b>Class</b></th>
                                                <td><%#Eval("Stud_class") %></td>
                                            </tr>
                                            <tr>
                                                <th scope="row"><b>Local Address</b></th>
                                                <td><%#Eval("Stud_loc_addr") %></td>
                                            </tr>
                                            <tr>
                                                <th scope="row"><b>Permenent Address</b></th>
                                                <td><%#Eval("Stud_per_addr") %></td>
                                            </tr>
                                            <tr>
                                                <th scope="row"><b>Last Exam Pass</b></th>
                                                <td><%#Eval("Stud_exam") %></td>
                                            </tr>
                                            <tr>
                                                <th scope="row"><b>Obtain Marks</b></th>
                                                <td><%#Eval("Stud_marks") %></td>
                                            </tr>
                                            <tr>
                                                <th scope="row"><b>Student Anual Income</b></th>
                                                <td><%#Eval("Stud_income") %></td>
                                            </tr>
                                            <tr>
                                                <th scope="row"><b>Bank Name</b></th>
                                                <td><%#Eval("Bname") %></td>
                                            </tr>
                                            <tr>
                                                <th scope="row"><b>Bank Accont Number</b></th>
                                                <td><%#Eval("B_account_no") %></td>
                                            </tr>
                                            <tr>
                                                <th scope="row"><b>Bank IFSC Code</b></th>
                                                <td><%#Eval("B_ifsc_no") %></td>
                                            </tr>
                                        </tbody>
                                    </ItemTemplate>
                                </asp:ListView>
                            </div>
                            <input type="button" value="Save" style="color: #000000" class="btn btn-success btn-sm" onclick="javascript: printDiv('printablediv')" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

