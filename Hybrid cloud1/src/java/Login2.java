/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author jemi java
 */
public class Login2 extends HttpServlet {

    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    //static String a1,a2;
    //static String b1,b2;
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String s1;
        String s2=request.getParameter("name").trim();
		String p=request.getParameter("pwd").trim();
		String c=request.getParameter("type");
		boolean result=false;
		HttpSession session=request.getSession();
		
	  if (s2.trim().equals("Admin") && p.trim().equals("Admin") && c.trim().equals("admin"))	
        {
            session.setAttribute("uname", "Admin");
            session.setAttribute("uid", "Admin");
 //RequestDispatcher rd = null;
    RequestDispatcher    rd = request.getRequestDispatcher("Admins.jsp");
      rd.forward(request, response); 
        }
    else  if (s2.equals("Server") && p.equals("Server") && c.equals("Server"))
        {
            session.setAttribute("uname","Server");
            session.setAttribute("uid", "Server");
            request.setAttribute("msg1","Login Successfully...!!!" );
            RequestDispatcher rd=request.getRequestDispatcher("adminlogin.jsp");
            rd.forward(request, response);
	        }
    else if (s2.trim().equals("Thirdparityauditor") && p.trim().equals("Thirdparityauditor") && c.trim().equals("tpa"))
       
        { session.setAttribute("uname", "Thirdparityauditor");

            session.setAttribute("uid", "Thirdparityauditor");
           RequestDispatcher  rd = request.getRequestDispatcher("Accessfile.jsp");
            rd.forward(request, response);
//            session.setAttribute("tname","Thirdparityauditor");
//            session.setAttribute("tid", "Thirdparityauditor");
//            request.setAttribute("msg1","Login Successfully...!!!" );
//            RequestDispatcher rd=request.getRequestDispatcher("Thirdparityauditor.jsp");
//            rd.forward(request, response);
	        }
        else
        {
        try
		{
	         //Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
                //Connection con = DriverManager.getConnection("jdbc:odbc:PSE", "sa", "sa");
//MODIFICATION 1 )...    		
                Class.forName("com.mysql.jdbc.Driver").newInstance();
                Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/decentralize", "root", "root");
 //MODIFICATION 1 (END)...               
                String sa="select * from register where name='"+s2+"' and password='"+p+"'";
                PreparedStatement pr=con.prepareStatement(sa);
		ResultSet rs=pr.executeQuery();
                if (rs.next()) {
                //if(s.equals(rs.getString(2))&&p.equals(rs.getString(3)))
			{
                    String name1=rs.getString(1);
                    String name2=rs.getString(2);
                    
                    s1=name1;
                    s2=name2;
                    session.setAttribute("uname1",s2);
                    session.setAttribute("uid1", s1);
                    session.setAttribute("pwd", p);
                    result=true;
				//break;                   				
			}
                  /*  if(c.equals("admin"))
			{
			RequestDispatcher rd=request.getRequestDispatcher("Admins.jsp");
			rd.forward(request, response);
                        }
			else if(c.equals("user"))
			{
				RequestDispatcher rd=request.getRequestDispatcher("Admin.jsp");
				rd.forward(request, response);
			}*/
			
		}
		if(result)
			
		{
			if(c.equals("admin"))
			{
			//RequestDispatcher rd=request.getRequestDispatcher("Admins.jsp");
			//rd.forward(request, response);
                        }
			else if(c.equals("user"))
			{
				RequestDispatcher rd=request.getRequestDispatcher("Viewprofile.jsp");
                                request.setAttribute("msg1","Login Successfully..!" );
				rd.forward(request, response);
			}
			
		}
		else
		{
			RequestDispatcher rd=request.getRequestDispatcher("Login.jsp");	
			request.setAttribute("msg","please enter valid user name and password" );
			rd.forward(request, response);
		}
		
		}
		
	
		catch(Exception e)
		{
			System.out.println(e);
		}
         finally {            
            out.close();
        }
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
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
     * Handles the HTTP <code>POST</code> method.
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
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
