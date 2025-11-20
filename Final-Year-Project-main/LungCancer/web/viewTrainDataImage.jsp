<%@page import="java.sql.ResultSet"%>
<%@page import="com.db.Dbcon"%>
<%@page import="java.sql.Statement"%>
<%@include file="header.jsp" %>
<%@include file="flash.jsp" %>
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
   <div class="container" >
             <div class="container" style="margin-top: 10px">
    <!--<div class="container" style="margin-top: 100px">-->
    <center> <h3>Train Data</h3></center>
    
             <FORM  ENCTYPE="multipart/form-data" METHOD=POST>
            <table class="table table-hover">
                <thead><tr>
                        <th>Id</th>
                        <th>Cancer Name</th>
                        <th>Disease Image</th>
                     
                          <th>Contrast</th>
                           <th>Homogenity</th>
                            <th>Entropy</th>
                             <th>Energy</th>
                               <th>Dissimilarity</th>
<!--                        <th>N</th>
                         <th>CH</th>
                          <th>AH</th>-->
                         <!--<th>Delete</th>-->
                    </tr></thead>
                <tbody>
                    
                    <% 
                    
//                    String did=(String)session.getAttribute("diseaseid");
//                    String N=(String)session.getAttribute("N");
//                    String CH=(String)session.getAttribute("CH");
//                    String AH=(String)session.getAttribute("AH");
//                    System.out.println("N"+N);
                    String sql1 = "SELECT * FROM `train_data`";
                       
System.out.println("sql1"+sql1);
   String msg=null;
             ;

                                                          Statement statement = Dbcon.connect();
                             ResultSet rs = statement.executeQuery(sql1);
                        int i = 0;
                        while (rs.next()) {
//                            String sq="INSERT INTO `detection`(`d_id`, `diseasename`, `diseaseprevention`) VALUES (null,'"+rs.getString("disease_name")+"','"+rs.getString("disease_prevention")+"')";
////                           INSERT INTO `detection`(`d_id`, `diseasename`, `diseaseprevention`) VALUES ([value-1],[value-2],[value-3])
//                           statement.executeUpdate(sq);
                            //String imgname = rs.getString("img");
//                            int Id=rs.getInt("id");
                            //String m = rs.getString("category");
                             //System.out.println(imgname);
                             //System.out.println(Id);
//                            msg="Found Disease:-"+rs.getString("cancer_name")+"and Found Prevention:-"+rs.getString("disease_prevention");
//                           sendsms.connectsms("9404688826",msg);
                            i++;%>
                    <tr>
                        <td><%=i%></td>
                         <td><%=rs.getString("disese_name")%></td>
                       
                             <td><img src="upload/<%=rs.getString("disease_image")%>"></td>
                            <td><%=rs.getString("Contrast")%></td>
                             <td><%=rs.getString("Homogenity")%></td>
                              <td><%=rs.getString("Entropy")%></td>
                                <td><%=rs.getString("Energy")%></td>
                          
                               <td><%=rs.getString("Dissimilarity")%></td>
                        </tr>
                        
                        
                <% }
                                         
                %>
                </tbody>
            </table>
             </FORM>
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