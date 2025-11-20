/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.algo;

import com.oreilly.servlet.MultipartRequest;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.tomcat.util.codec.binary.Base64;

/**
 *
 * @author Siddharth
 */
public class Detection extends HttpServlet {
Double dissim;
Double hom;
Double ent;
Double enr;
    /**
     * Processes requests for both HTTP
     * <code>GET</code> and
     * <code>POST</code> methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            int status=0;
			BufferedImage img1 = null;
                        BufferedImage img2 = null;
	        //BufferedImage img2 = null;
                        String file_name = request.getParameter("file_name");
                          String file_data = request.getParameter("file");
                         String path = request.getServletContext().getRealPath("/test/");
            System.out.println(" file_name... " + file_name);
	       
                  String uploadpath = getServletContext().getRealPath("/") + "test";
            MultipartRequest multipartRequest = new MultipartRequest(request, uploadpath);
            String textfile = multipartRequest.getParameter("uimg");
                 File text = multipartRequest.getFile("uimg");
                 text.getName();
                  System.out.println(" file_name... " + text.getName());
//                 byte[] decodedKey = Base64.decodeBase64(file_data);
//
                  System.out.println("path          "+uploadpath+"/"+text.getName());
                  
                   GLCMFeatureExtraction glcmfe = new GLCMFeatureExtraction(new File(uploadpath+"/"+text.getName()), 15);
			glcmfe.extract();
			
			System.out.println("Contrast: "+glcmfe.getContrast());
			System.out.println("Homogenity: "+glcmfe.getHomogenity());
			System.out.println("Entropy: "+glcmfe.getEntropy());
			System.out.println("Energy: "+glcmfe.getEnergy());
			System.out.println("Dissimilarity: "+glcmfe.getDissimilarity());
//
//           // String path = request.getServletContext().getRealPath("\\");
//            System.out.println(" path " + path);
//            FileOutputStream fileOuputStream;
//            fileOuputStream = new FileOutputStream(path + "/" + file_name);
//            fileOuputStream.write(decodedKey);
//            fileOuputStream.close();


//            String img_path = path + "/" + text.getName();//capture img path
//              System.out.println("img_path:" + img_path);
//                File f1 = new File(img_path);
//                
//                  File f1 = new File(img_path);
//                            System.out.println(img_path);
//GLCMFeatureExtraction glcmfe = new GLCMFeatureExtraction(new File(img_path), 15);
//			glcmfe.extract();
			
//			System.out.println("Contrast: "+glcmfe.getContrast());
//			System.out.println("Homogenity: "+glcmfe.getHomogenity());
//			System.out.println("Entropy: "+glcmfe.getEntropy());
//			System.out.println("Energy: "+glcmfe.getEnergy());
//			System.out.println("Dissimilarity: "+glcmfe.getDissimilarity());
                        
                       dissim =glcmfe.getDissimilarity();
                       hom =glcmfe.getEnergy();
                         ent =glcmfe.getEntropy();
                           enr =glcmfe.getEnergy();
                        
Class.forName("com.mysql.jdbc.Driver");  
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost/lungcancer_detection","root","");
			PreparedStatement query=con.prepareStatement("SELECT * FROM `train_data`");
//			query.executeQuery();
			ResultSet rs=query.executeQuery();
		while(rs.next())
			{
                            
                          
	        //File f2 = new File("C:\\eyes\\"+ms.get(1));
	     
				Double c= Double.parseDouble(rs.getString("Dissimilarity"));
                                Double h= Double.parseDouble(rs.getString("Homogenity"));
                                Double e= Double.parseDouble(rs.getString("Entropy"));
                                Double en= Double.parseDouble(rs.getString("Energy"));
                                
                                
                                 System.out.println("Found"+c);
                                if(c.equals(dissim) || h.equals(hom) || e.equals(ent) || en.equals(enr)){
                                    String stage = rs.getString("stage");
                                    System.out.println("Original stage: " + stage);

                                    // Map stage names
                                    if ("Second Stage".equalsIgnoreCase(stage)) {
                                        stage = "Basic Stage";
                                    } else if ("Last Stage".equalsIgnoreCase(stage)) {
                                        stage = "Advanced Stage";
                                    }

                                    System.out.println("Mapped stage: " + stage);
                                    status = 1;
                                    response.sendRedirect("foundImage_Cancer.jsp?stage=" + stage);

//                                 System.out.println("Found");
////                                 out.println();
//                                 out.println("<center><h2> Cancer Name : "+""+rs.getString("disese_name")+"</h2><center><br> <h3> Symptoms : "+rs.getString("disese_name")+"</h3> <br> Precuation : "+rs.getString("disease_pre"));
                                 break;
                                }else{
                                
                                 
                                }
                        }
                if(status==0){
                out.println("<center><h2> No Cancer Found</h3> ");
                             
                }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP
     * <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP
     * <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
