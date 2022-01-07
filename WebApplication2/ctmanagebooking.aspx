<%@ Page Title="" Language="C#" MasterPageFile="~/caretaker.Master" AutoEventWireup="true" CodeBehind="ctmanagebooking.aspx.cs" Inherits="WebApplication2.ctmanagebookingaspx" %>
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
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <hr>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <br />
                                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <br />
                                    <br />
                                    <br />
                                    <div class="container-fluid">
                                        <div class="row">
                                            <div class="col-md-10">
                                                <div class="card">
                                                    <div class="card-body">
                                                        <div class="row">
                                                            <div class="col">
                                                                <center>
                                                                    <h4>MANAGE BOOKINGS</h4>
                                                                </center>
                                                            </div>
                                                        </div>
                                                        <div class="row">
                                                            <div class="col">
                                                                <hr />
                                                            </div>
                                                        </div>
                                                        <div class="row">
                                                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ADOPETDBConnectionString13 %>" SelectCommand="SELECT * FROM [homecaretb]" UpdateCommand="UPDATE [homecaretb] SET [Booking_status] = @Booking_status WHERE [bid] = @bid" DeleteCommand="DELETE FROM [homecaretb] WHERE [bid] = @bid" InsertCommand="INSERT INTO [homecaretb] ([bid], [Booked_for], [Details], [Pet_type], [Pet_breed], [Owner_name], [Address], [Pin], [Slot], [Booking_status]) VALUES (@bid, @Booked_for, @Details, @Pet_type, @Pet_breed, @Owner_name, @Address, @Pin, @Slot, @Booking_status)">
                                                                <DeleteParameters>
                                                                    <asp:Parameter Name="bid" Type="String" />
                                                                </DeleteParameters>
                                                                <InsertParameters>
                                                                    <asp:Parameter Name="bid" Type="String" />
                                                                    <asp:Parameter Name="Booked_for" Type="String" />
                                                                    <asp:Parameter Name="Details" Type="String" />
                                                                    <asp:Parameter Name="Pet_type" Type="String" />
                                                                    <asp:Parameter Name="Pet_breed" Type="String" />
                                                                    <asp:Parameter Name="Owner_name" Type="String" />
                                                                    <asp:Parameter Name="Address" Type="String" />
                                                                    <asp:Parameter Name="Pin" Type="String" />
                                                                    <asp:Parameter Name="Slot" Type="String" />
                                                                    <asp:Parameter Name="Booking_status" Type="String" />
                                                                </InsertParameters>
                                                                <UpdateParameters>
                                                                    <asp:Parameter Name="Booked_for" Type="String" />
                                                                    <asp:Parameter Name="Details" Type="String" />
                                                                    <asp:Parameter Name="Pet_type" Type="String" />
                                                                    <asp:Parameter Name="Pet_breed" Type="String" />
                                                                    <asp:Parameter Name="Owner_name" Type="String" />
                                                                    <asp:Parameter Name="Address" Type="String" />
                                                                    <asp:Parameter Name="Pin" Type="String" />
                                                                    <asp:Parameter Name="Slot" Type="String" />
                                                                    <asp:Parameter Name="Booking_status" Type="String" />
                                                                    <asp:Parameter Name="bid" Type="String" />
                                                                </UpdateParameters>
                                                            </asp:SqlDataSource>
                                                            <div class="col">
                                                                <asp:GridView ID="GridView2" runat="server" class="table table-striped table-bordered" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="bid">
                                                                    <Columns>
                                                                        <asp:CommandField ShowEditButton="True" />
                                                                        <asp:BoundField DataField="bid" HeaderText="bid" ReadOnly="True" SortExpression="bid" />
                                                                        <asp:BoundField DataField="Booked_for" ReadOnly="True" HeaderText="Booked_for" SortExpression="Booked_for" />
                                                                        <asp:BoundField DataField="Details" ReadOnly="True" HeaderText="Details" SortExpression="Details" />
                                                                        <asp:BoundField DataField="Pet_type" ReadOnly="True" HeaderText="Pet_type" SortExpression="Pet_type" />
                                                                        <asp:BoundField DataField="Pet_breed" ReadOnly="True" HeaderText="Pet_breed" SortExpression="Pet_breed" />
                                                                        <asp:BoundField DataField="Owner_name" ReadOnly="True" HeaderText="Owner_name" SortExpression="Owner_name" />
                                                                        <asp:BoundField DataField="Address" ReadOnly="True" HeaderText="Address" SortExpression="Address" />
                                                                        <asp:BoundField DataField="Pin" ReadOnly="True" HeaderText="Pin" SortExpression="Pin" />
                                                                        <asp:BoundField DataField="Slot" ReadOnly="True" HeaderText="Slot" SortExpression="Slot" />
                                                                        <asp:BoundField DataField="Booking_status" HeaderText="Booking_status" SortExpression="Booking_status" />
                                                                    </Columns>
                                                                    <FooterStyle BackColor="White" ForeColor="#000066" />
                                                                    <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                                                                    <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                                                                    <RowStyle ForeColor="#000066" />
                                                                    <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                                                                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                                                    <SortedAscendingHeaderStyle BackColor="#007DBB" />
                                                                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                                                    <SortedDescendingHeaderStyle BackColor="#00547E" />
                                                                </asp:GridView>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
        </div>
    </div>
</asp:Content>
