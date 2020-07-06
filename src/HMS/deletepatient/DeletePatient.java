package HMS.deletepatient;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import HMS.Connection.MyConnection;

/**
 * Servlet implementation class DeletePatient
 */
@WebServlet("/DeletePatient")
public class DeletePatient extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeletePatient() {
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
		String pid=request.getParameter("delete-patient-id");
	   Connection con=MyConnection.getMyConnetion();
		try
		{
			Statement stmt=con.createStatement();
			String query="delete from addpatient where id='"+pid+"'";
		    stmt.executeUpdate(query);
		   RequestDispatcher rd=request.getRequestDispatcher("Delete-Patient-Successfully.jsp");
		   request.setAttribute("pid", pid);
		  rd.forward(request, response);		
			
	    }
		catch(Exception e)
		{
			response.getWriter().print(e);
		}
	}

}
