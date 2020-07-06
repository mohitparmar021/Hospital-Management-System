package HMS.addreceptionist;

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
 * Servlet implementation class AddReceptionist
 */
@WebServlet("/AddReceptionist")
public class AddReceptionist extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddReceptionist() {
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
		String firstname=request.getParameter("r-first-name");
		String lastname=request.getParameter("r-last-name");
		String gender=request.getParameter("gender");
		String bloodgroup=request.getParameter("blood-grp");
		String dob=request.getParameter("r-dob");
		String dateofjoining=request.getParameter("r-date-of-joining");
		String qualification=request.getParameter("r-qualification");
		String maritalstatus=request.getParameter("marital-status");
		String mobile=request.getParameter("r-mobile");
		String address=request.getParameter("r-address");
		String email=request.getParameter("r-email");
		Connection con=MyConnection.getMyConnetion();
		try
		{
			 Statement stmt =con.createStatement();
			 String query="insert into addreceptionist(firstname,lastname,gender,bloodgroup,dob,datejoining,qualification,maritalstatus,mobile,address,email,username,password) values('"+firstname+"','"+lastname+"','"+gender+"','"+bloodgroup+"','"+dob+"','"+dateofjoining+"','"+qualification+"','"+maritalstatus+"','"+mobile+"','"+address+"','"+email+"','"+email+"','"+dob+"');";
		     stmt.executeUpdate(query); 
		     
		     RequestDispatcher rd= request.getRequestDispatcher("Add-Receptionist.html");
			 rd.forward(request, response);
			 con.close();
		}
		catch(Exception e)
		{
			 response.getWriter().print(e);
		}
	}

}
