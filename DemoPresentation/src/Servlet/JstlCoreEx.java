package Servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Utils.DBUtils;
import beans.SinhVien;

@WebServlet("/JstlCoreEx")
public class JstlCoreEx extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public JstlCoreEx() {
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		ArrayList<SinhVien> listSV = new ArrayList<SinhVien>();
		listSV.add(new SinhVien(1,"Đoàn Phương Linh"));
		listSV.add(new SinhVien(2, "Lưu Bị"));
		listSV.add(new SinhVien(3, "Tào Tháo"));
		listSV.add(new SinhVien(4, "Phú IT"));
		
		request.setCharacterEncoding("UTF-8");
		request.setAttribute("studentlist", listSV);
		request.getRequestDispatcher("jstl_core_example03.jsp").forward(request, response);
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
