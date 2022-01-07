
<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="homepage.aspx.cs" Inherits="WebApplication2.homepage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section>
       <img src="images/INDZ.jpeg" class="img-fluid" width="100%"/>
      
   </section>
    <section>
        <div class="container">
         <div class="row">
            <div class="col-12">
               <center>
                  <h2>We have simple 3 step process</h2>
                  
               </center>
            </div>
         </div>

            <div class="row">
            <div class="col-md-4"> <%--this class is defining that this entire divison will take  4 parts of this entire row. which means4\12 till the device size is > a medium device size--%>
               <center>
                  <img width="150px" src="images/SIGNUP.jpeg" />
                  <h4>SIGNUP</h4>
                  <p class="text-justify">Say yes to signup forms...It allows you to 'sign up' to receive more information about ADOPET and stay up to date on ADOPET services</p>
               </center>
            </div>

                <div class="col-md-4">
               <center>
                  <img width="150px" src="images/gbwdcat.jpeg" />
                  <h4>ADOPT</h4>
                  <p class="text-justify">Adopt,Don't shop....The love you receive from animals is unconditional. So whether you purchase a tiny puppy or you rescue an abandoned one, the degrees of love will be the same. They don’t show the difference then why do we feel that buying the breed that you prefer might give you more happiness?Isn’t it a great deal that you get the chance to pick which life you want to save?</p>
               </center>
            </div>
            <div class="col-md-4">
               <center>

                  <img width="150px" src="images/tr.jpeg" />
                  <h4>PETCARE SERVICES</h4>
                  <p class="text-justify">Our Guarantee To You....With ADOPET,you will always receive professional,reliable,and loving care for your pets.We strive to exceed your expectations in providing outstanding service with every visit.If for any reason you are not completely satisfied with our service,we will correct it right away and offer a money back guarentee</p>
               </center>
            </div>
         </div>
      </div>


    </section>

</asp:Content>
