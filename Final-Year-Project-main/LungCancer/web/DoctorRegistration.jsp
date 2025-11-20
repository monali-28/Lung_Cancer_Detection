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
                    <div class="container d-flex justify-content-center align-items-center vh-100" style="margin-top: -80px;">
    <div class="col-md-6">
        <div class="row background p-4 rounded shadow">
            <form class="form-signin w-100" action="Add_doctors" method="post">
                <h2 class="form-signin-heading text-center">Doctor Registration</h2>
                
                <label class="label label-info">Enter Doctor Name</label>
                <input type="text" class="form-control validate[required] mb-3" placeholder="Doctor Name" name="dname"/>
                
                <label class="label label-info">Password</label>
                <input type="password" class="form-control validate[required] mb-3" placeholder="Password" name="pass"/>
                
                <label class="label label-info">Education</label>
                <input type="text" class="form-control validate[required] mb-3" placeholder="Education" name="edu"/>
                
                <label class="label label-info">Experience</label>
                <input type="text" class="form-control validate[required] mb-3" placeholder="Experience" name="Experience"/>
                
                <label class="label label-info">Enter Mobile</label>
                <input type="text" class="form-control validate[required] mb-3" placeholder="Mobile" name="mob"/>
                
                <label class="label label-info">Enter Email</label>
                <input type="email" class="form-control validate[required] mb-3" placeholder="Email" name="email"/>
                
                <button class="btn btn-primary w-100 mt-3" type="submit">Add</button>
            </form>
        </div>
    </div>
</div>

<style>
    .background {
        background: #f8f9fa;
        border-radius: 10px;
    }
</style>


<style>
    .background {
        background: #f8f9fa;
        border-radius: 10px;
    }
</style>

  </section>




		<!--/ End Contact Us -->
		
                <%@include file="footer.jsp" %>
    </body>
</html>