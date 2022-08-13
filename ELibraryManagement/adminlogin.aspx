<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminlogin.aspx.cs" Inherits="ELibraryManagement.adminlogin" %>

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
                                        <img width="150" class="img-fluid" src="img/imgs/adminuser.png" />
                                    </center>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <center>
                                        <h3>Admin Login</h3>
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
                                    <label>Admin ID</label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="adminidtb" runat="server" placeholder="Admin ID"></asp:TextBox>
                                    </div>
                                    <label>Password</label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="passwordtb" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                                    </div>
                                    <div class="form-group">
                                        <asp:Button class="btn btn-success btn-block btn-lg" ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" />
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
