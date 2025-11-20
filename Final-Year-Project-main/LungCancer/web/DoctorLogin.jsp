<%@include file="header.jsp" %>
    <body>
	
		<!-- Preloader -->

        <!-- End Preloader -->
		
		<!-- Get Pro Button -->
		
	
		<!-- Header Area -->
                <%@include file="slider.jsp" %>
		<!-- End Header Area -->
		<!-- End Header Area -->
	
		<!-- Breadcrumbs -->
	
		<!-- End Breadcrumbs -->
				
		<!-- Start Contact Us -->
                <section class="contact-us section">
    <div class="container">
        <div class="inner text-center">
            <h2>Doctor Login</h2>
            <!--<p>If you have any questions, please feel free to contact us.</p>-->
            <div class="row justify-content-center">
                <div class="col-lg-8">
                    <div class="contact-us-form">
                        <!-- Form -->
                        <form class="form" method="post" action="Dlogin">
                            <div class="row">
                                <div class="col-lg-6">
                                    <div class="form-group">
                                        <input type="text" name="email" placeholder="User Name" required="">
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="form-group">
                                        <input type="password" name="password" placeholder="Password" required="">
                                    </div>
                                </div>
                               
                                <div class="col-12">
                                    <div class="form-group login-btn">
                                        <button class="btn" type="submit">Login</button>
                                    </div>
                                    <a href="DoctorRegistration.jsp">Registration</a>
                                </div>
                            </div>
                        </form>
                        <!--/ End Form -->
                    </div>
                </div>
            </div>
        </div>
    
    </div>
</section>

<style>
    .contact-us-form {
        width: 100%;
        max-width: 800px;
        margin: auto;
    }
    .form-group input, .form-group textarea {
        width: 100%;
        padding: 10px;
        margin-bottom: 10px;
        border: 1px solid #ddd;
        border-radius: 5px;
    }
    .form-group textarea {
        height: 120px;
    }
    .login-btn {
        text-align: center;
    }
</style>


		<!--/ End Contact Us -->
		
                <%@include file="footer.jsp" %>
    </body>
</html>