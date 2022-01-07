<%@ Page Title="" Language="C#" MasterPageFile="~/caretaker.Master" AutoEventWireup="true" CodeBehind="caretakerupdateprofile.aspx.cs" Inherits="WebApplication2.caretakerupdateprofile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
      <div class="row">
         <div class="col-md-10">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>UPDATE PASSWORD</h4>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <img width="100px" src="images/user.png" />
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-4">
                        <label>Caretaker ID</label>
                        <div class="form-group">
                           <div class="input-group">
                              &nbsp;<asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="caretaker ID"></asp:TextBox>
                               </div>
                            </div>
                        </div>
                     </div>
                   <div class="row">
                     <div class="col-md-4">
                        <label>Old Password</label>
                        <div class="form-group">
                           <div class="input-group">
                              <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Old password"></asp:TextBox>
                               </div>
                            </div>
                        </div>
                     </div>
                                     
                     <div class="col-md-8">
                        <label>New Password</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="New Password"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-4">
                     </div>
                     <div class="col-4">
                        <asp:Button ID="Button3" class="btn btn-lg btn-block btn-warning" runat="server" Text="Update" OnClick="Button3_Click" />
                     </div>
                     <div class="col-4">
                     </div>
                  </div>
               </div>
            </div>
            <br>
         </div>
         
      </div>
   
</asp:Content>
