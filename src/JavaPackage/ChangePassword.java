package JavaPackage;

import java.io.IOException;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.jdbc.Statement;

/**
 * Servlet implementation class ChangePassword
 */
@WebServlet("/ChangePass")
public class ChangePassword extends HttpServlet {
	private static final long serialVersionUID = 1L;
    /**
     * @see HttpServlet#HttpServlet()
     */
	public void init(ServletConfig config) throws ServletException {
		super.init(config);
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			throw new ServletException(e);
		}
	}
    public ChangePassword() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		if(request.getParameter("password").equals(request.getParameter("confirmPassword")))
		{
			try {
				
			request.setCharacterEncoding("UTF-8");
			response.setCharacterEncoding("UTF-8");
			response.setContentType("text/html; charset=UTF-8");
			
			
			String url = "jdbc:mysql://localhost/databaseweb";
			String username = "root";
			String password = "1234";

			
			
			
			Connection conn = DriverManager.getConnection(url, username, password);
			
			
			
			CallableStatement cst = (CallableStatement) conn.prepareCall("{call sp_Update_Password(?,?}");
			
			 cst.setString(1,request.getParameter("username")); 
			cst.setString(2, request.getParameter("password"));
           
            
			cst.execute();
			
			request.getRequestDispatcher("Login.jsp").forward(request, response);
			
			}
			catch (SQLException e) {
				e.printStackTrace();
			}
		}
		else {
			request.getRequestDispatcher("DoiMatKhau.jsp").forward(request, response);
		}
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
