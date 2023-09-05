

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mysql.jdbc.PreparedStatement;

@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 1, maxFileSize = 1024 * 1024 * 10, maxRequestSize = 1024 * 1024
* 100)

@WebServlet("/mweb/joinok.do")
public class joinok extends HttpServlet {
	
	PrintWriter pw = null;
	DBConfig dc = null;
	HttpSession session = null;
	PreparedStatement ps = null;
	
	
	private static final long serialVersionUID = 1L;
       
    public joinok() {
        super();

    }


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		
		String id = request.getParameter("mid").intern();
		String nm = request.getParameter("mname").intern();
		String pw = request.getParameter("mpassword").intern();
		String pw2 = request.getParameter("mpassword2").intern();
		String email = request.getParameter("memail").intern();
		String tel = request.getParameter("mtel").intern();

    	this.pw = response.getWriter();
    	
    	if(id=="" || pw=="") {
    		this.pw.write("<script>alert('정상적인 접근 방식이 아닙니다.');"
    				+ "history.go(-1);"
    				+ "</script>");
    	}
    	else {
    		if(id=="hong" && pw=="a1234") {
    			
    			HttpSession session = request.getSession();
    			//아이디
    			this.session = request.getSession();
    			
    			//아이디
    			this.session.setAttribute("userid", id);
    			//고객명
    			this.session.setAttribute("username", rs2.getString("sname"));
    			
    			this.pw.write("<script>"
    					+ "alert('로그인 되셨습니다.');"
    					+ "location.href='./main.jsp';"
    					+ "</script>");
    		}
    		else {
    			this.pw.write("<script>"
    					+ "alert('회원정보가 확인 되지 않습니다.');"
    					+ "history.go(-1);"
    					+ "</script>");
    		}
    		this.pw.close();
    	}


	}

}
