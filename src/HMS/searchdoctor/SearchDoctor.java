package HMS.searchdoctor;

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
 * Servlet implementation class SearchDoctor
 */
@WebServlet("/SearchDoctor")
public class SearchDoctor extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SearchDoctor() {
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
		String did=request.getParameter("search-doctor-id");
		 
		if(did!=null)
		{
			Connection con=MyConnection.getMyConnetion();
			try
			{
				Statement stmt=con.createStatement();
				String query="select * from adddoctor where did='"+did+"';";
				ResultSet rs=stmt.executeQuery(query);
				
				if(rs!=null)
				{
					request.setAttribute("doctordata", rs);
					RequestDispatcher rd=request.getRequestDispatcher("Search-Doctor-Detail.jsp");
					rd.forward(request, response);
					con.close();
				}
				else
				{
					RequestDispatcher rd=request.getRequestDispatcher("nodata.jsp");
					rd.forward(request, response);
				}
			   
			}
			catch(Exception e)
			{
				response.getWriter().print(e);
			
			}
		}
	}

}
