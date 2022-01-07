<%@ Page Title="" Language="C#" MasterPageFile="~/user.Master" AutoEventWireup="true" CodeBehind="uservaccin.aspx.cs" Inherits="WebApplication2.previousdetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <div class="row">
            
            <div class="col-md-10">
                    <div class="card">
                        <div class="card-body">
                            <div class="row">
                                <div class="col">
                                    <center>
                                        <h4>VACCINE DETAILS</h4>
                                    </center>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <hr>
                                </div>
                            </div>
                            <div class="row">
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ADOPETDBConnectionString5 %>" SelectCommand="SELECT * FROM [vaccintb]"></asp:SqlDataSource>
                                <div class="col">
                                    <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="vacid" DataSourceID="SqlDataSource1">
                                        <Columns>
                                            <asp:BoundField DataField="vacid" HeaderText="vacid" InsertVisible="False" ReadOnly="True" SortExpression="vacid" />
                                            <asp:BoundField DataField="Pet" HeaderText="Pet" SortExpression="Pet" />
                                            <asp:BoundField DataField="Type" HeaderText="Type" SortExpression="Type" />
                                            <asp:BoundField DataField="Vaccinename" HeaderText="Vaccinename" SortExpression="Vaccinename" />
                                            <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
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
