<%@ Page Title="" Language="C#" MasterPageFile="~/caretaker.Master" AutoEventWireup="true" CodeBehind="ctmanagevaccin.aspx.cs" Inherits="WebApplication2.ctmanagevaccin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    <table style="width:100%;">
        <tr>
            <td>
        <asp:Label ID="Label1" runat="server" Text="Pet"></asp:Label>
                <br />
            </td>
            <td>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <br />
            </td>
        </tr>
        <tr>
            <td>
    <asp:Label ID="Label2" runat="server" Text="Type"></asp:Label>
                <br />
            </td>
            <td>
    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
    <asp:Label ID="Label3" runat="server" Text="Vaccin Name"></asp:Label>
                <br />
                <br />
            </td>
            <td>
    <asp:DropDownList ID="DropDownList1" runat="server">
        <asp:ListItem>Select</asp:ListItem>
        <asp:ListItem Enabled="False">DHPP</asp:ListItem>
        <asp:ListItem>Distemper-parvovirus</asp:ListItem>
        <asp:ListItem>DHPP-rabies</asp:ListItem>
        <asp:ListItem>Rabies</asp:ListItem>
        <asp:ListItem>Boosters</asp:ListItem>
        <asp:ListItem>Titer</asp:ListItem>
        <asp:ListItem>Panleukopenia</asp:ListItem>
        <asp:ListItem>Feline Calicivirus</asp:ListItem>
        <asp:ListItem>Feline viral rhinotracheitis</asp:ListItem>
        <asp:ListItem>Bordetella</asp:ListItem>
        <asp:ListItem>Felv</asp:ListItem>
    </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>
    <asp:Label ID="Label4" runat="server" Text="Age"></asp:Label>
            </td>
            <td>
    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                <br />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <br />
                <asp:Button ID="Button1" class="btn  btn-block btn-success" runat="server" Text="ADD" Width="105px" OnClick="Button1_Click" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" class="btn  btn-block btn-danger" runat="server" Text="DELETE" OnClick="Button2_Click" />
                <br />
            </td>
        </tr>
    </table>
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
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ADOPETDBConnectionString4 %>" SelectCommand="SELECT * FROM [vaccintb]"></asp:SqlDataSource>
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
