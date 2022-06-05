<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ChangePasswordCustomer.aspx.cs" Inherits="ChangePasswordCustomer" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style>     
#login-form
{
    display: none;
}
.form-box
{
    width:380px;
	height:380px;
	position:relative;
	margin:2% auto;
	background:rgba(0,0,0,0.3);
	padding:10px;
    overflow: hidden;
}
.button-box
{
	width:220px;
	margin:35px auto;
	position:relative;
	box-shadow: 0 0 20px 9px #ff61241f;
	border-radius: 30px;
}
.toggle-btn
{
	padding:10px 30px;
	cursor:pointer;
	background:transparent;
	border:0;
	outline: none;
	position: relative;
}
#btn
{
	top: 0;
	left:0;
	position: absolute;
	width: 250px;
	height: 100%;
	background: #ed563b;
	border-radius: 30px;
	transition: .5s;
}
.input-group-login
{
	top: 150px;
	position:absolute;
	width:280px;
	transition:.5s;
}
.input-group-register
{
    top: 120px;
	position:absolute;
	width:280px;
	transition:.5s;
}
.input-field
{
	width: 100%;
	padding:10px 0;
	margin:5px 0;
	border-left:0;
	border-top:0;
	border-right:0;
	border-bottom: 1px solid #999;
	outline:none;
	background: transparent;
}
.submit-btn
{
	width: 85%;
	padding: 10px 30px;
	cursor: pointer;
	display: block;
	margin: auto;
	background: #ed563b;
	border: 0;
	outline: none;
	border-radius: 30px;
}
.check-box
{
	margin: 30px 10px 34px 0;
}
span
{
	color:#777;
	font-size:12px;
	bottom:68px;
	position:absolute;
}
#login
{
	left:50px;
}
#login input
{
	color:white;
	font-size:15;
}
#register
{
	left:450px;
}
#register input
{
	color:white;
	font-size: 15;
}

.main-banner {
  position: relative;
}

#bg-video {
    min-width: 100%;
    min-height: 100vh;
    max-width: 100%;
    max-height: 100vh;
    object-fit: cover;
    z-index: -1;
}


.video-overlay {
    position: absolute;
    background-color: rgba(35,45,57,0.8);
    top: 0;
    left: 0;
    bottom: 7px;
    width: 100%;
}

.main-banner .caption {
  text-align: center;
  position: absolute;
  width: 80%;
  left: 50%;
  top: 50%;
  transform: translate(-50%,-50%);
}

.main-banner .caption h6 {
  margin-top: 0px;
  font-size: 18px;
  text-transform: uppercase;
  font-weight: 800;
  color: #fff;
  letter-spacing: 0.5px;
}
.main-banner .caption h3 {
  margin-top: 30px;
  margin-bottom: 25px;
  font-size: 84px;
  text-transform: uppercase;
  font-weight: 800;
  color: #fff;
  letter-spacing: 1px;
}

.main-banner .caption h3 em {
  font-style: normal;
  color: #ed563b;
  font-weight: 900;
}

.main-banner .caption h4 {
  margin-top: 30px;
  margin-bottom: 25px;
  font-size: 84px;
  text-transform: uppercase;
  font-weight: 800;
  color: #fff;
  letter-spacing: 1px;
}

.main-banner .caption h4 em {
  font-style: normal;
  color: #ed563b;
  font-weight: 900;
}

footer {
  text-align: center;
  padding: 30px 0px;
}

footer p {
  color: #232d39;
  font-size: 13px;
}

footer p a {
  cursor: pointer;
  color: #ed563b;
}

footer p a:hover {
  color: #ed563b;
}


}



    </style>

   
    <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.min.css"/>

    <link rel="stylesheet" type="text/css" href="assets/css/font-awesome.css"/>

    <link rel="stylesheet" href="assets/css/RBZ.css"/>  

    <link rel="stylesheet" href="style.css"/>
</head>
<body>
    <form id="form1" runat="server">
     
         <header class="header-area header-sticky">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <nav class="main-nav">
                       
                    <a  class="logo" >R.B.Z<em >&nbsp;&nbsp;&nbsp;Bank</em > </a >
                     
                        <ul class="nav">
                            
                           
                            <li class="scroll-to-section"><a href="../Welcome.aspx">Home</a></li>
                          
                          
                        </ul>        
          </nav>
                </div>
            </div>
        </div>
    </header>
         
  
    <div class="main-banner" id="top">
        <video autoplay="" muted="" loop="" id="bg-video">
            <source src="assets/images/V2.mp4" type="video/mp4"/>
        </video>
       

        <div class="video-overlay header-text">
             <div>
             
         
     
        </div>
            <div class="caption">
            
              
            <div class="form-box">
                <div class='button-box'>
                    <div id='btn'></div>
                    <button type='button'onclick='login()'class='toggle-btn'>Change_Password</button>
                   
                </div>
                <form id='login' class='input-group-login'>
                    
                   <asp:TextBox ID="TextBox1"  class='input-field'  placeholder ='Old' runat="server" TextMode="Password"></asp:TextBox>
		  <asp:TextBox ID="TextBox2"  class='input-field'  placeholder ='New' runat="server" TextMode="Password"></asp:TextBox>
                     <asp:TextBox ID="TextBox3"  class='input-field'  placeholder ='Confirm' runat="server" TextMode="Password"></asp:TextBox>
		  
		   <asp:Button ID="Button1" class='submit-btn' runat="server" Text="Login" OnClick="Button1_Click" />
		 </form>
		
            </div>
        </div>
    </div>
    <script>
        var x = document.getElementById('login');
        var y = document.getElementById('register');
        var z = document.getElementById('btn');
        function register() {
            x.style.left = '-400px';
            y.style.left = '50px';
            z.style.left = '110px';
        }
        function login() {
            x.style.left = '50px';
            y.style.left = '450px';
            z.style.left = '0px';
        }
    </script>
	<script>
        var modal = document.getElementById('login-form');
        window.onclick = function (event) {
            if (event.target == modal) {
                modal.style.display = "none";
            }
        }
    </script>
                </div>
          

    <footer>
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <p>Copyright © POWERED BY 
               <asp:RadioButtonList ID="RadioButtonList1" runat="server"></asp:RadioButtonList>
                     <a rel="nofollow" href="Welcome.aspx"  class="tm-text-link" target="_parent">PAIDATM1799</a></p>
                    <asp:Label ID="Label1" runat="server" ForeColor="Transparent" Visible="False" ></asp:Label>

                </div>
            </div>
        </div>
    </footer>

    </form>
</body>
</html>

