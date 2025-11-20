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
                    <div class="container d-flex justify-content-center align-items-center vh-100" style="margin-top:-80px">
    <div class="col-md-6">
        <div class="row background p-4 rounded shadow">
            <form enctype="multipart/form-data" action="Add_Data" method="post" class="w-100">
                <h2 class="text-center">Image Processing</h2>
                
                <label class="label label-info">Choose the file to upload:</label>
                <input type="file" name="uimg" class="form-control mb-3" required>
                
                <label class="label label-info">Disease Name</label>
                <input type="text" name="d_name" class="form-control mb-3" value="Lung Cancer" required readonly>
               
                 <!--<label class="label label-info">Stage </label>-->
<!--                 <select name="stage"><option value="0">0%</option>
                     <option value="10">10%</option>
                     <option value="20">20%</option>
                     <option value="30">30%</option>
                     <option value="40">40%</option>
                     <option value="50">50%</option>
                     <option value="60">60%</option>
                     <option value="70">70%</option>
                     <option value="80">80%</option><option value="90">90%</option><option value="100">100%</option></select>-->
<!--                <label class="label label-info">Symptoms</label>
                <textarea name="d_symp" class="form-control mb-3" placeholder="Symptoms" required style="height: 150px"></textarea>
                
                <label class="label label-info">Prevention</label>
                <textarea name="d_precautions" class="form-control mb-3" placeholder="Prevention" required style="height: 150px"></textarea>
                -->
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