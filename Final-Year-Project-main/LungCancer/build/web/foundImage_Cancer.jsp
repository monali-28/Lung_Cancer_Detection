<%@page import="java.sql.ResultSet"%>
<%@page import="com.db.Dbcon"%>
<%@page import="java.sql.Statement"%>
<%@include file="header.jsp" %>
    <body>
           <style>
/*      body {
            font-family: Arial, sans-serif;
        }
        .container {
            width: 80%;
            margin: auto;
        }*/
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        th, td {
            border: 1px solid #ddd;
            padding: 10px;
            text-align: left;
        }
        th {
            background-color: #f4f4f4;
        }
        img {
/*            width: 100px;
            height: 100px;
            border-radius: 5px;*/
        }
    </style>
	
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
                    <div class="container d-flex justify-content-center align-items-center vh-100" style="margin-top: -80px">
    <div class="col-md-6">
        <div class="row background p-4 rounded shadow" style="background-color: white">
      
            <div style="margin-left:30%">  <strong>Lung Cancer Found..</strong><br>
                <h5>Please consult a specialist immediately :<%out.println(request.getParameter("stage"));%></h5></strong>
            
            </div>
            <hr>
              <div class="container">
        <h5>Doctor List</h5>
        
     <table class="table table-hover">
                <thead><tr>
                        <th>Id</th>
                        <th>Doctor Name</th>
                        <th>Education</th>
                     
                          <th>Experience</th>
                           <th>Mobile</th>
                            <th>Email</th>
                            
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
                    String sql1 = "SELECT * FROM `doctor`";
                       
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
                         <td><%=rs.getString("dname")%></td>
                       
                           
                            <td><%=rs.getString("dname")%></td>
                             <td><%=rs.getString("dname")%></td>
                              <td><%=rs.getString("dmob")%></td>
                                <td><%=rs.getString("dmail")%></td>
                          
                              
                        </tr>
                        
                        
                <% }
                                         
                %>
                </tbody>
            </table>
    </div>
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