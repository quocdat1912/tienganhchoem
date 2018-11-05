package tienganhchobe.webmvc.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import tienganhchobe.webmvc.dao.UsersDAO;
import tienganhchobe.webmvc.model.Users;

@WebServlet("/changeRoleController")
public class changeRoleController extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public changeRoleController() {
        super();
      
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String idrole=request.getParameter("role");
		
		
//		int idrole=2;
		/*String iduser=request.getParameter("iduser");*/
		String iduser="76";
		Users u=new Users();
		u.setUser_id(iduser);
//		u.setUser_roleid((idrole));
		
		UsersDAO ud=new UsersDAO();
		ud.changeRole(u);
		
		if(ud.changeRole(u)==true)
		{
			PrintWriter out=response.getWriter();
			out.println("sua quyen thanh cong");
		}
		else if(ud.changeRole(u)==false)
		{
			PrintWriter out=response.getWriter();
			out.print("sua that bai");
		}
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
	}

}
