<%@page import="java.sql.ResultSet"%>
<%@page import="com.db.Dbcon"%>
<%@page import="java.sql.Statement"%>
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
                    <div class="container d-flex justify-content-center align-items-center vh-100" style="margin-top: -80px;">
    <div class="col-md-6">
        <div class="row background p-4 rounded shadow">
                <% 
                    
//                    String did=(String)session.getAttribute("diseaseid");
//                    String N=(String)session.getAttribute("N");
//                    String CH=(String)session.getAttribute("CH");
//                    String AH=(String)session.getAttribute("AH");
//                    System.out.println("N"+N);
String uid=(String)session.getAttribute("did");
                    String sql1 = "SELECT * FROM `user` where did='"+uid+"'";
                       
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
                              <style>
                /*@import url("https://fonts.googleapis.com/css2?family=Poppins:weight@100;200;300;400;500;600;700;800&display=swap");*/


/*       body{
        background-color:#545454;
        font-family: "Poppins", sans-serif;
        font-weight: 300;
       }*/

/*       .container{
        height: 100vh;
       }*/

       .card{

        width: 380px;
        border: none;
        border-radius: 15px;
        padding: 8px;
        background-color: #fff;
        position: relative;
        height: 370px;
       }

       .upper{

        height: 100px;

       }

       .upper img{

        width: 100%;
        border-top-left-radius: 10px;
        border-top-right-radius: 10px;

       }

       .user{
        position: relative;
       }

       .profile img{

        
        height: 80px;
        width: 80px;
        margin-top:2px;

       
       }

       .profile{

        position: absolute;
        top:-50px;
        left: 38%;
        height: 90px;
        width: 90px;
        border:3px solid #fff;

        border-radius: 50%;

       }

       .follow{

        border-radius: 15px;
        padding-left: 20px;
        padding-right: 20px;
        height: 35px;
       }

       .stats span{

        font-size: 29px;
       }
            </style>
            <div class="container d-flex justify-content-center align-items-center">
             
             <div class="card">

              <div class="upper">

                <img src="https://i.imgur.com/Qtrsrk5.jpg" class="img-fluid">
                
              </div>

              <div class="user text-center">

<!--                <div class="profile">

                  <img src="https://is.imgur.com/JgYD2nQ.jpg" class="rounded-circle" width="80">
                  
                </div>-->

              </div>


              <div class="mt-5 text-center">

                <h4 class="mb-0"><%=rs.getString("dname")%></h4>
                <span class="text-muted d-block mb-2"><%=rs.getString("dmob")%></span>

                <!--<button class="btn btn-primary btn-sm follow">Follow</button>-->


                <div class="d-flex justify-content-between align-items-center mt-4 px-4">

                  <div class="stats">
                    <h6 class="mb-0">Age</h6>
                    <span style="margin-top: 5px"><%=rs.getString("age")%></span>

                  </div>


                  <div class="stats">
                    <h6 class="mb-0">Weight</h6>
                    <span style="margin-top: 2px"><%=rs.getString("weight")%></span>

                  </div>


                  <div class="stats">
                    <h6 class="mb-0">Blood Group</h6>
                    <span style="margin-top: 2px"><%=rs.getString("bloodgrp")%></span>

                  </div>
                  
                </div>
                
              </div>
               
             </div>

           </div>
            
            <%}%>
          
            
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