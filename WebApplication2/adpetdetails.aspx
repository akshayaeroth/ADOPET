<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="adpetdetails.aspx.cs" Inherits="WebApplication2.adpetdetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        $(document).ready(function () {

            //$(document).ready(function () {
            //$('.table').DataTable();
            // });

            $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
            //$('.table1').DataTable();
        });
    </script>
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
                                        <h4>PET DETAILS</h4>
                                    </center>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <hr>
                                </div>
                            </div>
                            <div class="row">
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ADOPETDBConnectionString10 %>" SelectCommand="SELECT [Pet_type], [Pet_breed], [Age], [Owner_id], [Pet_description], [Contact], [Pet_image] FROM [pettb]"></asp:SqlDataSource>
                                <div class="col">
                                    <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                                        <Columns>
                                            <asp:BoundField DataField="Pet_type" HeaderText="Pet_type" SortExpression="Pet_type" />
                                            <asp:BoundField DataField="Pet_breed" HeaderText="Pet_breed" SortExpression="Pet_breed" />
                                            <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
                                            <asp:BoundField DataField="Owner_id" HeaderText="Owner_id" SortExpression="Owner_id" />
                                            <asp:BoundField DataField="Pet_description" HeaderText="Pet_description" SortExpression="Pet_description" />
                                            <asp:BoundField DataField="Contact" HeaderText="Contact" SortExpression="Contact" />
                                            <asp:BoundField DataField="Pet_image" HeaderText="Pet_image" SortExpression="Pet_image" />
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
