<head>
 <link rel="stylesheet" href="style.css" type="text/css" media="screen">
     <!-- Bootstrap CSS v5.0.2 -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"  integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
.mySlides {display:none;}

input[type="text"], input[type="email"],input[type="number"]
{
    border: none;
    background:silver;
    height: 30px;
    font-size: 16px;
	margin-left:2%;
	padding:15px;	
}
a:hover {
  color:red;
  transform:scale(1.1);
}
      .bg-image-vertical {
position: relative;
overflow: hidden;
background-repeat: no-repeat;
background-position: right center;
background-size: auto 100%;
}

@media (min-width: 1025px) {
.h-custom-2 {
height: 100%;
}
}

#mbutton:hover{
      background-color:#4b92dc;
    }

    button{
      background-color: #CA0B00;
    }
    body{
        background-color: gainsboro;
        font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;
    }

        /* Main Footer */
footer .main-footer{  padding: 20px 0;  background: #252525;}
footer ul{  padding-left: 0;  list-style: none;}

/* Copy Right Footer */
.footer-copyright { background: #222; padding: 5px 0;}
.footer-copyright .logo {    display: inherit;}
.footer-copyright nav {    float: right;    margin-top: 5px;}
.footer-copyright nav ul {  list-style: none; margin: 0;  padding: 0;}
.footer-copyright nav ul li { border-left: 1px solid #505050; display: inline-block;  line-height: 12px;  margin: 0;  padding: 0 8px;}
.footer-copyright nav ul li a{  color: #969696;}
.footer-copyright nav ul li:first-child { border: medium none;  padding-left: 0;}
.footer-copyright p { color: #969696; margin: 2px 0 0;}

/* Footer Top */
.footer-top{  background: #252525;  padding-bottom: 30px; margin-bottom: 30px;  border-bottom: 3px solid #222;}

/* Footer transparent */
footer.transparent .footer-top, footer.transparent .main-footer{  background: transparent;}
footer.transparent .footer-copyright{ background: none repeat scroll 0 0 rgba(0, 0, 0, 0.3) ;}

/* Footer light */
footer.light .footer-top{ background: #f9f9f9;}
footer.light .main-footer{  background: #f9f9f9;}
footer.light .footer-copyright{ background: none repeat scroll 0 0 rgba(255, 255, 255, 0.3) ;}

/* Footer 4 */
.footer- .logo {    display: inline-block;}

/*==================== 
  Widgets 
====================== */
.widget{  padding: 20px;  margin-bottom: 40px;}
.widget.widget-last{  margin-bottom: 0px;}
.widget.no-box{ padding: 0; background-color: transparent;  margin-bottom: 40px;
  box-shadow: none; -webkit-box-shadow: none; -moz-box-shadow: none; -ms-box-shadow: none; -o-box-shadow: none;}
.widget.subscribe p{  margin-bottom: 18px;}
.widget li a{ color: #CA0B00;}
.widget li a:hover{ color: #4b92dc;}
.widget-title {margin-bottom: 20px;}
.widget-title span {background: #839FAD none repeat scroll 0 0;display: block; height: 1px;margin-top: 25px;position: relative;width: 20%;}
.widget-title span::after {background: inherit;content: "";height: inherit;    position: absolute;top: -4px;width: 50%;}
.widget-title.text-center span,.widget-title.text-center span::after {margin-left: auto;margin-right:auto;left: 0;right: 0;}
.widget .badge{ float: right; background: #7f7f7f;}

.typo-light h1, 
.typo-light h2, 
.typo-light h3, 
.typo-light h4, 
.typo-light h5, 
.typo-light h6,
.typo-light p,
.typo-light div,
.typo-light span,
.typo-light small{  color: #fff;}

ul.social-footer2 { margin: 0;padding: 0; width: auto;}
ul.social-footer2 li {display: inline-block;padding: 0;}
ul.social-footer2 li a:hover {background-color:#CA0B00;}
ul.social-footer2 li a {display: block; height:30px;width: 30px;text-align: center;}
.btn{background-color: #CA0B00; color:#fff;}
.btn:hover, .btn:focus, .btn.active {background: #4b92dc;color: #fff;
-webkit-box-shadow: 0 15px 30px rgba(0, 0, 0, 0.1);
-moz-box-shadow: 0 15px 30px rgba(0, 0, 0, 0.1);
-ms-box-shadow: 0 15px 30px rgba(0, 0, 0, 0.1);
-o-box-shadow: 0 15px 30px rgba(0, 0, 0, 0.1);
box-shadow: 0 15px 30px rgba(0, 0, 0, 0.1);
-webkit-transition: all 250ms ease-in-out 0s;
-moz-transition: all 250ms ease-in-out 0s;
-ms-transition: all 250ms ease-in-out 0s;
-o-transition: all 250ms ease-in-out 0s;
transition: all 250ms ease-in-out 0s;

}
</style>
</head>
<body>

<div class="header">
  <a href="#default" class="logo"><img class="logo" src="Logo1.png"></a>
  <div class="header-right">
  <a  href="index.jsp">Home</a>
  <a  href="donorRegistration.jsp">Donor Registration</a>
  <a  href="userLogin.jsp">Donor Login</a>
  <a  href="StockSummary.jsp">Stock Availability</a>
  &nbsp;
    
    <a href="adminLogin.jsp">Admin Login</a>
  <!--  <a href="#footer">About Us</a> -->
  <a class="nav-link" href="#about"><i class="fa fa-book"></i> About Us</a>
  </div>
</div>

<div style="max-width:100%">
  <img class="mySlides"  src="logo.jpg" >
 
  <img class="mySlides"  src="slide3.jpg">
</div>
<script>
var myIndex = 0;
carousel();

function carousel() {
    var i;
    var x = document.getElementsByClassName("mySlides");
    for (i = 0; i < x.length; i++) {
       x[i].style.display = "none";  
    }
    myIndex++;
    if (myIndex > x.length) {myIndex = 1}    
    x[myIndex-1].style.display = "block";  
    setTimeout(carousel, 5000); // Change image every 5 seconds
}
function AvoidSpace(event) {
    var k = event ? event.which : window.event.keyCode;
    if (k == 32) return false;
}
</script>


<body>
  <br>
  <%
  String msg=request.getParameter("msg");
  if("valid".equals(msg))
  {
	  %>
	  <center><font color="black" size="6">Form Submitted Sucessfully You will get notified within 24 hours.</font></center>
      <% 
  }
  %>
  
  <%
  
  if("invalid".equals(msg))
  {
	  %>
	  <center><font color="black" size="6">Invalid data! try again..</font></center>
      <% 
  }
  %>
  <center><h1>Enter your details to request for blood</h1> </center>
  <form action="indexFormAction.jsp" method="post">
  <center>
  <input type="text" onkeypress="return AvoidSpace(event)" name="name" placeholder="Enter name" required>
 <input type="text" pattern="\d*" maxlength="10" minlength="10" name="mobileno" placeholder="Enter mobile number" required>
  <input type="email" onkeypress="return AvoidSpace(event)" name="email" placeholder="Enter E-mail Id" required>
  <input type="text" name="bloodgroup" placeholder="Enter blood group" required>
 <input type="number" id="Number" placeholder="Units req." 
           name="unit_request" min="1" max="10" style="width: 120px;">
<br>
<br>
  <button class="button1">
  <span>Submit</span>
  </button>
  </center>
  </form>
 
  <br>
  <br>
  </div>
</div>
<br>
      <hr>
      <br>


      <div class="container">
        <div class="row" >
            <div class="col-5  text-danger " style="padding: 15px;  "><b><h1>why blood donation ?</h1> </b></div>
            <div class="col-7  ">
                Blood donations in India are conducted by organizations and hospitals through blood donation camps. Donors can also visit blood banks in hospitals to donate blood. Despite the shortage of donated blood, efforts by the government and advocacy groups over the years have helped bridge the gap between demand and supply. The number of voluntary blood donors increased from 54.4% in 2006–2007 to 83.1% in 2011–2012, with the number of blood units increasing from 4.4 million units in 2006–2007 to 9.3 million units in 2012–2013.[1] In 2016, the Ministry of Health and Family Welfare reported a donation of 10.9 million units against a requirement of 12 million units.[2] 12.7 million units were donated in 2020, lower than projected due to the COVID-19 pandemic.[3] The regulatory framework for blood donation and blood bank management rests with the Central Drugs Standard Control Organisation, while technical bodies like the National Blood Transfusion Council and National AIDS Control Organisation formulate guidelines and recommendations for transfusion medicine and blood bank management.
                Healthy individuals can donate around 350 millilitres of blood.[4] Donors are provided with refreshments after the procedure, which usually include glucose drinks, biscuits and fruits. Some organizations offer transportation facilities, as well as certificates or badges as gratitude
                

            </div>
        </div>

      </div>
      <br>
      <hr>
      <br>

      <div class="container">
        <div class="row" id="about">
            <div class="col-5  text-danger " style="padding: 15px;  "><b><h1>who should donate ?</h1> </b></div>
            <div class="col-7  "> 
                We are a non-profit organization whose mission is to provide the blood needed to save the lives of the people . Our goal is to keep all information about blood donors, various blood groups available at each blood supply and help them to manage better. The aim is to provide transparency in the field, to make the blood banking system free and free of corruption and to make the blood bank control system work.
                Blood Bank Management System (BBMS) could be a browser based mostly system that's designed to store, process, retrieve and analyze info involved with the executive and inventory management inside a bank. This project aims at maintaining all the knowledge touching on blood donors, totally different blood teams out there in every bank and facilitate them manage during a higher means. Aim is to supply transparency during this field, build the method of getting blood from a bank problem free and corruption free and build the system of bank management effective.
            </div>
        </div>

      </div>

      <br>
      <hr>
      <br>
      
      <div class="container">
        <div class="row" id="about">
            <div class="col-5  text-danger " style="padding: 15px;  "><b><h1>who we are ?</h1> </b></div>
            <div class="col-7  "> 
                We are a non-profit organization whose mission is to provide the blood needed to save the lives of the people . Our goal is to keep all information about blood donors, various blood groups available at each blood supply and help them to manage better. The aim is to provide transparency in the field, to make the blood banking system free and free of corruption and to make the blood bank control system work.
                Blood Bank Management System (BBMS) could be a browser based mostly system that's designed to store, process, retrieve and analyze info involved with the executive and inventory management inside a bank. This project aims at maintaining all the knowledge touching on blood donors, totally different blood teams out there in every bank and facilitate them manage during a higher means. Aim is to supply transparency during this field, build the method of getting blood from a bank problem free and corruption free and build the system of bank management effective.
            </div>
        </div>

      </div>
      <br>
      <br>

<footer id="footer" class="footer-1">
    <div class="main-footer widgets-dark typo-light">
    <div class="container">
    <div class="row">
      
    <div class="col-xs-12 col-sm-6 col-md-3">
    <div class="widget subscribe no-box">
    <h5 class="widget-title">PlentyReds<span></span></h5>
    <p>About the company, little discription will goes here.. </p>
    </div>
    </div>
    
    <div class="col-xs-12 col-sm-6 col-md-3">
    <div class="widget no-box">
    <h5 class="widget-title">Quick Links<span></span></h5>
    <ul class="thumbnail-widget">
    <li>
    <div class="thumb-content"><a href="#.">Get Started</a></div> 
    </li>
    <li>
    <div class="thumb-content"><a href="#.">Red Cross Society</a></div> 
    </li>
    <li>
    <div class="thumb-content"><a href="#.">Indian Blood Bank</a></div> 
    </li>
    
    <li>
    <div class="thumb-content"><a href="#."></a></div>  
    </li>
    <li>
    <div class="thumb-content"><a href="#.">Helpline</a></div> 
    </li>
    <li>
    <div class="thumb-content"><a href="#.">News</a></div> 
    </li>
    </ul>
    </div>
    </div>
    
    <div class="col-xs-12 col-sm-6 col-md-3">
    <div class="widget no-box">
    <h5 class="widget-title">Get Started<span></span></h5>
    <p> Save a Life Without Being Doctor !</p>
    <a class="btn" href="" target="_blank">Save Life !</a>
    </div>
    </div>
    
    <div class="col-xs-12 col-sm-6 col-md-3">
    
    <div class="widget no-box">
    <h5 class="widget-title" >Contact Us<span></span></h5>
    
    <p><a href="mailto:info@domain.com" title="glorythemes">info@domain.com</a></p>
    
    </div>
    </div>
    
    </div>
    </div>
    </div>
      
    <div class="footer-copyright">
    <div class="container">
    <div class="row">
    <div class="col-md-12 text-center">
    <p>Copyright PlentyReds � 2022. All rights reserved.</p>
    </div>
    </div>
    </div>
    </div>
    </footer>
</body>
</html>

