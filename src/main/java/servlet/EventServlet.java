package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.EventDao;
import pojo.Event;


@WebServlet("/EventServlet")
public class EventServlet extends HttpServlet {
	Event e = new Event();
	EventDao ed = new EventDao();
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 String action = request.getParameter("action");
		 String name = request.getParameter("name");
		 String date = request.getParameter("date");
		 String description = request.getParameter("description");
		 String price = request.getParameter("price");
		 String location = request.getParameter("location");
		 String category = request.getParameter("category");
		 String organizer = request.getParameter("organizer");
		 
		 if("event".equals(action)) {
			 Event e = new Event();
			 e.setName(name);
			 e.setDate(date);
			 e.setDescription(description);
			 e.setPrice(price);
			 e.setLocation(location);
			 e.setCategory(category);
			 e.setOrganizer(organizer);
			 
			 boolean t = this.ed.addEvent(e);
			 if(t) {
				 response.sendRedirect("organizer.jsp");
			 }else {
				 response.sendRedirect("error.jsp"); 
			 }
		 }
	}

}
