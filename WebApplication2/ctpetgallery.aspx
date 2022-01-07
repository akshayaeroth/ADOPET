<%@ Page Title="" Language="C#" MasterPageFile="~/caretaker.Master" AutoEventWireup="true" CodeBehind="ctpetgallery.aspx.cs" Inherits="WebApplication2.ctpetgallery" %>
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
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ADOPETDBConnectionString12 %>" SelectCommand="SELECT [Pet_type], [Pet_breed], [Age], [Owner_id], [Pet_description], [Contact], [Pet_image] FROM [pettb]"></asp:SqlDataSource>
                                <div class="col">
                                    <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None">
                                        <AlternatingRowStyle BorderStyle="Double" BackColor="White" ForeColor="#284775" />
                                        <Columns>
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
