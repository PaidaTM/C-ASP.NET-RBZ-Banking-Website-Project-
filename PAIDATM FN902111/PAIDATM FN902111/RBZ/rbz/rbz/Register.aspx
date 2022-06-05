<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="style.css"/>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style>
 


.full-page
{
    height:1000px;
	width: 100%;
	background-position: center;
	background-color: rgb(0 0 0);
	background-size: cover;
	position: absolute;
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
  height:100px;
  left: 50%;
  top: 50%;
  transform: translate(-50%,-50%);
}
.main-banner .top {
    height:1px;
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


#login-form
{
    display: none;
}
.form-box
{
    width:580px;
	height:920px;
	position:relative;
	margin:2% auto;
	background:rgba(0,0,0,0.3);
	padding:10px;
    overflow: hidden;
    margin-top:78px;
}
.button-box
{
	width:110px;
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
	width: 110px;
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
	background:#ed563b;
	border: 0;
	outline: none;
	border-radius: 30px;
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



    </style>
        <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.min.css"/>

    <link rel="stylesheet" type="text/css" href="assets/css/font-awesome.css"/>

    <link rel="stylesheet" href="assets/css/RBZ.css"/>  

    <link rel="stylesheet" href="style.css"/>
</head>
<body ><div class="full-page"  >


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
  <form id="form1" class="p" runat="server">
       <div class="form-box">
                <div class='button-box'>
                    <div id='btn'></div>
                     <button type='button'onclick='login()'class='toggle-btn'>Register</button>
                    </div>

                    <form id='login' class='input-group-login'> 
                     <asp:TextBox ID="TextBox1" class='input-field'  placeholder ='User_Name' runat="server"></asp:TextBox> 
		     <asp:TextBox ID="TextBox10" class='input-field'  placeholder ='Fisrt_Name' runat="server"></asp:TextBox> 
		    <asp:TextBox ID="TextBox2" class='input-field'  placeholder ='Last_Name' runat="server"></asp:TextBox> 
		   <asp:RadioButtonList ID="RadioButtonList1"  class='input-field'  placeholder ='Status' runat="server" AutoPostBack="True" RepeatDirection="Horizontal">
                                <asp:ListItem>Male</asp:ListItem>
                                <asp:ListItem>Female</asp:ListItem>
                            </asp:RadioButtonList> 
                        
		      <asp:RadioButtonList ID="RadioButtonList2" class='input-field'  placeholder ='Status' runat="server" AutoPostBack="True" RepeatDirection="Horizontal">
                                <asp:ListItem>Married</asp:ListItem>
                                <asp:ListItem>Divorced</asp:ListItem>
                                <asp:ListItem>Widowed</asp:ListItem>
                                <asp:ListItem>Single</asp:ListItem>
                            </asp:RadioButtonList>

             <asp:TextBox ID="TextBox3" class='input-field'  placeholder ='Pin' runat="server"></asp:TextBox>
             <asp:TextBox ID="TextBox4" class='input-field'  placeholder ='Confirm_Pin' runat="server"></asp:TextBox>
              <asp:TextBox ID="TextBox8" class='input-field'  placeholder ='Password' runat="server"></asp:TextBox>
              <asp:TextBox ID="TextBox9" class='input-field'  placeholder ='Confirm_Password' runat="server"></asp:TextBox>
              <asp:TextBox ID="TextBox5" class='input-field'  placeholder ='Phone_Number' runat="server"></asp:TextBox>
              <asp:TextBox ID="TextBox6" class='input-field'  placeholder ='E_Mail' runat="server"></asp:TextBox>
              <asp:TextBox ID="TextBox7" class='input-field'  placeholder ='Addresss' runat="server"></asp:TextBox>
              <asp:TextBox ID="TextBox11" class='input-field'  placeholder ='Opening_Balance' runat="server"></asp:TextBox>
                
                  <div class="check-box" style="align-items:center"> <asp:CheckBox ID="CheckBox1" runat="server" OnCheckedChanged="CheckBox1_CheckedChanged" Text=" I agree with terms and conditions" AutoPostBack="True" /></div>
                       
                        <br />
                        <div style="align-items:center">
                        <asp:Button ID="Button1" class='submit-btn' runat="server" Text="Register" OnClick="Button1_Click" />
                        </div>
          	</form>
   </div>  


        </form>
</div></body>
</html>