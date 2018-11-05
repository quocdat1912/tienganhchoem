package tienganhchobe.webmvc.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import tienganhchobe.webmvc.dao.LessionDAO;
import tienganhchobe.webmvc.model.Lession;


@WebServlet("/addLessionController")
public class addLessionController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public addLessionController() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		int lessionTypeId;
		
		lessionTypeId=Integer.parseInt(request.getParameter("typelession"));//ép kiểu int cho parameter
		String lessionTitle=request.getParameter("lessionTitle");
		String lessionImages=request.getParameter("lessionImages");
		String lessionContent=request.getParameter("editor");
		String lessionDescribe=request.getParameter("lessionDescribe");
		
		Lession les=new Lession();
		
		les.setLessionTitle(lessionTitle);
		les.setLessionImages(lessionImages);
		les.setLessionTypeID(lessionTypeId);
		les.setLessionContent(lessionContent);
		les.setLessionDescribe(lessionDescribe);
		
		LessionDAO ld=new LessionDAO();
		ld.thembaihoc(les);
		if(ld.thembaihoc(les)==true)
		{
			request.setAttribute("erro_addlession", "Thêm bài học thành công!");
			RequestDispatcher rd=request.getRequestDispatcher("/view/admin/add-lession.jsp");
			rd.forward(request, response);
		}
		else {
			request.setAttribute("ok_addlession", "Lỗi không thêm được bài học!");
			RequestDispatcher rd=request.getRequestDispatcher("/view/admin/add-lession.jsp");
			rd.forward(request, response);
			
			
		}	
	}

}
