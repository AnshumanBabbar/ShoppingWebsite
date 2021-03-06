<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ContactUs2.aspx.cs" Inherits="prjShoppingArena.ContactUs2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title>Shopping Arena</title>

     <script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
      <meta http-equiv="X-UA-Compatible" content="IE-edge"/>
    <link href="css/custom.css" rel="stylesheet" />
   <%-- using bootstrap3--%>
       <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

      <script>

        $(document).ready(function myfunction() {

            $("#btnCart").click(function myfunction() {
                window.location.href = "Cart.aspx";
            });
        });
      </script>
</head>
<body>
    <form id="form1" runat="server">
        <div class ="navbar navbar-default navbar-fixed-top" role ="navigation">
            <div class ="container ">
                <div class ="navbar-header">
                    <button type="button" class ="navbar-toggle " data-toggle="collapse" data-target=".navbar-collapse">
                        <span class ="sr-only">Toggle navigation</span>
                        <span class ="icon-bar"></span>
                        <span class ="icon-bar"></span>
                        <span class ="icon-bar"></span>

                    </button>
                    <a class="navbar-brand" href="Default.aspx"> <span> <img src="icons/shoplogo.png" alt="img" height="30" /></span> Shopping Arena </a> 
                </div>
                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav navbar-right">
                        <li class="active" > <a href="Default.aspx">Home</a></li>
                        <li><a href="AboutUs2.aspx">About</a></li>
                        <li><a href="ContactUs2.aspx">Contact Us</a></li>
                       
                        <li class="dropdown">

                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">Products<b class="caret"></b> </a>
                            <ul class="dropdown-menu">
                                 <li><a href="ViewAllProducts.aspx">All Products</a>  </li>
                                <li role="separator" class="divider"></li> 
                                <li class="dropdown-header" > <a href="#"></a>Men</li>
                                <li role="separator" class="divider"></li>
                                <li><a href="ViewAllShirts.aspx">Shirts</a>  </li>
                                  <li><a href="#">Pants</a>  </li>
                                  <li><a href="ViewAllDenims.aspx">Denims</a>  </li>
                                 <li role="separator" class="divider"></li>
                                 <li class="dropdown-header" > <a href="#"></a>Women</li>
                                  <li role="separator" class="divider"></li>
                                <li><a href="#">Shirts</a>  </li>
                                  <li><a href="#">Pants</a>  </li>
                                  <li><a href="#">Denims</a>  </li>
                            </ul>

                        </li>
                           <li>
                         <button id="btnCart" class="btn btn-primary navbar-btn " type="button">
                                Cart <span class="badge " id="pCount" runat="server"></span>

                            </button></li>
                        <li> <asp:Button ID="btnLogin" CssClass="btn btn-default navbar-btn" runat="server" Text="Sign In"  /></li>
                        <li> <asp:Button ID="btnLogout" CssClass="btn btn-default navbar-btn" runat="server" Text="Sign Out"  /></li>
                       
                    </ul>

                </div>
            </div>

        </div> 
        <br />
        <br />
        <br />
   <div class="container">
       <div class="col-md-6">
         <div class="form-horizontal">
                <h3>Send us a message</h3>
                <hr />
                <div class="form-group">
                    <asp:Label ID="Label1" runat="server" CssClass="control-label" Text="Name"></asp:Label>
                    <asp:TextBox ID="txtName" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorUsername" CssClass="text-danger" runat="server" ErrorMessage="This field is Required !" ControlToValidate="txtName"></asp:RequiredFieldValidator>
                </div>
                <div class="form-group">
                    <asp:Label ID="Label2" runat="server" CssClass="control-label" Text="Email"></asp:Label>
                    <asp:TextBox ID="txtEmail"  CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" CssClass="text-danger" runat="server" ErrorMessage="This field is Required !" ControlToValidate="txtEmail"></asp:RequiredFieldValidator>
                </div>
                <div class="form-group">
                    <asp:Label ID="Label3" runat="server" CssClass="control-label" Text="Type your message here"></asp:Label>
                    <asp:TextBox ID="txtMessage" TextMode="MultiLine" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" CssClass="text-danger" runat="server" ErrorMessage="This field is Required !" ControlToValidate="txtMessage"></asp:RequiredFieldValidator>
                </div>
                <div class="form-group">
                    <asp:Button runat="server" ID="btnSubmit" Text="Submit"  />
                </div>
            </div>

   </div>
        </div>
        <hr /><footer class="foot">
           

                 <div class ="container ">
                <p class ="pull-right "><a href ="#">Back to top</a></p>
                <p>&copy;2021 ShopArena &middot; <a href ="Default.aspx">Home</a>&middot;<a href ="#">About</a>&middot;<a href ="#">Contact</a>&middot;<a href ="#">Products</a> </p>
            </div>
            

        </footer>
    </form>
</body>
</html>
