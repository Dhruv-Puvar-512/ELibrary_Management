<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="usersignup.aspx.cs" Inherits="ELibraryManagement.usersignup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="my-3">

        <div class="container" style="width: 850px;">
            <div class="card">
                <div class="card-body">
                    <div class="row">
                        <div class="col">
                            <center>
                                <img width="100" class="img-fluid" src="img/imgs/generaluser.png" />
                            </center>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <center>
                                <h4>Your Profile</h4>
                                <span>Account Status - </span>
                                <asp:Label class="badge badge-pill badge-info" ID="Label1" runat="server" Text="Your status"></asp:Label>
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
                            <label>Full Name</label>
                            <div class="form-group">
                                <asp:TextBox CssClass="form-control" ID="tbName" runat="server" placeholder="Full Name"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="namevalid" runat="server" Display="Dynamic" ControlToValidate="tbName"
                                    ErrorMessage="enter the name" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <label>Date of Birth</label>
                            <div class="form-group">
                                <asp:TextBox CssClass="form-control" ID="tbDob" runat="server" placeholder="Password" TextMode="Date"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <label>Contact No</label>
                            <div class="form-group">
                                <asp:TextBox CssClass="form-control" ID="tbContact" runat="server" placeholder="Contact No" TextMode="Number"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="contactvalid" runat="server" Display="Dynamic" ControlToValidate="tbContact"
                                    ErrorMessage="enter the contact" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <label>Email ID</label>
                            <div class="form-group">
                                <asp:TextBox CssClass="form-control" ID="tbEmail" runat="server" placeholder="Email ID" TextMode="Email"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-4">
                            <label>State</label>
                            <div class="form-group">
                                <asp:DropDownList class="form-control" ID="StateDropDownList" runat="server">
                                    <asp:ListItem Text="Select" Value="select" />
                                    <asp:ListItem Text="Andhra Pradesh" Value="Andhra Pradesh" />
                                    <asp:ListItem Text="Arunachal Pradesh" Value="Arunachal Pradesh" />
                                    <asp:ListItem Text="Assam" Value="Assam" />
                                    <asp:ListItem Text="Bihar" Value="Bihar" />
                                    <asp:ListItem Text="Chhattisgarh" Value="Chhattisgarh" />
                                    <asp:ListItem Text="Rajasthan" Value="Rajasthan" />
                                    <asp:ListItem Text="Goa" Value="Goa" />
                                    <asp:ListItem Text="Gujarat" Value="Gujarat" />
                                    <asp:ListItem Text="Haryana" Value="Haryana" />
                                    <asp:ListItem Text="Himachal Pradesh" Value="Himachal Pradesh" />
                                    <asp:ListItem Text="Jammu and Kashmir" Value="Jammu and Kashmir" />
                                    <asp:ListItem Text="Jharkhand" Value="Jharkhand" />
                                    <asp:ListItem Text="Karnataka" Value="Karnataka" />
                                    <asp:ListItem Text="Kerala" Value="Kerala" />
                                    <asp:ListItem Text="Madhya Pradesh" Value="Madhya Pradesh" />
                                    <asp:ListItem Text="Maharashtra" Value="Maharashtra" />
                                    <asp:ListItem Text="Manipur" Value="Manipur" />
                                    <asp:ListItem Text="Meghalaya" Value="Meghalaya" />
                                    <asp:ListItem Text="Mizoram" Value="Mizoram" />
                                    <asp:ListItem Text="Nagaland" Value="Nagaland" />
                                    <asp:ListItem Text="Odisha" Value="Odisha" />
                                    <asp:ListItem Text="Punjab" Value="Punjab" />
                                    <asp:ListItem Text="Rajasthan" Value="Rajasthan" />
                                    <asp:ListItem Text="Sikkim" Value="Sikkim" />
                                    <asp:ListItem Text="Tamil Nadu" Value="Tamil Nadu" />
                                    <asp:ListItem Text="Telangana" Value="Telangana" />
                                    <asp:ListItem Text="Tripura" Value="Tripura" />
                                    <asp:ListItem Text="Uttar Pradesh" Value="Uttar Pradesh" />
                                    <asp:ListItem Text="Uttarakhand" Value="Uttarakhand" />
                                    <asp:ListItem Text="West Bengal" Value="West Bengal" />
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="statevalid" runat="server" Display="Dynamic" ControlToValidate="StateDropDownList"
                                    ErrorMessage="select the state" ForeColor="Red" InitialValue="select" SetFocusOnError="True"></asp:RequiredFieldValidator>

                            </div>
                        </div>
                        <div class="col-md-4">
                            <label>City</label>
                            <div class="form-group">
                                <asp:TextBox class="form-control" ID="tbCity" runat="server" placeholder="City"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <label>Pincode</label>
                            <div class="form-group">
                                <asp:TextBox class="form-control" ID="tbPincode" runat="server" placeholder="Pincode" TextMode="Number"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <label>Full Address</label>
                            <div class="form-group">
                                <asp:TextBox CssClass="form-control" ID="tbAddress" runat="server" placeholder="Full Address" TextMode="MultiLine" Rows="3"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                    <div class="row mt-2">
                        <div class="col">
                            <center>
                                <h4>Login Credentials
                                </h4>
                            </center>
                        </div>
                    </div>
                    <hr>
                    <div class="row">
                        <div class="col-md-6">
                            <label>User ID</label>
                            <div class="form-group">
                                <asp:TextBox class="form-control" ID="tbUserid" runat="server" placeholder="User ID"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="useridvalid" runat="server" Display="Dynamic" ControlToValidate="tbUserid"
                                    ErrorMessage="enter the user id" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <label>Password</label>
                            <div class="form-group">
                                <asp:TextBox class="form-control" ID="tbPassword" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="passwordvalid" runat="server" Display="Dynamic" ControlToValidate="tbPassword"
                                    ErrorMessage="enter the password" ForeColor="Red"></asp:RequiredFieldValidator>

                            </div>
                        </div>

                    </div>
                    <div class="row">
                        <div class="col-8 mx-auto">
                            <center>
                                <div class="form-group">
                                    <asp:Button class="btn btn-success btn-block btn-lg" ID="Button1" runat="server" Text="Sign Up" OnClick="Button1_Click" />
                                </div>
                            </center>
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

    </section>

</asp:Content>
