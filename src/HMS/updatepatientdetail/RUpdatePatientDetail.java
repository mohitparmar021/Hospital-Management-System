package HMS.updatepatientdetail;

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
 * Servlet implementation class RUpdatePatientDetail
 */
@WebServlet("/RUpdatePatientDetail")
public class RUpdatePatientDetail extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RUpdatePatientDetail() {
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
		String pid=request.getParameter("p-id");
		String pfirstname=request.getParameter("p-first-name");
		String plastname=request.getParameter("p-last-name");
		String pgender=request.getParameter("gender");
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
			String query="update addpatient set firstname='"+pfirstname+"',lastname='"+plastname+"',gender='"+pgender+"',age='"+page+"',date='"+pdate+"',mobile='"+pmobile+"',ward='"+pward+"',bed='"+pbed+"',address='"+paddress+"',problem='"+pproblem+"' where id='"+pid+"';";
		    stmt.executeUpdate(query);
		    
		    RequestDispatcher rd=request.getRequestDispatcher("RUpdate-Patient-Success.jsp");
		    request.setAttribute("pid", pid);
		    rd.forward(request, response);
		    con.close();
		}
		catch(Exception e)
		{
			response.getWriter().print(e);
		}
	}

}
