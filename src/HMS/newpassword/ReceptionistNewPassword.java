package HMS.newpassword;

import java.io.IOException;
import java.sql.Connection;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import HMS.Connection.MyConnection;

/**
 * Servlet implementation class ReceptionistNewPassword
 */
@WebServlet("/ReceptionistNewPassword")
public class ReceptionistNewPassword extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ReceptionistNewPassword() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
        HttpSession rsession=request.getSession();
		
		String username=request.getParameter("user");
		String currentpassword=request.getParameter("current-password");
		String newpassword=request.getParameter("new-password");
		
		String usersession=(String)rsession.getAttribute("username");
		String passwordsession=(String)rsession.getAttribute("password");
		
		
		
		Connection con=MyConnection.getMyConnetion();
		try
		{
	      Statement stmt=con.createStatement();
	      if(username.equals(usersession)&&currentpassword.equals(passwordsession))
	      {
	    	     String query ="update addreceptionist set password='"+newpassword+"' where username='"+username+"'";
	    	     stmt.executeUpdate(query);
	    	     rsession.setAttribute("password", newpassword);
	    	     RequestDispatcher rd=request.getRequestDispatcher("RNew-Password.html");
	    	     rd.forward(request, response);
	      }
	      else
	      {
	    	  response.getWriter().print("Invalid username "+username);
	  		  response.getWriter().print("Invalid Current Password"+currentpassword);
	      }
	        
		}
		catch(Exception e)
		{
			  response.getWriter().print(e);
		}
	}

}
