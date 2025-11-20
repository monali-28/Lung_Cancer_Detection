<header class="header" >
			<!-- Topbar -->
                            
			<!-- End Topbar -->
			<!-- Header Inner -->
			<div class="header-inner">
				<div class="container">
					<div class="inner">
						<div class="row">
							<div class="col-lg-3 col-md-3 col-12">
								<!-- Start Logo -->
								<div class="logo">
                                                                    <a href="index.jsp"><img src="img/logolung_1.png" alt="#"></a>
								</div>
								<!-- End Logo -->
								<!-- Mobile Nav -->
								<div class="mobile-nav"></div>
								<!-- End Mobile Nav -->
							</div>
							<div class="col-lg-7 col-md-9 col-12">
								<!-- Main Menu -->
								<div class="main-menu">
									<nav class="navigation">
                                                                            
                                                                            
                                                                             <%
                                                                             String utype = (String) session.getAttribute("UserType");
                                                                             if (utype == "admin") {%>
                                                                           
										<ul class="nav menu">
                                                                                  
                                                                                    <li ><a href="trainbysymptoms.jsp">Train By Symptoms </a></li>
                                                                                    <li ><a href="TrainData.jsp">Train By Images </a></li>
                                                                                    <li ><a href="ViewTrainDatabySymptoms.jsp">View Symptoms </a></li>
                                                                                    <li ><a href="viewTrainDataImage.jsp">View Images </a></li>
                                                                                    <li ><a href="ViewDoctors.jsp">View Doctors </a></li>
											 <li ><a href="index.jsp">Logout </a></li>
										</ul>
                                                                             
                                                                             <% }else{%>
                                                                             <ul class="nav menu">
                                                                                  
                                                                                    <li ><a href="trainbysymptoms.jsp">Train By Symptoms </a></li>
                                                                                    <li ><a href="TrainData.jsp">Train By Images </a></li>
                                                                                    <li ><a href="ViewTrainDatabySymptoms.jsp">View Symptoms </a></li>
                                                                                    <li ><a href="viewTrainDataImage.jsp">View Images </a></li>
											 <li ><a href="index.jsp">Logout </a></li>
										</ul>
                                                                             <% }%>
									</nav>
								</div>
								<!--/ End Main Menu -->
							</div>
							
						</div>
					</div>
				</div>
			</div>
			<!--/ End Header Inner -->
		</header>