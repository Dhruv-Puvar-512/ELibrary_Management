<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminAuthorManagement.aspx.cs" Inherits="ELibraryManagement.adminAuthorManagment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        //$(document).ready(function () {
        //$('.table').DataTable();
        // });
        //$('.table1').DataTable();

        $(document).ready(function () {
            $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="my-3">

        <div class="container">
            <div class="row">
                <div class="col-md-5">

                    <div class="card">
                        <div class="card-body">

                            <div class="row">
                                <div class="col">
                                    <center>
                                        <h4>Author Details</h4>
                                    </center>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col">
                                    <center>
                                        <img width="100" class="img-fluid" src="img/imgs/writer.png" />
                                    </center>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col">
                                    <hr>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-5">
                                    <label>Author ID</label>
                                    <div class="form-group">
                                        <div class="input-group">
                                            <asp:TextBox CssClass="form-control" ID="aidtb" runat="server" placeholder="ID"></asp:TextBox>
                                            <asp:Button class="btn btn-primary mx-2 px-2 py-1 rounded-circle" ID="Button1" runat="server" Text="Go" OnClick="Button1_Click" />
                                        </div>
                                    </div>
                                </div>

                                <div class="col-md-7">
                                    <label>Author Name</label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="anametb" runat="server" placeholder="Author Name"></asp:TextBox>

                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-4">
                                    <asp:Button ID="Button2" class="btn btn-lg btn-block btn-success" runat="server" Text="Add" OnClick="Button2_Click" />
                                </div>
                                <div class="col-4">
                                    <asp:Button ID="Button3" class="btn btn-lg btn-block btn-warning" runat="server" Text="Update" OnClick="Button3_Click" />
                                </div>
                                <div class="col-4">
                                    <asp:Button ID="Button4" class="btn btn-lg btn-block btn-danger" runat="server" Text="Delete" OnClick="Button4_Click" />
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

                <div class="col-md-7">

                    <div class="card">
                        <div class="card-body">



                            <div class="row">
                                <div class="col">
                                    <center>
                                        <h4>Author List</h4>
                                    </center>
                                </div>
                            </div>



                            <div class="row">
                                <div class="col">
                                    <hr>
                                </div>
                            </div>
                            <div class="row">
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:elibraryDBConnectionString %>" SelectCommand="SELECT * FROM [author_master_tbl]"></asp:SqlDataSource>
                                <div class="col">
                                    <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" DataSourceID="SqlDataSource1"></asp:GridView>
                                </div>
                            </div>


                        </div>
                    </div>


                </div>

            </div>
        </div>
    </section>
</asp:Content>
