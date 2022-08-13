<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="userlogin.aspx.cs" Inherits="ELibraryManagement.userlogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="my-3">

        <div class="container">
            <div class="row">
                <div class="col-md-6 mx-auto">
                    <div class="card">
                        <div class="card-body">
                            <div class="row">
                                <div class="col">
                                    <center>
                                        <img width="150" class="img-fluid" src="img/imgs/generaluser.png" />
                                    </center>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <center>
                                        <h3>Member Login</h3>
                                    </center>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <hr>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <label>Member ID</label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="memberidtb" runat="server" placeholder="Member ID"></asp:TextBox>
                                    </div>
                                    <label>Password</label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="passwordtb" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                                    </div>
                                    <div class="form-group">
                                        <asp:Button class="btn btn-success btn-block btn-lg" ID="Button1" runat="server" Text="Login" OnClick="login" />
                                    </div>
                                    <div class="form-group">
                                        <asp:Button class="btn btn-primary btn-block btn-lg" ID="Button2" runat="server" Text="Sign Up" OnClick="signup" />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <p class="my-2">
                        <a href="homepage.aspx">
                            <button id="Backtohome" type="button" class="btn btn-secondary ">Back</button></a>
                        << Back To Home
                    </p>
                    
                </div>
            </div>
        </div>
    </section>

</asp:Content>
