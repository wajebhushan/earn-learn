<%@ Page Title="" Language="C#" MasterPageFile="~/Mentor/MentorMaster.master" AutoEventWireup="true" CodeFile="Worksheet.aspx.cs" Inherits="Mentor_Worksheet" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="page-wrapper">
			<div class="main-page"> 
     <div class="row">
     <div class="col-md-3"></div>
        <div class="col-md-6">
    <div class="card">
        <div class="card-body badge-default">
    <p class="h3 text-center mb-4"><b>Student Worksheet</b></p>
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
                        <th><b>Student name:</b></th>
                        <td> <%#Eval("Sname") %></td>
                        </tr>
                         <tr>
                        <th><b>Student CRN Number:</b></th>
                        <td> <%#Eval("CRN_NO") %></td>
                        </tr>
                        </tbody>
                    </ItemTemplate>
              </asp:ListView>
            <div class="row">
            <div class="col-md-3"></div>               
            <div class="col-md-6">
                <label for="Dname" class="white-text"> Department Name</label>
                <asp:TextBox ID="Dname" runat="server" title="Enter Valid Department" pattern="[a-zA-Z-]+" required cssclass="form-control"></asp:TextBox>              
                </div>   
              </div>
            <div class="row">
             <div class="col-md-3"></div> 
            <div class="col-md-6 ">
        <label for="WDate" class="white-text">Date</label>
        <asp:TextBox ID="WDate" runat="server"  ontextchanged="WDate_TextChanged" cssclass="form-control" required></asp:TextBox>
    </div>
   </div>                                                                                                                                      
            <div class="row">
              <div class="col-md-3"></div> 
             <div class="col-md-6">
           <br /><label for="Ftime" class="white-text">Time(From)</label>
                 <asp:TextBox ID="Ftime" runat="server"  TextMode="Time" cssclass="form-control" required></asp:TextBox>
           </div>
             </div>
             <div class="row">
              <div class="col-md-3"></div> 
            <div class="col-md-6">
            <br /> <label for="Ttime" class="white-text"> Time(To)</label>
            <asp:TextBox ID="Ttime" runat="server" TextMode="Time" cssclass="form-control" required></asp:TextBox>
            </div>
              </div>              
            <div class="row">
              <div class="col-md-3"></div> 
            <div class="col-md-6">
            <br /><label for="Wdesc" class="white-text">Work Description</label>
            <asp:TextBox ID="Wdesc" TextMode="MultiLine" runat="server" cssclass="form-control" required></asp:TextBox>
           </div>
          </div>
            <div class="row">
            <div class="col-md-2"></div>
            <div class="col-md-4">
         <div class="text-left">
          <asp:Button ID="Button1" runat="server" Text="Submit" cssclass="btn btn-danger btn-md" OnClick="Button1_Click"/>
        </div>  
         </div>
          <div class="col-md-4">
         <div class="text-right">
          <asp:Button ID="Button2" runat="server" Text="Clear" cssclass="btn btn-danger btn-md" />
        </div>
           </div>
          </div>  
         </div>
        </div>
      </div>
     </div>
    </div>
   </div>
</asp:Content>

