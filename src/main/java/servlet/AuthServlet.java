package servlet;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.UserDao;
import pojo.User;

@WebServlet("/AuthServlet")
public class AuthServlet extends HttpServlet {
	User u = new User();
	UserDao ud = new UserDao();
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    String action = request.getParameter("action");
	    String name = request.getParameter("name");
	    String email = request.getParameter("email");
	    String password = request.getParameter("password");
	    String role = request.getParameter("role");

	    if ("register".equals(action)) { 
	        User u = new User();
	        u.setName(name);
	        u.setEmail(email);
	        u.setPassword(password);
	        u.setRole(role);

	        boolean r = this.ud.adduser(u);
	        if (r) {
	            response.sendRedirect("index.jsp");
	        } else {
	            response.sendRedirect("error.jsp");
	        }

	    } else if ("login".equals(action)) { 
	        String Role = this.ud.validate(name, password);

	        if (Role != null) { 
	            HttpSession session = request.getSession();
	            session.setAttribute("user", name);
	            session.setAttribute("role", Role);

	            if ("User".equals(Role)) {
	                response.sendRedirect("user.jsp");
	            } else if ("Organizer".equals(Role)) {
	                response.sendRedirect("organizer.jsp");
	            } else {
	                response.sendRedirect("error.jsp");
	            }
	        } else {
	            response.sendRedirect("error.jsp"); 
	        }
	    }
	}

}
