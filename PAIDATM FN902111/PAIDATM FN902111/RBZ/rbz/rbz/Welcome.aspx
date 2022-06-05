<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Welcome.aspx.cs" Inherits="Welcome" %>

<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta charset="utf-8" />
    <title>PAIDATM1799</title>    
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



}
    </style>

    <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.min.css"/>

    <link rel="stylesheet" type="text/css" href="assets/css/font-awesome.css"/>

    <link rel="stylesheet" href="assets/css/RBZ.css"/>  
</head>
<body  >
    <form id="form1" runat="server">   

  
  
   
    <header class="header-area header-sticky">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <nav class="main-nav">
                       
                    <a  class="logo" >R.B.Z<em >&nbsp;&nbsp;&nbsp;Bank</em > </a >
                     
                        <ul class="nav">
                            <li class="scroll-to-section"><a href="Welcome.aspx" class="active"></a></li>
                            <li class="scroll-to-section"><a href="/Admin/LoginAdmin.aspx">Admin_Login</a></li>
                            <li class="scroll-to-section"><a href="Login.aspx">Client_Login</a></li>
                            <li class="scroll-to-section"><a href="Register.aspx">Sign_Up</a></li>
                          
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
            <div class="caption">
                <h6> better and bright future.</h6>
                <h2>Trusted Banking <br /> <em>RBZ Banking </em></h2>
                <div class="main-button scroll-to-section">
                     <h6> <em>R.B.Z Banking </em> Forms</h6><br />
           <asp:HyperLink ID="HyperLink6" runat="server" 
                 NavigateUrl="~/PDF Files/aof_family_savings.pdf" style="font-weight: 700">Family-Svings</asp:HyperLink>&nbsp;&nbsp;
                    <asp:HyperLink ID="HyperLink1" runat="server"
                 NavigateUrl="~/PDF Files/FDIC-Insurance-Statement.pdf" style="font-weight: 700">Insurance-Form</asp:HyperLink>&nbsp;&nbsp;

                      <asp:HyperLink ID="HyperLink2" runat="server" 
                 NavigateUrl="~/PDF Files/Loan-Agreement-Template-TrackTime24.pdf" style="font-weight: 700">Loan-Form</asp:HyperLink>&nbsp;&nbsp;

                         < <asp:HyperLink ID="HyperLink3" runat="server" 
                 NavigateUrl="~/PDF Files/privacy-policy-template.pdf" style="font-weight: 700">Privacy-Policy</asp:HyperLink>

                </div>
            </div>
        </div>
    </div>

    <footer>
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <p>Copyright © POWERED BY 
                    
                     <a rel="nofollow" href="" class="tm-text-link" target="_parent">PAIDATM1799</a></p>


                </div>
            </div>
        </div>
    </footer>

    </form>
</body>
</html>
