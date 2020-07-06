package HMS.doctorlogin;

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
import javax.servlet.http.HttpSession;

import HMS.Connection.MyConnection;

/**
 * Servlet implementation class DoctorLoginForm
 */
@WebServlet("/DoctorLoginForm")
public class DoctorLoginForm extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DoctorLoginForm() {
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
HttpSession dsession=request.getSession();
		
		String username=request.getParameter("username");
		String password =request.getParameter("password");
		
		Connection con=MyConnection.getMyConnetion();
		try
		{
			Statement stmt =con.createStatement();
			String query="select * from adddoctor where username='"+username+"';";
			ResultSet rs=stmt.executeQuery(query);
			
			if(rs.next())
			{
				if(username.equals(rs.getString("username")) && password.equals(rs.getString("password")))
				{
					 dsession.setAttribute("username", username);
					 dsession.setAttribute("password", password);
					  RequestDispatcher rd=request.getRequestDispatcher("Home-Doctor-Page.html");
					  rd.forward(request, response);
				}
				else
				{
					response.getWriter().print("Invalid Password");
				}
			}
			else
			{
				response.getWriter().print("Invalid Password outer");
			}
			con.close();
		}
		catch(Exception e)
		{
			response.getWriter().print(e);
		}
	}

}
