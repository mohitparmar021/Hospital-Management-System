package HMS.deleteDoctor;

import java.io.IOException;
import java.sql.Connection;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import HMS.Connection.MyConnection;

/**
 * Servlet implementation class DeleteDoctor
 */
@WebServlet("/DeleteDoctor")
public class DeleteDoctor extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteDoctor() {
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
		String did=request.getParameter("delete-doctor-id");
		   Connection con=MyConnection.getMyConnetion();
			try
			{
				Statement stmt=con.createStatement();
				String query="delete from adddoctor where did='"+did+"'";
				stmt.executeUpdate(query);
				
				RequestDispatcher rd=request.getRequestDispatcher("Delete-Doctor-Successfully.jsp");
				request.setAttribute("did", did);
				rd.forward(request, response);
				
		    }
			catch(Exception e)
			{
				response.getWriter().print(e);
			}
	}

}
