<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="adcustomers.aspx.cs" Inherits="WebApplication2.adcustomers" %>
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
                                        <h4>CUSTOMER DETAILS</h4>
                                    </center>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <hr>
                                </div>
                            </div>
                            <div class="row">
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ADOPETDBConnectionString2 %>" SelectCommand="SELECT [uid], [Full_name], [DOB], [Contact_no], [Email_id], [State], [City], [Pincode], [Full_address] FROM [customertb]"></asp:SqlDataSource>
                                <div class="col">
                                    <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="uid" DataSourceID="SqlDataSource1">
                                        <Columns>
                                            <asp:BoundField DataField="uid" HeaderText="uid" SortExpression="uid" InsertVisible="False" ReadOnly="True" />
                                            <asp:BoundField DataField="Full_name" HeaderText="Full_name" SortExpression="Full_name" />
                                            <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" />
                                            <asp:BoundField DataField="Contact_no" HeaderText="Contact_no" SortExpression="Contact_no" />
                                            <asp:BoundField DataField="Email_id" HeaderText="Email_id" SortExpression="Email_id" />
                                            <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
                                            <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                                            <asp:BoundField DataField="Pincode" HeaderText="Pincode" SortExpression="Pincode" />
                                            <asp:BoundField DataField="Full_address" HeaderText="Full_address" SortExpression="Full_address" />
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
