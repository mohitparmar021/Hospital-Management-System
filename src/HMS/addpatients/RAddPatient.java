package HMS.addpatients;

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
 * Servlet implementation class RAddPatient
 */
@WebServlet("/RAddPatient")
public class RAddPatient extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RAddPatient() {
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
		String pfirstname=request.getParameter("p-first-name");
		String plastname=request.getParameter("p-last-name");
		String pgender=request.getParameter("p-gender");
		int page=Integer.parseInt(request.getParameter("p-age"));
		String pdate=request.getParameter("p-date");
		String pmobile=request.getParameter("p-mobile");
		int pward=Integer.parseInt(request.getParameter("p-ward"));
		int pbed=Integer.parseInt(request.getParameter("p-bed"));
		String paddress=request.getParameter("p-address");
		String pproblem=request.getParameter("p-problem");
		Connection con=MyConnection.getMyConnetion();
		try
		{
			Statement stmt=con.createStatement();
			String query="insert into addpatient(firstname,lastname,gender,age,date,mobile,ward,bed,address,problem) values('"+pfirstname+"','"+plastname+"','"+pgender+"','"+page+"','"+pdate+"','"+pmobile+"','"+pward+"','"+pbed+"','"+paddress+"','"+pproblem+"');";
		    stmt.executeUpdate(query);
		   
		    RequestDispatcher rd= request.getRequestDispatcher("RAdd-Patient.html");
		    rd.forward(request, response);
		    con.close();
		}
		catch(Exception e)
		{
			response.getWriter().print(e);
		}
	}

}
