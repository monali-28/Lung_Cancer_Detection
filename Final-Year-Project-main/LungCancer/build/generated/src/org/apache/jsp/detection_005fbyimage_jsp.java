package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class detection_005fbyimage_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(3);
    _jspx_dependants.add("/header.jsp");
    _jspx_dependants.add("/user_slider.jsp");
    _jspx_dependants.add("/footer.jsp");
  }

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("<!doctype html>\n");
      out.write("<html class=\"no-js\" lang=\"zxx\">\n");
      out.write("    <head>\n");
      out.write("        <!-- Meta Tags -->\n");
      out.write("\t\t<meta charset=\"utf-8\">\n");
      out.write("\t\t<meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("\t\t<meta name=\"keywords\" content=\"Site keywords here\">\n");
      out.write("\t\t<meta name=\"description\" content=\"\">\n");
      out.write("\t\t<meta name='copyright' content=''>\n");
      out.write("\t\t<meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\n");
      out.write("\t\t\n");
      out.write("\t\t<!-- Title -->\n");
      out.write("        <title>Lung Cancer Detection</title>\n");
      out.write("\t\t\n");
      out.write("\t\t<!-- Favicon -->\n");
      out.write("                <link rel=\"icon\" href=\"img/logolung_1.png\">\n");
      out.write("\t\t\n");
      out.write("\t\t<!-- Google Fonts -->\n");
      out.write("\t\t<link href=\"https://fonts.googleapis.com/css?family=Poppins:200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&display=swap\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("\t\t<!-- Bootstrap CSS -->\n");
      out.write("\t\t<link rel=\"stylesheet\" href=\"css/bootstrap.min.css\">\n");
      out.write("\t\t<!-- Nice Select CSS -->\n");
      out.write("\t\t<link rel=\"stylesheet\" href=\"css/nice-select.css\">\n");
      out.write("\t\t<!-- Font Awesome CSS -->\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/font-awesome.min.css\">\n");
      out.write("\t\t<!-- icofont CSS -->\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/icofont.css\">\n");
      out.write("\t\t<!-- Slicknav -->\n");
      out.write("\t\t<link rel=\"stylesheet\" href=\"css/slicknav.min.css\">\n");
      out.write("\t\t<!-- Owl Carousel CSS -->\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/owl-carousel.css\">\n");
      out.write("\t\t<!-- Datepicker CSS -->\n");
      out.write("\t\t<link rel=\"stylesheet\" href=\"css/datepicker.css\">\n");
      out.write("\t\t<!-- Animate CSS -->\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/animate.min.css\">\n");
      out.write("\t\t<!-- Magnific Popup CSS -->\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/magnific-popup.css\">\n");
      out.write("\t\t\n");
      out.write("\t\t<!-- Medipro CSS -->\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/normalize.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"style.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/responsive.css\">\n");
      out.write("\t\t\n");
      out.write("    </head>");
      out.write("\n");
      out.write("    <body>\n");
      out.write("\t\n");
      out.write("\t\t<!-- Preloader -->\n");
      out.write("\n");
      out.write("        <!-- End Preloader -->\n");
      out.write("\t\t\n");
      out.write("\t\t<!-- Get Pro Button -->\n");
      out.write("\t\t\n");
      out.write("\t\n");
      out.write("\t\t<!-- Header Area -->\n");
      out.write("      ");
      out.write("<header class=\"header\" >\n");
      out.write("\t\t\t<!-- Topbar -->\n");
      out.write("                            \n");
      out.write("\t\t\t<!-- End Topbar -->\n");
      out.write("\t\t\t<!-- Header Inner -->\n");
      out.write("\t\t\t<div class=\"header-inner\">\n");
      out.write("\t\t\t\t<div class=\"container\">\n");
      out.write("\t\t\t\t\t<div class=\"inner\">\n");
      out.write("\t\t\t\t\t\t<div class=\"row\">\n");
      out.write("\t\t\t\t\t\t\t<div class=\"col-lg-3 col-md-3 col-12\">\n");
      out.write("\t\t\t\t\t\t\t\t<!-- Start Logo -->\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"logo\">\n");
      out.write("                                                                    <a href=\"index.jsp\"><img src=\"img/logolung_1.png\" alt=\"#\"></a>\n");
      out.write("\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t\t<!-- End Logo -->\n");
      out.write("\t\t\t\t\t\t\t\t<!-- Mobile Nav -->\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"mobile-nav\"></div>\n");
      out.write("\t\t\t\t\t\t\t\t<!-- End Mobile Nav -->\n");
      out.write("\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t<div class=\"col-lg-7 col-md-9 col-12\">\n");
      out.write("\t\t\t\t\t\t\t\t<!-- Main Menu -->\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"main-menu\">\n");
      out.write("\t\t\t\t\t\t\t\t\t<nav class=\"navigation\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<ul class=\"nav menu\">\n");
      out.write("                                                                                  \n");
      out.write("                                                                                    <li ><a href=\"detection_cancerbyimage.jsp\">Detection By Symptoms </a></li>\n");
      out.write("                                                                                    <li ><a href=\"detection_cancerbyimage.jsp\">Detection By Images </a></li>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t <li ><a href=\"#\">History </a></li>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t <li ><a href=\"index.jsp\">Logout </a></li>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</ul>\n");
      out.write("\t\t\t\t\t\t\t\t\t</nav>\n");
      out.write("\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t\t<!--/ End Main Menu -->\n");
      out.write("\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t\t<!--/ End Header Inner -->\n");
      out.write("\t\t</header>");
      out.write("\n");
      out.write("\t\t<!-- End Header Area -->\n");
      out.write("\t\t<!-- End Header Area -->\n");
      out.write("\t\n");
      out.write("\t\t<!-- Breadcrumbs -->\n");
      out.write("\t\n");
      out.write("\t\t<!-- End Breadcrumbs -->\n");
      out.write("\t\t\t\t\n");
      out.write("\t\t<!-- Start Contact Us -->\n");
      out.write("                <section class=\"contact-us section\">\n");
      out.write("                   <div class=\"container d-flex justify-content-center align-items-center vh-100\">\n");
      out.write("    <div class=\"col-md-6\">\n");
      out.write("        <div class=\"row background p-4 rounded shadow\">\n");
      out.write("            <form enctype=\"multipart/form-data\" action=\"Detection\" method=\"post\" class=\"w-100\">\n");
      out.write("                <h2 class=\"text-center\">Image Processing</h2>\n");
      out.write("                \n");
      out.write("                <label class=\"label label-info\">Choose the file to upload:</label>\n");
      out.write("                <input type=\"file\" name=\"uimg\" class=\"form-control mb-3\" required>\n");
      out.write("                \n");
      out.write("              \n");
      out.write("                <button class=\"btn btn-primary w-100 mt-3\" type=\"submit\">Upload</button>\n");
      out.write("            </form>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("<style>\n");
      out.write("    .background {\n");
      out.write("        background: #f8f9fa;\n");
      out.write("        border-radius: 10px;\n");
      out.write("    }\n");
      out.write("</style>\n");
      out.write("\n");
      out.write("\n");
      out.write("  </section>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\t\t<!--/ End Contact Us -->\n");
      out.write("\t\t\n");
      out.write("                ");
      out.write("<!-- Footer Area -->\n");
      out.write("\t\t<footer id=\"footer\" class=\"footer \">\n");
      out.write("\t\t\t<!-- Footer Top -->\n");
      out.write("\t\t\n");
      out.write("\t\t\t<!--/ End Footer Top -->\n");
      out.write("\t\t\t<!-- Copyright -->\n");
      out.write("\t\t\t<div class=\"copyright\">\n");
      out.write("\t\t\t\t<div class=\"container\">\n");
      out.write("\t\t\t\t\t<div class=\"row\">\n");
      out.write("\t\t\t\t\t\t<div class=\"col-lg-12 col-md-12 col-12\">\n");
      out.write("\t\t\t\t\t\t\t<div class=\"copyright-content\">\n");
      out.write("\t\t\t\t\t\t\t\t<p>© Copyright 2025  |  All Rights Reserved by <a href=\"#\" target=\"_blank\"></a> </p>\n");
      out.write("\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t\t<!--/ End Copyright -->\n");
      out.write("\t\t</footer>\n");
      out.write("\t\t<!--/ End Footer Area -->\n");
      out.write("\t\t\n");
      out.write("\t\t<!-- jquery Min JS -->\n");
      out.write("        <script src=\"js/jquery.min.js\"></script>\n");
      out.write("\t\t<!-- jquery Migrate JS -->\n");
      out.write("\t\t<script src=\"js/jquery-migrate-3.0.0.js\"></script>\n");
      out.write("\t\t<!-- jquery Ui JS -->\n");
      out.write("\t\t<script src=\"js/jquery-ui.min.js\"></script>\n");
      out.write("\t\t<!-- Easing JS -->\n");
      out.write("        <script src=\"js/easing.js\"></script>\n");
      out.write("\t\t<!-- Color JS -->\n");
      out.write("\t\t<script src=\"js/colors.js\"></script>\n");
      out.write("\t\t<!-- Popper JS -->\n");
      out.write("\t\t<script src=\"js/popper.min.js\"></script>\n");
      out.write("\t\t<!-- Bootstrap Datepicker JS -->\n");
      out.write("\t\t<script src=\"js/bootstrap-datepicker.js\"></script>\n");
      out.write("\t\t<!-- Jquery Nav JS -->\n");
      out.write("        <script src=\"js/jquery.nav.js\"></script>\n");
      out.write("\t\t<!-- Slicknav JS -->\n");
      out.write("\t\t<script src=\"js/slicknav.min.js\"></script>\n");
      out.write("\t\t<!-- ScrollUp JS -->\n");
      out.write("        <script src=\"js/jquery.scrollUp.min.js\"></script>\n");
      out.write("\t\t<!-- Niceselect JS -->\n");
      out.write("\t\t<script src=\"js/niceselect.js\"></script>\n");
      out.write("\t\t<!-- Tilt Jquery JS -->\n");
      out.write("\t\t<script src=\"js/tilt.jquery.min.js\"></script>\n");
      out.write("\t\t<!-- Owl Carousel JS -->\n");
      out.write("        <script src=\"js/owl-carousel.js\"></script>\n");
      out.write("\t\t<!-- counterup JS -->\n");
      out.write("\t\t<script src=\"js/jquery.counterup.min.js\"></script>\n");
      out.write("\t\t<!-- Steller JS -->\n");
      out.write("\t\t<script src=\"js/steller.js\"></script>\n");
      out.write("\t\t<!-- Wow JS -->\n");
      out.write("\t\t<script src=\"js/wow.min.js\"></script>\n");
      out.write("\t\t<!-- Magnific Popup JS -->\n");
      out.write("\t\t<script src=\"js/jquery.magnific-popup.min.js\"></script>\n");
      out.write("\t\t<!-- Counter Up CDN JS -->\n");
      out.write("\t\t<script src=\"http://cdnjs.cloudflare.com/ajax/libs/waypoints/2.0.3/waypoints.min.js\"></script>\n");
      out.write("\t\t<!-- Google Map API Key JS -->\n");
      out.write("\t\t<script src=\"https://maps.google.com/maps/api/js?key=AIzaSyDGqTyqoPIvYxhn_Sa7ZrK5bENUWhpCo0w\"></script>\n");
      out.write("\t\t<!-- Gmaps JS -->\n");
      out.write("\t\t<script src=\"js/gmaps.min.js\"></script>\n");
      out.write("\t\t<!-- Map Active JS -->\n");
      out.write("\t\t<script src=\"js/map-active.js\"></script>\n");
      out.write("\t\t<!-- Bootstrap JS -->\n");
      out.write("\t\t<script src=\"js/bootstrap.min.js\"></script>\n");
      out.write("\t\t<!-- Main JS -->\n");
      out.write("\t\t<script src=\"js/main.js\"></script>");
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
