<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="StudForm.aspx.cs" Inherits="student_StudForm" %> 

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="row">
     <div class="col-md-3"></div>
        <div class="col-md-6">
    <div class="card">
        <div class="card-body badge-default">
    <p class="h4 text-center mb-4"><b>Student Form</b></p>
   <hr />
        <div class="row">
            <div class="col-md-3"></div>  
            <div class="col-md-6">
                <label for="Sname" class="white-text">Student Name</label>
                <asp:TextBox ID="Sname" runat="server" pattern="[a-zA-Z\s]+" required cssclass="form-control"></asp:TextBox>                                                                                                             
            </div>
            </div>
            <br />
            <div class="row">     
                <div class="col-md-3"></div>             
                 <div class="col-4"> 
                       <label for="SBirthdate" class="white-text">Date Of Birth</label>
               <asp:TextBox ID="Sbirthdate" runat="server" TextMode="Date" required pattern="\d{2}\-\d{2}\-\d{4}" cssclass="form-control"></asp:TextBox>
                </div>  
                         </div> 
            <div class="row">
               <div class="col-md-3"></div>  
                <div class="col-md-4">   
                    <br />      
                <div>
                    Gender
                </div>
                  <asp:DropDownList ID="DropDownList2" runat="server" class="dropdown-header">
                  <asp:ListItem Text="Select Gender" Value="-1"></asp:ListItem>
                   <asp:ListItem Text="Male"></asp:ListItem>
                    <asp:ListItem Text="Female"></asp:ListItem>
               </asp:DropDownList>
         </div>
                </div>
            <div class="row">
                <div class="col-md-3"></div>  
            <div class="col-md-6">
    <br /><label for="Semail" class="white-text">Email Id</label>
    <asp:TextBox ID="Semail" TextMode="Email" runat="server" cssclass="form-control" required></asp:TextBox>
         </div>
                 </div>
            <div class="row">
                <div class="col-md-3"></div>  
            <div class="col-md-6">
    <br /><label for="Smobile" class="white-text">Mobile No</label>
            <asp:TextBox ID="Smobile" runat="server" title="Enter 10 numbers only " pattern="\d{10}" required cssclass="form-control"></asp:TextBox>
         </div>
            </div> 
            <div class="row">
                <div class="col-md-3"></div>  
            <div class="col-md-6">
    <br /><label for="Scrn" class="white-text">CRN No</label>
    <asp:TextBox ID="Scrn"  runat="server" title="Enter 7 numbers only " pattern="\d{7}" required cssclass="form-control"></asp:TextBox>
         </div>
                </div>
            <div class="row">
                <div class="col-md-3"></div>  
            <div class="col-md-6">
    <br /><label for="Sclass" class="white-text">Class</label>
            <asp:TextBox ID="Sclass" runat="server" cssclass="form-control" required></asp:TextBox>
         </div>
                </div>
                <div class="row">    
                    <div class="col-md-3"></div>          
                 <div class="col-md-6">
          <br /><label for="Sloac_addr" class="white-text">Local Address</label>
          <asp:TextBox ID="Sloc_addr" TextMode="MultiLine" runat="server" cssclass="form-control" required></asp:TextBox>
         </div>
        </div>
           <div class="row">  
               <div class="col-md-3"></div>            
                 <div class="col-md-6">
          <br /><label for="Sper_addr" class="white-text">Permenent Address</label>
          <asp:TextBox ID="Sper_addr" TextMode="MultiLine" runat="server" cssclass="form-control" required></asp:TextBox>
         </div>
        </div>
            <div class="row">     
                <div class="col-md-3"></div>         
                 <div class="col-md-6">
          <br /><label for="Slast_exam" class="white-text">Last Exam</label>
          <asp:TextBox ID="Slast_exam"  runat="server" cssclass="form-control" required></asp:TextBox>
         </div>
        </div>
            <div class="row"> 
                <div class="col-md-3"></div>             
                 <div class="col-md-6">
          <br /><label for="Smark" class="white-text">Obtain Marks</label>
          <asp:TextBox ID="Smark" runat="server" tittle="Enter only numeric" pattern="^[0-9]" cssclass="form-control"></asp:TextBox>
         </div>
        </div>
            <div class="row">
                <div class="col-md-3"></div>  
                <div class="col-md-6">
          <br /><label for="S_income" class="white-text">Anual Income</label>
          <asp:TextBox ID="S_income" runat="server" title="Enter only numeric" required pattern="^[0-9]" cssclass="form-control"></asp:TextBox>
         </div>
                </div><br /><br />
            <p class="h4 text mb-4 text-center"><b>Bank Details</b></p>
            <hr />
            <div class="row">
            <div class="col-md-3"></div>  
             <div class="col-md-4">   
                    <br />      
                <div>
                    Bank Name
                </div>
                  <asp:DropDownList ID="DropDownList1" runat="server" Width="200px" class="dropdown-header">
                   <asp:ListItem Text="Select Bank Name" Value="-1"></asp:ListItem>
                   <asp:ListItem Text="State Bank Of India"></asp:ListItem>
                    <asp:ListItem Text="Bank Of Maharashtra"></asp:ListItem>
                      <asp:ListItem Text="Bank Of Baroda"></asp:ListItem>
               </asp:DropDownList>
         </div>
                </div><br />
        <div class="row">
            <div class="col-md-3"></div>  
            <div class="col-md-6">
                <label for="Anumber" class="white-text">Accoount Number</label>
                <asp:TextBox ID="Anumber" runat="server" title="Enter only numeric" required pattern="[\\d{11}]" cssclass="form-control"></asp:TextBox>                                                                                                             
            </div>
            </div>
            <br />
            <div class="row">    
                <div class="col-md-3"></div>              
                 <div class="col-4"> 
                       <label for="B_ifsc" class="white-text">IFSC Code</label>
               <asp:TextBox ID="B_ifsc" runat="server" cssclass="form-control" required></asp:TextBox>
                </div>  
                </div> 
            <div class="row">
                <div class="col-md-2"></div> 
                <div class="col-md-4">
            <div class="text-center py-4 mt-3">
                <asp:Button ID="Button1" runat="server" Text="save and next" cssclass="btn btn-danger btn-md" OnClick="Button1_Click" />
            </div>
                    </div>
                <div class="col-md-4">
            <div class="text-center py-4 mt-3">
                <asp:Button ID="Button2" runat="server" Text="Clear" cssclass="btn btn-danger btn-md" />
            </div>
                    </div>
                </div>
            </div>
        </div>
            </div>
        </div>   
</asp:Content>

