<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@include file="header.jsp" %>
    <body>
         <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	
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
        <div class="row background p-4 rounded shadow">
           
            
           <form id="symptomForm">
        <table class="table table-hover">
            <tr>
                <th>Symptom</th>
                <th>Yes</th>
                <th>No</th>
            </tr>

            <%
                // Database connection
                String url = "jdbc:mysql://localhost:3306/lungcancer_detection";
                String username = "root";  // Change if necessary
                String password = "";      // Change if necessary

                Connection conn = null;
                PreparedStatement pstmt = null;
                ResultSet rs = null;

                try {
                    Class.forName("com.mysql.jdbc.Driver");
                    conn = DriverManager.getConnection(url, username, password);
                    
                    String query = "SELECT * FROM symptoms_tbl";
                    pstmt = conn.prepareStatement(query);
                    rs = pstmt.executeQuery();

                    while (rs.next()) {
                        String symptom = rs.getString("symptoms");
            %>
                        <tr>
                            <td><%= symptom %></td>
                            <td><input type="radio" name="symptom_<%= rs.getInt("id") %>" value="yes"></td>
                            <td><input type="radio" name="symptom_<%= rs.getInt("id") %>" value="no" checked></td>
                        </tr>
            <%
                    }
                } catch (Exception e) {
                    out.print("<p style='color:red;'>Error: " + e.getMessage() + "</p>");
                } finally {
                    if (rs != null) rs.close();
                    if (pstmt != null) pstmt.close();
                    if (conn != null) conn.close();
                }
            %>
        </table>
        
        <br>
        <button type="submit" class="btn">Check</button>
    </form>

    <h3 id="result"></h3>

    <script>
        $(document).ready(function(){
            $("#symptomForm").submit(function(event){
                event.preventDefault();
                
                $.ajax({
                    type: "POST",
                    url: "checkSymptoms.jsp",
                    data: $(this).serialize(),
                    success: function(response) {
                        $("#result").html(response);
                    }
                });
            });
        });
    </script>
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