package assignment1;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Controller")
public class Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		
		 if (request.getParameterMap().containsKey("loginBtn"))
			{
				Login(request,response);
			}
		 if (request.getParameterMap().containsKey("specialpage"))
			{
				DiscountPage(request,response);
			}
		 
		 if(request.getParameterMap().containsKey("searchpage"))
		{
			Search(request,response); 
			
		}
		
		  if (request.getParameterMap().containsKey("searchDetails"))
		{
			SearchDetail(request,response);
		}
		  if (request.getParameterMap().containsKey("regbtn"))
			{
				Register(request,response);
			}
		  if (request.getParameterMap().containsKey("logoutBtn"))
			{
				Logout(request,response);
			}
		
		  if (request.getParameterMap().containsKey("toLogin"))
			{
				ToLogin(request,response);
			}
		  if (request.getParameterMap().containsKey("toRegister"))
			{
				ToRegister(request,response);
			}
		  if (request.getParameterMap().containsKey("toSearch"))
			{
				ToSearch(request,response);
			}
		  if (request.getParameterMap().containsKey("toLogout"))
			{
				ToLogout(request,response);
			}
		  if (request.getParameterMap().containsKey("toDiscount"))
			{
			  DiscountPage(request,response);
			}
		  
		  if (request.getParameterMap().containsKey("mainLogedIn"))
			{
			  mainPageLogged(request,response);
			}
		  
	}

	
	private void mainPageLogged(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		
		request.getRequestDispatcher("mainLogedin.html").forward(request, response);
	}


	private void ToLogout(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException  {
		
		request.getRequestDispatcher("main.html").forward(request, response);	
	}


	private void ToSearch(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	request.getRequestDispatcher("search.html").forward(request, response);
		
	}


	private void ToRegister(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	request.getRequestDispatcher("registerHTML.html").forward(request, response);
		
	}


	private void ToLogin(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	request.getRequestDispatcher("login.html").forward(request, response);
		
	}
	
private void Logout(HttpServletRequest request, HttpServletResponse response)  throws ServletException, IOException {
   
	request.getSession().invalidate();
	request.getRequestDispatcher("main.html").forward(request, response);
	
}

private void DiscountPage(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		
	request.getRequestDispatcher("specialSales.jsp").forward(request, response);		
	}

private void Register(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
	
	request.getRequestDispatcher("reg.jsp").forward(request, response);	
	}

private void Login(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		
	request.getRequestDispatcher("login.jsp").forward(request, response);
	}

private void Search(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("Search.jsp").forward(request, response);
		
	}

private void SearchDetail(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	request.getRequestDispatcher("gameDetails.jsp").forward(request, response);
	
}


protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
{	  
	 
}






}
