<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="advet.aspx.cs" Inherits="WebApplication2.advet" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container-fluid">
        <div class="row">
            <div class="col-md-6">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>VETERINARIAN DETAILS</h4>
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="100px" src="images/vett.png" />
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
                                <asp:Label ID="Label1" runat="server" Text="Vet Name"></asp:Label>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
                                <br />
                                <br />
                                <br />
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <label>Hospital Name</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Hospital Name" TextMode="MultiLine"></asp:TextBox>
                                &nbsp;
                              <div class="form-group">
                                  <div class="input-group">
                                  </div>
                              </div>
                            </div>
                            <div class="col">
                                <label>Address </label>
                                <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Address" TextMode="MultiLine"></asp:TextBox>
                                &nbsp;<div class="form-group">
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <label>Service From&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </label>
                                &nbsp;<asp:TextBox ID="TextBox8" runat="server" TextMode="Time"></asp:TextBox>
                                &nbsp;<br />
                                <br />
                                <asp:Label ID="Label2" runat="server" Text="Service To"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:TextBox ID="TextBox11" runat="server" TextMode="Time"></asp:TextBox>
                                <br />
                                <br />
&nbsp;<div class="form-group">
                                    <br />
                                </div>
                                <label>Phone Number&nbsp;</label>         <asp:TextBox ID="TextBox7" runat="server" TextMode="Number"></asp:TextBox>
                                &nbsp;<br />
&nbsp;<div class="form-group">
                                </div>
                                <div class="form-group">
                                </div>
                            </div>
                        </div>   
                        <div class="row">
                            <div class="col">
                                <asp:Button ID="Button1" class="btn btn-lg btn-block btn-success" runat="server" Text="Add" OnClick="Button1_Click" />
                                <br />
                                <br />
                            </div>
                            <div class="col">
                                <asp:Button ID="Button3" class="btn btn-lg btn-block btn-warning" runat="server" Text="Update" OnClick="Button3_Click" />
                                <br />
                                <br />
                            </div>
                            <div class="col">
                                <asp:Button ID="Button2" class="btn btn-lg btn-block btn-danger" runat="server" Text="Delete" OnClick="Button2_Click" />
                            </div>
                        </div>
                    </div>
                </div>
                <a href="adhome.aspx"><< Back to Home   </a>
                <br />
            </div>
            <div class="col-md-6">
                    <div class="card">
                        <div class="card-body">
                            <div class="row">
                                <div class="col">
                                    <center>
                                        <h4>VETERINARIANS</h4>
                                    </center>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <hr>
                                </div>
                            </div>
                            <div class="row">
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ADOPETDBConnectionString3 %>" SelectCommand="SELECT * FROM [vettb]"></asp:SqlDataSource>
                                <div class="col">
                                    <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                                        <Columns>
                                            <asp:BoundField DataField="Vet_name" HeaderText="Vet_name" SortExpression="Vet_name" />
                                            <asp:BoundField DataField="Hospital_name" HeaderText="Hospital_name" SortExpression="Hospital_name" />
                                            <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                                            <asp:BoundField DataField="Service_from" HeaderText="Service_from" SortExpression="Service_from" />
                                            <asp:BoundField DataField="Service_to" HeaderText="Service_to" SortExpression="Service_to" />
                                            <asp:BoundField DataField="Phone_no" HeaderText="Phone_no" SortExpression="Phone_no" />
                                        </Columns>
                                    </asp:GridView>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
        </div>
    </div>
</asp:Content>
