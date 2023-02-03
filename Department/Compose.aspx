<%@ Page Title="" Language="C#" MasterPageFile="~/Department/DeptMaster.master" AutoEventWireup="true" CodeFile="Compose.aspx.cs" Inherits="Admin_Compose" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div id="page-wrapper">
   <div class="main-page compose">
    <div class="col-md-12 compose-right widget-shadow">
					<div class="panel-default">                       
						<div class="panel-heading">
							Compose New Message 
						</div>
						<div class="panel-body">
							<div class="alert alert-info">
								Please fill details to send a new message
							</div>
							<form class="com-mail">
                                <asp:TextBox ID="TextBox1" runat="server" class="form-control1 control3" placeholder="To :" required></asp:TextBox>
								 <label for="TextBox1"></label>
                                 <asp:TextBox ID="TextBox2" runat="server" class="form-control1 control3" placeholder="Subject :" required></asp:TextBox>
								 <label for="TextBox2"></label>
								 <asp:TextBox ID="TextBox3" TextMode="MultiLine" runat="server" class="form-control1 control2" placeholder="Message:" required></asp:TextBox>
								 <label for="TextBox3"></label>		
                                <asp:Button ID="Button2" runat="server" Text="Send Messege" OnClick="Button2_Click"  />
							</form>
						</div>
					</div>
				</div>
         <div class="clearfix"> </div>	
         </div>
	</div>
</asp:Content>

