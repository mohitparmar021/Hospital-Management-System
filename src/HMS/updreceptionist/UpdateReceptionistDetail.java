package HMS.updreceptionist;

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
 * Servlet implementation class UpdateReceptionistDetail
 */
@WebServlet("/UpdateReceptionistDetail")
public class UpdateReceptionistDetail extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateReceptionistDetail() {
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
		String rid=request.getParameter("r-id");
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
		
		Connection con=MyConnection.getMyConnetion();
		try
		{
			Statement stmt=con.createStatement();
			String query="update addreceptionist set firstname='"+firstname+"', lastname='"+lastname+"', gender='"+gender+"', bloodgroup='"+bloodgroup+"',dob='"+dob+"',datejoining='"+dateofjoining+"', qualification='"+qualification+"',maritalstatus='"+maritalstatus+"',mobile='"+mobile+"',address='"+address+"' where rid='"+rid+"';";
		    stmt.executeUpdate(query);
		  
		    RequestDispatcher rd=request.getRequestDispatcher("Update-Receptionist-Success.jsp");
		    request.setAttribute("rid", rid);
		    rd.forward(request, response);
		    con.close();
		}
		catch(Exception e)
		{
			response.getWriter().print(e);
		}
	}

}
