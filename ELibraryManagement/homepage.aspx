<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="homepage.aspx.cs" Inherits="ELibraryManagement.homepage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section>
        <img class="img-fluid" src="img/imgs/home-bg.jpg" />
    </section>

    <section>

    <div id="carouselExampleControls" class="carousel slide carousel-fade " data-ride="carousel">
        <ol class="carousel-indicators">
            <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
        </ol>
        <div class="carousel-inner">
            <div class="carousel-item active ">
                <img class="d-block w-100 img-fluid" src="img/carousel/1.jpg" />
            </div>
            <div class="carousel-item">
                <img class="d-block w-100 img-fluid" src="img/carousel/2.jpg" />
            </div>
            <div class="carousel-item">
                <img class="d-block w-100 img-fluid" src="img/carousel/3.jpg" />
            </div>
        </div>
        <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>
    </section>


    <section>
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <center>
                        <h2>Our Features</h2>
                        <p><b>Our 3 Primary Features -</b></p>
                    </center>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4">
                    <center>
                        <img class="img-fluid" width="150" src="img/imgs/digital-inventory.png" />
                        <h4>Digital Book Inventory</h4>
                        <p class="text-justify">Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor. reprehenderit</p>
                    </center>
                </div>
                <div class="col-md-4">
                    <center>
                        <img class="img-fluid" width="150" src="img/imgs/search-online.png" />
                        <h4>Search Books</h4>
                        <p class="text-justify">Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor. reprehenderit</p>
                    </center>
                </div>
                <div class="col-md-4">
                    <center>
                        <img class="img-fluid" width="150" src="img/imgs/defaulters-list.png" />
                        <h4>Defaulter List</h4>
                        <p class="text-justify">Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor. reprehenderit</p>
                    </center>
                </div>
            </div>
        </div>
    </section>
    <section>
        <img class="img-fluid" src="img/imgs/in-homepage-banner.jpg" />
    </section>

    <section>
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <center>
                        <h2>Our Process</h2>
                        <p><b>We have a Simple 3 Step Process</b></p>
                    </center>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4">
                    <center>
                        <img class="img-fluid" width="150" src="img/imgs/sign-up.png" />
                        <h4>Sign Up</h4>
                        <p class="text-justify">Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor. reprehenderit</p>
                    </center>
                </div>
                <div class="col-md-4">
                    <center>
                        <img class="img-fluid" width="150" src="img/imgs/book-online.png" />
                        <h4>Share Knowledge</h4>
                        <p class="text-justify">Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor. reprehenderit</p>
                    </center>
                </div>
                <div class="col-md-4">
                    <center>
                        <img class="img-fluid" width="150" src="img/imgs/library.png" />
                        <h4>Visit Us</h4>
                        <p class="text-justify">Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor. reprehenderit</p>
                    </center>
                </div>
            </div>
        </div>
    </section>

</asp:Content>
