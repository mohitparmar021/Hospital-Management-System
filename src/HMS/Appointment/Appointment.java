package HMS.Appointment;

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
 * Servlet implementation class Appointment
 */
@WebServlet("/Appointment")
public class Appointment extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Appointment() {
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
		String pname=request.getParameter("p-name");
		String dname=request.getParameter("d-name");
		String gender=request.getParameter("p-gender");
		String age=request.getParameter("p-age");
		String date=request.getParameter("p-date");
		String mobile=request.getParameter("p-mobile");
		String address=request.getParameter("p-address");
		String visitreason=request.getParameter("p-visitreasons");
		
		Connection con=MyConnection.getMyConnetion();
		try
		{
			Statement stmt=con.createStatement();
			String query="insert into appointment(name,gender,age,date,mobile,address,visitreason,doctor) values('"+pname+"','"+gender+"','"+age+"','"+date+"','"+mobile+"','"+address+"','"+visitreason+"','"+dname+"');";
		    stmt.executeUpdate(query);
		    
		    RequestDispatcher rd=request.getRequestDispatcher("Patient-Appointment.jsp");
		    rd.forward(request, response);
		}
		catch(Exception e)
		{
			response.getWriter().print(e);
		}
	}

}
