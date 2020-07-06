package HMS.adminlogin;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import HMS.Connection.MyConnection;

import java.sql.*;
/**
 * Servlet implementation class AdminLoginForm
 */
@WebServlet("/AdminLoginForm")
public class AdminLoginForm extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminLoginForm() {
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
		HttpSession session=request.getSession();
		
                String username=request.getParameter("username");
		String password=request.getParameter("password");
		
		Connection con=MyConnection.getMyConnetion();
		try
		{
			Statement stmt =con.createStatement();
			String query="select * from adminlogin where username='"+username+"';";
			ResultSet rs=stmt.executeQuery(query);
			
			if(rs.next())
			{
				if(username.equals(rs.getString("username")) && password.equals(rs.getString("password")))
				{
					  RequestDispatcher rd=request.getRequestDispatcher("Admin-Home-Page.html");
					  session.setAttribute("username", username);
					  session.setAttribute("password", password);
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
