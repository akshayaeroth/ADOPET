<%@ Page Title="" Language="C#" MasterPageFile="~/user.Master" AutoEventWireup="true" CodeBehind="usermypet.aspx.cs" Inherits="WebApplication2.adoptpet" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
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
                                    <h4>PET DETAILS</h4>
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="100px" src="images/petcaree.jpg" />
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
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <label>Pet Type&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </label>
                                <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Pet Type"></asp:TextBox>
                                &nbsp;
                              <div class="form-group">
                                  <div class="input-group">
                                  </div>
                              </div>
                            </div>
                            <div class="col">
                                <label>Pet Breed&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </label>
                                <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Breed"></asp:TextBox>
                                <Label>Age</Label>&nbsp;&nbsp;&nbsp;
                                <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
                                <br />
                                <br />
                                </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <label>Owner ID&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;</label><asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                                &nbsp;
                                <div class="form-group">
                                    <br />
                                </div>
                                <label>Pet Description&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </label>
                                <asp:TextBox ID="TextBox7" runat="server" TextMode="MultiLine"></asp:TextBox>
                                &nbsp;
                                <div class="form-group">
                                </div>
                                <div class="form-group">
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <label>Contact&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</label><asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="contact no" Rows="2"></asp:TextBox>
                                &nbsp;
                                <div class="form-group">
                                    <br />
                                    Pet Image&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:FileUpload class="form-control" ID="FileUpload1" runat="server" />
                                    <br />
                                    <br />
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <asp:Button ID="Button1" class="btn btn-lg btn-block btn-success" runat="server" Text="Add" OnClick="Button1_Click" />
                                <br />
                            </div>
                            <div class="col">
                                <br />
                            </div>
                            <div class="col">
                                <asp:Button ID="Button2" class="btn btn-lg btn-block btn-danger" runat="server" Text="Delete" OnClick="Button2_Click" />
                            </div>
                        </div>
                    </div>
                </div>
                <a href="userhome.aspx"><< Back to Home   e   </a>
                <br />
            </div>
            <div class="col-md-6">
                    <div class="card">
                        <div class="card-body">
                            <div class="row">
                                <div class="col">
                                    <center>
                                        <h4>MY PETS</h4>
                                    </center>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <hr>
                                </div>
                            </div>
                            <div class="row">
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ADOPETDBConnectionString7 %>" SelectCommand="SELECT * FROM [pettb] WHERE ([Pet_id] = @Pet_id)">
                                    <SelectParameters>
                                        <asp:SessionParameter Name="Pet_id" SessionField="uid" Type="String" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                                <div class="col">
                                    <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Pet_id" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None">
                                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                        <Columns>
                                            <asp:BoundField DataField="Pet_id" HeaderText="Pet_id" ReadOnly="True" SortExpression="Pet_id" />
                                            <asp:BoundField DataField="Pet_type" HeaderText="Pet_type" SortExpression="Pet_type" />
                                            <asp:BoundField DataField="Pet_breed" HeaderText="Pet_breed" SortExpression="Pet_breed" />
                                            <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
                                            <asp:BoundField DataField="Owner_id" HeaderText="Owner_id" SortExpression="Owner_id" />
                                            <asp:BoundField DataField="Pet_description" HeaderText="Pet_description" SortExpression="Pet_description" />
                                            <asp:BoundField DataField="Contact" HeaderText="Contact" SortExpression="Contact" />
                                            <asp:BoundField DataField="Pet_image" HeaderText="Pet_image" SortExpression="Pet_image" />
                                        </Columns>
                                        <EditRowStyle BackColor="#999999" />
                                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                        <SortedAscendingCellStyle BackColor="#E9E7E2" />
                                        <SortedAscendingHeaderStyle BackColor="#506C8C" />
                                        <SortedDescendingCellStyle BackColor="#FFFDF8" />
                                        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                                    </asp:GridView>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
        </div>
    </div>
</asp:Content>
