/*package fileupload;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class Fileupload02_process2 extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
		throws ServletException, IOException{
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html:charset=utf-8");
		PrintWriter pw = response.getWriter();
		pw.println("<DOCTYPE html>");
		pw.println("<html>");
		pw.println("<head>");
		pw.println("<title>현재 시간 페이지</title>");
		pw.println("</head>");
		pw.println("<body>");
		MultipartRequest mutli = new MultipartRequest(request, "C://upload", 5 * 1024 * 1024, "utf-8", new DefaultFileRenamePolicy());
		
		Enumeration params = mutli.getParameterNames();
		
		while(params.hasMoreElements()) {
			String name = (String) params.nextElement();
			String value = mutli.getParameter(name);
			pw.println(name + " = " + value + "<br>");
		}
		pw.println("--------------------------------<br>");
		
		String name = mutli.getParameter("name");
		String subject = mutli.getParameter("subject");
		
		String name2 = mutli.getParameter("name2");
		String subject2 = mutli.getParameter("subject2");
		
		
		
		
	}

}
*/