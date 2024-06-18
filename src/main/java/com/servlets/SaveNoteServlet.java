package com.servlets;

import java.io.*;
import java.util.*;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entities.Note;
import com.helper.FactoryProvider;

public class SaveNoteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public SaveNoteServlet() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			
			System.out.println("Hello");
			// fetch title and content
			String title = request.getParameter("title");
			String content = request.getParameter("content");
			
			Note note  = new Note(title,content, new Date());
		
			//save in database using hibernate
			System.out.println(note.getId()+" : "+note.getTitle());
			Session ses = FactoryProvider.getFactory().openSession();
			Transaction tx = ses.beginTransaction();
			ses.save(note);
			tx.commit();
			ses.close();
			response.setContentType("text/html");
			PrintWriter out = response.getWriter();
			out.println("<h1 style ='text-align: center;'>Note is added successfully</h1>");
			out.println("<h1 style ='text-align: center;'><a href='all_notes.jsp'>View all Notes</a></h1>");
			
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

}
