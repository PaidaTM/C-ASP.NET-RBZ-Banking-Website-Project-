<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Transaction.aspx.cs" Inherits="Transaction" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style>
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
.main-banner .caption h5 {
  margin-top: 0px;
  font-size: 35px;
  text-transform: uppercase;
  font-weight: 800;
  color: #fff;
  letter-spacing: 0.5px;
}
.main-banner .caption h5 em {
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
  padding: 0px;
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
                            <li class="scroll-to-section"><a href="ChangePasswordCustomer.aspx">Change_Password</a></li>
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
                <h3>Welcome<em><asp:Label ID="Label1" runat="server" Text="Label" ></asp:Label></em></h3><br />
                <h5>Balance &nbsp;&nbsp;&nbsp; <em>$<asp:Label ID="Label2" runat="server" Text="Label" ></asp:Label></em></h5>
                 <h6> Transactions</h6><br />
                <div class="main-button scroll-to-section">
                    <a href="Transfer.aspx">Transfer</a>
                    <a href="Deposit.aspx">Deposit</a>
                    <a href="Withdraw.aspx">Withdraw</a>
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
