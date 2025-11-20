<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*, java.util.*" %>

<%
    // Database connection variables
    String url = "jdbc:mysql://localhost:3306/lungcancer_detection";
    String username = "root";  // Change this if necessary
    String password = "";      // Change this if necessary

    Connection conn = null;
    PreparedStatement pstmt = null;
    ResultSet rs = null;

    int yesCount = 0;

    try {
        Class.forName("com.mysql.jdbc.Driver");
        conn = DriverManager.getConnection(url, username, password);

        // Fetch symptom IDs from database
        String query = "SELECT id FROM symptoms_tbl";
        pstmt = conn.prepareStatement(query);
        rs = pstmt.executeQuery();

        while (rs.next()) {
            int symptomId = rs.getInt("id");
            String userResponse = request.getParameter("symptom_" + symptomId);

            if (userResponse != null && userResponse.equals("yes")) {
                yesCount++;
            }
        }

        // Check if 3 or more symptoms are marked as "Yes"
        if (yesCount >= 7) {
            out.print("<p style='color:red;'>Cancer Found!</p>");
        } else {
            out.print("<p style='color:green;'>No Cancer Detected.</p>");
        }

    } catch (Exception e) {
        out.print("<p style='color:red;'>Error: " + e.getMessage() + "</p>");
    } finally {
        if (rs != null) rs.close();
        if (pstmt != null) pstmt.close();
        if (conn != null) conn.close();
    }
%>
