<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">  
   <div id="carousel-thumb" class="carousel slide carousel-fade carousel-thumbnails" data-ride="carousel">
    <!--Slides-->
    <div class="carousel-inner" role="listbox">  
               
        <div class="carousel-item active">                  
            <img class="d-inline-block w-100" src="carousal/Anex1.jpg" alt="First slide">
        </div>
        <div class="carousel-item">
            <img class="d-inline-block w-100" src="carousal/NAAC.jpg" alt="Second slide">
        </div>
        <div class="carousel-item">
            <img class="d-inline-block  w-100" src="carousal/dron.jpg" alt="Third slide">
        </div>
    </div>
    <a class="carousel-control-prev" href="#carousel-thumb" role="button" data-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
    </a>
    <a class="carousel-control-next" href="#carousel-thumb" role="button" data-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
    </a>
    <!--/.Controls--> 
    <ol class="carousel-indicators">
        <a class="btn btn-unique b" href="Sregister.aspx" target="_blank"><i class="fa fa-play-circle"></i> <b>Online प्रवेश प्रक्रिये साठी येथे क्लिक करा</b></a>
        <li data-target="#carousel-thumb" data-slide-to="0" class="active"> <img class="d-inline-block w-100 " src="carousal/Anex1.jpg" class="img-fluid"></li>
        <li data-target="#carousel-thumb" data-slide-to="1"><img class="d-inline-block w-100 " src="carousal/NAAC.jpg" class="img-fluid"></li>
        <li data-target="#carousel-thumb" data-slide-to="2"><img class="d-inline-block w-100 " src="carousal/dron.jpg" class="img-fluid"></li>
    </ol>
                </div>
           
</asp:Content>

