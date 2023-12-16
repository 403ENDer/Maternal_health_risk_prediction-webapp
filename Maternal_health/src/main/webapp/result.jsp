<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html class="no-js" lang="en">
  <head>
    <!-- meta data -->
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <!-- The above 3 meta tags must come first in the head; any other head content must come after these tags -->
    <!-- title of site -->
    <title>Maternal Health Risk Predictor</title>

    <!-- For favicon png -->
    <link
      rel="shortcut icon"
      type="image/icon"
      href="<%= request.getContextPath() %>/path/to/R-removebg-preview.png"
    />

    <!--font-awesome.min.css-->
    <link rel="shortcut icon" type="image/icon" href="clients\R-removebg-preview.png">
       
        <!--font-awesome.min.css-->
        <link rel="stylesheet" href="assets\css\font-awesome.min.css">

        <!--linear icon css-->
		<link rel="stylesheet" href="assets\css\linearicons.css">

		<!--animate.css-->
        <link rel="stylesheet" href="assets\css\animate.css">

		<!--flaticon.css-->
        <link rel="stylesheet" href="assets\css\flaticon.css">

		<!--slick.css-->
        <link rel="stylesheet" href="assets\css\slick.css">
		<link rel="stylesheet" href="assets\css\slick-theme.css">
		
        <!--bootstrap.min.css-->
        <link rel="stylesheet" href="assets\css\bootstrap.min.css">
		
		<!-- bootsnav -->
		<link rel="stylesheet" href="assets\css\bootsnav.css" >	
        
        <!--style.css-->
        <link rel="stylesheet" href="assets\css\style.css">
        
        <!--responsive.css-->
        <link rel="stylesheet" href="assets\css\responsive.css">
		
        <!--[if lt IE 9]>
			<script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
			<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->


    <!--linear icon css-->
    

    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>

  <body>
  
  		<section class="top-area">
			<div class="header-area">
				<!-- Start Navigation -->
			    <nav class="navbar navbar-default bootsnav  navbar-sticky navbar-scrollspy"  data-minus-value-desktop="70" data-minus-value-mobile="55" data-speed="1000">

			        <div class="container">

			            <!-- Start Header Navigation -->
			            <div class="navbar-header">
			                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-menu">
			                    <i class="fa fa-bars"></i>
			                </button>
			                <a class="navbar-brand" href="index.jsp">Maternal <span>Health</span></a>

			            </div><!--/.navbar-header-->
			            <!-- End Header Navigation -->

			            <!-- Collect the nav links, forms, and other content for toggling -->
			            <div class="collapse navbar-collapse menu-ui-design" id="navbar-menu">
			                <ul class="nav navbar-nav navbar-right" data-in="fadeInDown" data-out="fadeOutUp">
			                    <li class=" scroll active"><a href="index.jsp#home">home</a></li>
			                    <li class="scroll"><a href="index.jsp#works">how it works</a></li>
			                    <li class="scroll"><a href="index.jsp#predictor">Predictor	</a></li>
			                    <li class="scroll"><a href="index.jsp#reviews">review</a></li>
								<li class="scroll"><a href="index.jsp#contact">contact</a></li>
			                </ul><!--/.nav -->
			            </div><!-- /.navbar-collapse -->
			        </div><!--/.container-->
			    </nav><!--/nav-->
			    <!-- End Navigation -->
			</div><!--/.header-area-->
		    <div class="clearfix"></div>

		</section>

    <section id="works" class="works" style="margin-top: 7em">
      <div class="container">
        <div class="section-header">
          <h2>MATERNAL HEALTH RISK PREDICTOR</h2>
          <p>Empowering Moms, Protecting Future !!!</p>

          <br />
          <br />
          <br />
          <br />
        </div>
        <!--/.section-header-->
        <!-- Your content goes here -->
        <div class="row justify-content-center text-center">
    <% 
    	String riskLevel = (String)request.getAttribute("riskLevel");
    	System.out.println(riskLevel);
        double lowRiskOpacity = (riskLevel.equals("1")) ? 1.0 : 0.2;
        double mediumRiskOpacity = (riskLevel.equals("0")) ? 1.0 : 0.2;
        double highRiskOpacity = (riskLevel.equals("2")) ? 1.0 : 0.2;
    %>
    
    <div class="col-md-4 col-sm-6" style="opacity: <%= lowRiskOpacity %>;">
        <div class="single-how-works low-risk" onmouseover="changeColor('low')" onmouseout="resetColor(this)">
            <div class="single-how-works-icon">
                <img src="assets/images/low.jpeg" alt="Low Risk Icon">
            </div>
            <h2><a href="#">Suggestions for <span>Low Risk</span></a></h2>
            <p>
                <ul>
                    <li>Regular prenatal check-ups with healthcare providers.</li>
                    <li>Follow a balanced and nutritious diet.</li>
                    <li>Engage in light exercises recommended for pregnancy.</li>
                    <li>Stay informed about general pregnancy care practices.</li>
                    <li>Monitor key indicators like blood pressure and blood sugar regularly.</li>
                </ul>
            </p>
        </div>  
    </div>

    <div class="col-md-4 col-sm-6" style="opacity: <%= mediumRiskOpacity %>;">
        <div class="single-how-works medium-risk" onmouseover="changeColor('medium')" onmouseout="resetColor(this)">
            <div class="single-how-works-icon">
                <img src="assets/images/medium.jpeg" alt="Medium Risk Icon">
            </div>
            <h2><a href="#" style="color: black;">Suggestions for <span>Medium Risk</span></a></h2>
            <p>
                <ul>
                    <li>Increase the frequency of prenatal check-ups.</li>
                    <li>Consult with specialists such as maternal-fetal medicine experts.</li>
                    <li>Follow prescribed medications diligently.</li>
                    <li>Consider a hospital birth with access to specialized medical facilities.</li>
                    <li>Stay well-informed about potential risk factors.</li>
                </ul>
            </p>
        </div>
    </div>

    <div class="col-md-4 col-sm-6" style="opacity: <%= highRiskOpacity %>;">
        <div class="single-how-works high-risk" onmouseover="changeColor('high')" onmouseout="resetColor(this)">
            <div class="single-how-works-icon">
                <img src="assets/images/high.jpeg" alt="High Risk Icon">
            </div>
            <h2><a href="#">Suggestions for <span>High Risk</span></a></h2>
            <p>
                <ul>
                    <li>Collaborate with a team of specialists for close monitoring.</li>
                    <li>Undergo intensive and frequent check-ups.</li>
                    <li>Be prepared for advanced medical interventions if needed.</li>
                    <li>Prioritize mental health support.</li>
                    <li>Ensure a hospital birth for immediate access to medical care.</li>
                </ul>
            </p>
        </div>
    </div>
</div>

        
        <footer>
        
        	<div class="hm-footer-copyright">
					<div class="row">
						<div class="col-sm-5">
							<p>
								&copy;copyright. designed and developed by <a href="https://www.themesine.com/">dream defiers</a>
							</p><!--/p-->
						</div>
						<div class="col-sm-7">
							<div class="footer-social">
								<span><i class="fa fa-phone"> 9677569532</i></span>
								<a href="https://www.facebook.com/profile.php?id=100050573839398"><i class="fa fa-facebook"></i></a>	
								<a href="https://twitter.com/_dinesh_kkv_"><i class="fa fa-twitter"></i></a>
								<a href="https://www.instagram.com/_._dinesh_._33/"><i class="fa fa-instagram"></i></a>

								
							</div>
						</div>
					</div>
					
				</div><!--/.hm-footer-copyright-->
			</div><!--/.container-->

			<div id="scroll-Top">
				<div class="return-to-top">
					<i class="fa fa-angle-up " id="scroll-top" data-toggle="tooltip" data-placement="top" title="" data-original-title="Back to Top" aria-hidden="true"></i>
				</div>
				
			</div><!--/.scroll-Top-->
        
        </footer>
        
        
        
        
        
        
        			
			
      

        <script>
          function changeColor(riskLevel) {
            var element = document.querySelector("." + riskLevel + "-risk");
            element.style.backgroundColor = getHoverColor(riskLevel);
            element.style.color = riskLevel === "medium" ? "black" : "white";
          }

          function resetColor(element) {
            element.style.backgroundColor = "";
            element.style.color = "";
          }

          function getHoverColor(riskLevel) {
            if (riskLevel === "1") {
              return "green";
            } else if (riskLevel === "0") {
              return "yellow";
            } else if (riskLevel === "2") {
              return "red";
            }
          }
        </script>
      </div>
    </section>
  </body>
</html>
