<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdmPage.master" AutoEventWireup="true" CodeFile="ViewDateWise.aspx.cs" Inherits="Admin_ViewDateWise" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
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
    <section id="main-content">        
	<section class="wrapper"> 
        <div class="row">
		<div class="col-md-3"></div>
                    <div class="col-md-8">                        
                <div class="card center-block">
                    <div class="card-body">    
                             <div id="printdiv">
                             <h2>Student Worksheet</h2>
                        <hr />                                           
                <asp:ListView ID="ListView1" runat="server" GroupPlaceholderID="grouplaceholder1" ItemPlaceholderID="itemplaceholder1" GroupItemCount="1000">
                <GroupTemplate>
                <table class="table table-striped table-responsive-md btn-table">
                   <thead>
                  <tr>
                <th>Student Name</th>
                 <th>Working Hours</th>
                <th>Total Amount</th>
                <th>Working Date</th>
                 </tr> 
                  </thead>
                 <asp:PlaceHolder ID="itemPlaceholder1" runat="server"></asp:PlaceHolder>
                  </table>
                </GroupTemplate>
                <ItemTemplate>
               <tbody>
                <tr>
              <td> <%#Eval("Sname") %></td>
              <td><%#Eval("hour") %></td>
              <td><%#Eval("Payment") %></td>
               <td><%#Eval("Wdate") %></td>                    
             </tr>
               </tbody>
                </ItemTemplate>   
                </asp:ListView>                   
        </div> 
        <input type="button" value="Save" style="color: #000000" class="btn btn-success btn-sm" onclick="javascript: printDiv('printdiv')" />   
         </div>           
       </div>                 
      </div>
      </div>  
        
</section>                         
  </section>          
</asp:Content>

