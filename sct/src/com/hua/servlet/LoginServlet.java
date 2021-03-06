package com.hua.servlet;
import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang3.StringUtils;

import com.hua.dao.DaoFactory;
import com.hua.entity.Admin;
import com.hua.entity.Student;
import com.hua.entity.Teacher;
import com.hua.utils.MD5;
@WebServlet("/login")
public class LoginServlet extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req,HttpServletResponse resp) throws ServletException,IOException{
		String userName=req.getParameter("userName");
		String password=req.getParameter("password");
		String type=req.getParameter("type");
		if(StringUtils.isBlank(userName)||StringUtils.isBlank(password)||StringUtils.isBlank(type)) {
			req.setAttribute("error","信息为空");
			req.getRequestDispatcher("login.jsp").forward(req, resp);
		}
		HttpSession session=req.getSession();
		if(StringUtils.isNotBlank(type)) {
			try {
			if("0".equals(type)) {
				//学生
				Student student=DaoFactory.getInstance().getStudentDao().login(userName, MD5.encrypByMd5(MD5.encrypByMd5(password)));
				if(student!=null) {
					session.setAttribute("user", student);
					session.setAttribute("type", type);
					resp.sendRedirect("index.jsp");
				}else {
					req.setAttribute("error","用户名或密码错误");
					req.getRequestDispatcher("login.jsp").forward(req, resp);
				}
			}else if("1".equals(type)) {
				//教师
				Teacher teacher=DaoFactory.getInstance().getTeacherDao().login(userName, MD5.encrypByMd5(MD5.encrypByMd5(password)));
				if(teacher!=null) {
					session.setAttribute("user", teacher);
					session.setAttribute("type", type);
					resp.sendRedirect("index.jsp");
				}else {
					req.setAttribute("error","用户名或密码错误");
					req.getRequestDispatcher("login.jsp").forward(req, resp);
				}
			}else {
				//管理员
				Admin admin=new Admin();
				admin.setUserName(userName);
				admin.setPwd(MD5.encrypByMd5(MD5.encrypByMd5(password)));
				Admin entity=DaoFactory.getInstance().getAdminDao().login(admin);
				if(entity !=null) {
					session.setAttribute("user", entity);
					session.setAttribute("type", type);
					resp.sendRedirect("index.jsp");
				}else {
					req.setAttribute("error","用户名或密码错误");
					req.getRequestDispatcher("login.jsp").forward(req, resp);
				}
			}
			}catch(SQLException e) {
				e.printStackTrace();
			}
		}else {
			
		}
	}
}
