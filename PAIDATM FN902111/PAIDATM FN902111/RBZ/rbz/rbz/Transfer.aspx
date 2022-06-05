<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Transfer.aspx.cs" Inherits="Transfer" %>
<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta charset="utf-8" />
    <title></title>    
        <style >

#ta {
    margin-left:auto;
    margin-right:auto;
    position: relative;
}
.ta { 
      margin-left:auto;
    margin-right:auto;
    position: relative;
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

.main-banner .caption h7 {
  margin-top: 0px;
  font-size: 35px;
  text-transform: uppercase;
  font-weight: 800;
  color: #ed563b;
  letter-spacing: 0.5px;
}
.main-banner .caption h5 {
  margin-top: 0px;
  font-size: 35px;
  text-transform: uppercase;
  font-weight: 800;
  color: #fff;
  letter-spacing: 0.5px;
}

.main-banner .caption h6 {
  margin-top: 0px;
  font-size: 18px;
  text-transform: uppercase;
  font-weight: 800;
  color: #fff;
  letter-spacing: 0.5px;
}

.main-banner .caption h2 {
  margin-top: 30px;
  margin-bottom: 25px;
  font-size: 84px;
  text-transform: uppercase;
  font-weight: 800;
  color: #fff;
  letter-spacing: 1px;
}

.main-banner .caption h2 em {
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

.check-box
{
	margin: 30px 10px 34px 0;
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
                            <li class="scroll-to-section"><a href="Welcome.aspx" class="active">Home</a></li>
                          
                            <li class="scroll-to-section"><a href="Login.aspx">Log_Out</a></li>
                          
                          
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
                <h2>Welcome<em><asp:Label ID="Label1" runat="server" Text="Label" ></asp:Label></em></h2>
               
                
      
                <div class="main-button scroll-to-section">

                      <div style="align-items:center">
                      <table class="ta">
                              <tr><td><h5>User Name</h5></td>
                       <td>&nbsp;&nbsp;&nbsp;<h7><asp:Label ID="Label3" runat="server" Text="Label"></asp:Label> </h7>
                          </td>
              </tr>
                   <tr><td><h5>Current Balance</h5></td>
                       <td>&nbsp;&nbsp;&nbsp;<h7>$<asp:Label ID="Label2" runat="server" Text="Label"></asp:Label> </h7>
                          </td>
              </tr>
                           <tr><td  style="align-items:flex-start">  <h5>Reciever</h5></td><td>&nbsp; &nbsp;<asp:TextBox ID="TextBox2" runat="server" font-size="X-Large" Font-Bold="true" BackColor="Transparent" BorderColor="#666666"  BorderStyle="Double" BorderWidth="5px" ForeColor="#ED563B" Height="30px" Width="150px"></asp:TextBox>
                         </td>  </tr>
                     <tr><td>  <h5>Transfer Amount</h5> </td><td>&nbsp; &nbsp;<asp:TextBox ID="TextBox3" runat="server" font-size="X-Large" Font-Bold="true" BackColor="Transparent" BorderColor="#666666"  BorderStyle="Double" BorderWidth="5px" ForeColor="#ED563B" Height="30px" Width="150px"></asp:TextBox>
                         </td>  </tr>
                  </table> <div>
                  <asp:CheckBox ID="CheckBox1" Text="APPROVE TRANSACTION" runat="server" AutoPostBack="True"  BackColor="Transparent"   font-size="Large" ForeColor="White"  OnCheckedChanged="CheckBox1_CheckedChanged" />
                  <br />
                     
                      <asp:Button ID="Button1" class='btn' runat="server" Width="230px" Text="Transfer" OnClick="Button1_Click" Height="100%" BackColor="#ED563B" BorderColor="#FF6600" BorderStyle="Outset"  font-size="Medium" ForeColor="White" /></div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <footer>
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <p>Copyright © POWERED BY 
               
                     <a rel="nofollow" href="Welcome.aspx"  class="tm-text-link" target="_parent">PAIDATM1799</a></p>


                </div>
            </div>
        </div>
    </footer>


       
    </form>
</body>
</html>
