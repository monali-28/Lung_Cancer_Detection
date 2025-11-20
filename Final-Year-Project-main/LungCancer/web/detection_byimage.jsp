<%@include file="header.jsp" %>
    <body>
	
		<!-- Preloader -->

        <!-- End Preloader -->
		
		<!-- Get Pro Button -->
		
	
		<!-- Header Area -->
      <%@include file="user_slider.jsp" %>
		<!-- End Header Area -->
		<!-- End Header Area -->
	
		<!-- Breadcrumbs -->
	
		<!-- End Breadcrumbs -->
				
		<!-- Start Contact Us -->
                <section class="contact-us section">
                   <div class="container d-flex justify-content-center align-items-center vh-100">
    <div class="col-md-6">
        <div class="row background p-4 rounded shadow">
            <form enctype="multipart/form-data" action="Detection" method="post" class="w-100">
                <h2 class="text-center">Image Processing</h2>
                
                <label class="label label-info">Choose the file to upload:</label>
                <input type="file" name="uimg" class="form-control mb-3" required>
                
              
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