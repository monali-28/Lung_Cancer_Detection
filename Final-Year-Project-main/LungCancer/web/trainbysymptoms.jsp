<%@include file="header.jsp" %>
    <body>
	
		<!-- Preloader -->

        <!-- End Preloader -->
		
		<!-- Get Pro Button -->
		
	
		<!-- Header Area -->
                <%@include file="admin_slider.jsp" %>
		<!-- End Header Area -->
		<!-- End Header Area -->
	
		<!-- Breadcrumbs -->
	
		<!-- End Breadcrumbs -->
				
		<!-- Start Contact Us -->
                <section class="contact-us section">
                    <div class="container d-flex justify-content-center align-items-center vh-100" style="margin-top: -80px">
    <div class="col-md-6">
        <div class="row background p-4 rounded shadow">
            <form action="AddSymptoms" method="post" class="w-100">
                <h2 class="text-center">Symptoms</h2>
                

                
                <label class="label label-info">Disease Name</label>
                <input type="text" name="disease" class="form-control mb-3" value="Lung Cancer" required readonly>
                
                <label class="label label-info">Symptoms</label>
                <textarea name="symptoms" class="form-control mb-3" placeholder="Symptoms" required style="height: 150px"></textarea>
                
                <label class="label label-info">Medicine</label>
                <textarea name="medicine" class="form-control mb-3" placeholder="Medicine" required style="height: 150px"></textarea>
                
                <button class="btn btn-primary w-100 mt-3" type="submit">Upload</button>
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


  </section>




		<!--/ End Contact Us -->
		
                <%@include file="footer.jsp" %>
    </body>
</html>