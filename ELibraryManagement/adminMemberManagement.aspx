<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminMemberManagement.aspx.cs" Inherits="ELibraryManagement.adminMemberManagement" %>


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
        <div class="container-fluid">
            <div class="row ">
                <div class="col-md-5 ">
                    <div class="card ">
                        <div class="card-body">
                            <div class="row">
                                <div class="col">
                                    <center>
                                        <h4>Member Details</h4>
                                    </center>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <center>
                                        <img width="100"  class="img-fluid" src="img/imgs/generaluser.png" />
                                    </center>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <hr>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <label>Member ID</label>
                                    <div class="form-group">
                                        <div class="input-group">
                                            <asp:TextBox CssClass="form-control" ID="uidtb" runat="server" placeholder="User ID"></asp:TextBox>
                                            <asp:LinkButton class="btn btn-primary mx-1 px-2 py-1 font-weight-bold rounded-circle" ID="LinkButton4" runat="server" Text="Go" OnClick="LinkButton4_Click"></asp:LinkButton>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <label>Full Name</label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="unametb" runat="server" placeholder="Full Name" ReadOnly="True"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <label>Account Status</label>
                                    <div class="form-group">
                                        <div class="input-group">
                                            <asp:TextBox CssClass="form-control mr-1" ID="ustatustb" runat="server" placeholder="Account Status" ReadOnly="True"></asp:TextBox>
                                            <asp:LinkButton class="btn btn-success mr-1" ID="LinkButton1" OnClick="LinkButton1_Click" runat="server"><i class="fas fa-check-circle mt-1"></i></asp:LinkButton>
                                            <asp:LinkButton class="btn btn-warning mr-1" ID="LinkButton2" OnClick="LinkButton2_Click" runat="server"><i class="far fa-pause-circle mt-1"></i></asp:LinkButton>
                                            <asp:LinkButton class="btn btn-danger mr-1" ID="LinkButton3" OnClick="LinkButton3_Click" runat="server"><i class="fas fa-times-circle mt-1"></i></asp:LinkButton>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-3">
                                    <label>DOB</label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="udobtb" runat="server" placeholder="DOB" ReadOnly="True"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <label>Contact No</label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="ucontacttb" runat="server" placeholder="Contact" ReadOnly="True"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-md-5">
                                    <label>Email ID</label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="uemailtb" runat="server" placeholder="Email ID" ReadOnly="True"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-4">
                                    <label>State</label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="ustatetb" runat="server" placeholder="State" ReadOnly="True"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <label>City</label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="ucitytb" runat="server" placeholder="City" ReadOnly="True"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <label>Pin Code</label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="upintb" runat="server" placeholder="Pin Code" ReadOnly="True"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-12">
                                    <label>Full Postal Address</label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="uaddresstb" runat="server" placeholder="Full Postal Address" TextMode="MultiLine" Rows="2" ReadOnly="True"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-8 mx-auto">
                                    <asp:Button ID="udeletetb" class="btn btn-lg btn-block btn-danger" runat="server" Text="Delete User" OnClick="udeletetb_Click" />

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
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:elibraryDBConnectionString %>" SelectCommand="SELECT * FROM [member_master_tbl]"></asp:SqlDataSource>
                            <div class="row">
                                <div class="col">
                                    <center>
                                        <h4>Member List</h4>
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
                                    <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="member_id" DataSourceID="SqlDataSource1">
                                        <Columns>
                                            <asp:BoundField DataField="member_id" HeaderText="Member Id" ReadOnly="True" SortExpression="member_id" />
                                            <asp:BoundField DataField="full_name" HeaderText="Name" SortExpression="full_name" />
                                            <asp:BoundField DataField="account_status" HeaderText="Status" SortExpression="account_status" />
                                            <asp:BoundField DataField="contact_no" HeaderText="Contact" SortExpression="contact_no" />
                                            <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
                                            <asp:BoundField DataField="state" HeaderText="State" SortExpression="state" />
                                            <asp:BoundField DataField="city" HeaderText="City" SortExpression="city" />
                                        </Columns>
                                    </asp:GridView>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
