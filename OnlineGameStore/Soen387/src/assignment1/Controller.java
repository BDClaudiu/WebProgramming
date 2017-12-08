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
		
		if (request.getParameterMap().containsKey("userblock")|| request.getParameterMap().containsKey("userUnblock"))
			{
				UserBlockedConfirm(request,response);
			}
		
		 if (request.getParameterMap().containsKey("toAddNewGame"))
			{
				AddNewGameAdmin(request,response);
			}
		 
		 if (request.getParameterMap().containsKey("adminAddQuantity"))
			{
				AdminAddGameQuantity(request,response);
			} 
		 
		 if (request.getParameterMap().containsKey("loginBtn"))
			{
				Login(request,response);
			}
		 
		 if (request.getParameterMap().containsKey("adminEditGame"))
			{
				GameAdmitEdit(request,response);
			}
		if (request.getParameterMap().containsKey("CheckOutCartUser"))
			{
				toCartCheckout(request,response);
			}
		if (request.getParameterMap().containsKey("clearCart"))
		{
			DeleteCartContents(request,response);
		}
	
		if (request.getParameterMap().containsKey("toRemoveCart"))
		{
			RemoveCartItem(request,response);
		}
		if (request.getParameterMap().containsKey("toChangeQuantity"))
		{
			ChangeQuantityCart(request,response);
		}
		 
		 if (request.getParameterMap().containsKey("addToCart"))
			{
				CartAddConfirm(request,response);
			}
		 if (request.getParameterMap().containsKey("passwordResetSubmit"))
			{
				ResetPass(request,response);
			}
			
			 if (request.getParameterMap().containsKey("passwordChangeTempSubmit"))
				{
					ResetPassTempToNewPass(request,response);
				}
		 
		 if (request.getParameterMap().containsKey("specialpage"))
			{
				DiscountPage(request,response);
			}
		 
		 if(request.getParameterMap().containsKey("searchpage"))
			{
				Search(request,response); 	
			}
		 
		 if(request.getParameterMap().containsKey("searchpagelogin"))
			{
				Searchlogin00(request,response); 	
			}
		 
		 
		 if (request.getParameterMap().containsKey("searchDetails"))
			{
				SearchDetail(request,response);
			}
		  
		  if (request.getParameterMap().containsKey("addToFavorite"))
			{
				FavoriteGames(request,response);
			}
		  
		  if (request.getParameterMap().containsKey("regbtn"))
			{
				Register(request,response);
			}
		  if (request.getParameterMap().containsKey("changeBtn"))
			{
				UserProfileUpdate(request,response);
			}
		  if (request.getParameterMap().containsKey("logoutBtn"))
			{
				Logout(request,response);
			}
		  if (request.getParameterMap().containsKey("toLogin"))
			{
				ToLogin(request,response);
			}
		  if (request.getParameterMap().containsKey("toFavorits"))
			{
				ToFavorites(request,response);
			}
		  
		  if (request.getParameterMap().containsKey("toLoginAdmin"))
			{
				ToLoginAdmin(request,response);
			}
		  
		  if (request.getParameterMap().containsKey("toUserManagement"))
			{
				ToUserManagement(request,response);
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
		  if (request.getParameterMap().containsKey("toDiscountUser"))
			{
			  DiscountPageUser(request,response);
			}
	
		  if (request.getParameterMap().containsKey("toDiscountAdmin")|| request.getParameterMap().containsKey("settouser") || request.getParameterMap().containsKey("settopublic") )
			{
			  DiscountPageAdmin(request,response);
			}
		  if(request.getParameterMap().containsKey("gendergameedit1")||request.getParameterMap().containsKey("descriptionEdit1")||request.getParameterMap().containsKey("discountbtn101")||request.getParameterMap().containsKey("priceedit1"))
		  {
			  EditGamePage(request,response);
		  }
			 
		  if (request.getParameterMap().containsKey("toUserProfile"))
			{
			  UserProfilePage(request,response);
			}
		  
		  if (request.getParameterMap().containsKey("toUserCart"))
			{
			  UserCart(request,response);
			}
		  if (request.getParameterMap().containsKey("toUserReset"))
			{
			  PassReset(request,response);
			}
		
		  if (request.getParameterMap().containsKey("toUserStat"))
			{
			  UserStatistics(request,response);
			}

		  if (request.getParameterMap().containsKey("toGameInventory"))
			{
			  GameInventory(request,response);
			}  
		  if (request.getParameterMap().containsKey("mainLogedIn"))
			{
			  mainPageLogged(request,response);
			}
	}

	
	private void UserProfileUpdate(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		
		request.getRequestDispatcher("profileHandler.jsp").forward(request, response);
	}

	private void mainPageLogged(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		
		request.getRequestDispatcher("mainLogedinHtml.jsp").forward(request, response);
	}

	private void UserProfilePage(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException  {
		
		request.getRequestDispatcher("profile.jsp").forward(request, response);	
	}
	private void ToLoginAdmin(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException  {
		
		request.getRequestDispatcher("mainLogedinHtmlAdmin.jsp").forward(request, response);	
	}
	
	private void CartAddConfirm(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException  {
		
		request.getRequestDispatcher("shoppingCartConfirm.jsp").forward(request, response);	
	}
	
	private void ResetPassTempToNewPass(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException  {
		
		request.getRequestDispatcher("passNew.jsp").forward(request, response);	
	}
	private void GameInventory(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException  {
		
		request.getRequestDispatcher("inventory.jsp").forward(request, response);	
	}
	private void ToUserManagement(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException  {
		
		request.getRequestDispatcher("blockUser.jsp").forward(request, response);	
	}
	private void UserStatistics(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException  {
		
		request.getRequestDispatcher("userStatistics.jsp").forward(request, response);	
	}

	private void ToLogout(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException  {
		
		request.getRequestDispatcher("mainHtml.jsp").forward(request, response);	
	}

	private void toCartCheckout(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException  {
		
		request.getRequestDispatcher("checkOutForm.jsp").forward(request, response);	
	}
		
	private void ToFavorites(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException  {
		
		request.getRequestDispatcher("favoritesDisplay.jsp").forward(request, response);	
	}
	
	
	private void AdminAddGameQuantity(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException  {
		
		request.getRequestDispatcher("inventory.jsp").forward(request, response);	
	}
	private void EditGamePage(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException  {
		
		request.getRequestDispatcher("gameEditing.jsp").forward(request, response);	
	}
	private void ResetPass(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException  {
		
		request.getRequestDispatcher("passReset.jsp").forward(request, response);	
	}
	
	
	private void RemoveCartItem(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException  {
		
		request.getRequestDispatcher("removeItemFromcart.jsp").forward(request, response);	
	}
	private void AddNewGameAdmin(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException  {
		
		request.getRequestDispatcher("specialSalesAdmin.jsp").forward(request, response);	
	}
	
	private void PassReset(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException  {
		
		request.getRequestDispatcher("resetPassword.jsp").forward(request, response);	
	}
	
	private void UserCart(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException  {
		
		request.getRequestDispatcher("shoppingCart.jsp").forward(request, response);	
	}
	
	private void ChangeQuantityCart(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException  {
		
		request.getRequestDispatcher("quantityChange.jsp").forward(request, response);	
	}
	
	private void ToSearch(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		
	request.getRequestDispatcher("searchHtml.jsp").forward(request, response);
		
	}
	
	private void DeleteCartContents(HttpServletRequest request, 
			HttpServletResponse response) throws ServletException, IOException {
		
	request.getRequestDispatcher("shoppingCart.jsp").forward(request, response);	
	}
	
	
	
	private void UserBlockedConfirm(HttpServletRequest request, 
			HttpServletResponse response) throws ServletException, IOException {
		
	request.getRequestDispatcher("blockConfirm.jsp").forward(request, response);	
	}

	private void ToRegister(HttpServletRequest request, 
			HttpServletResponse response) throws ServletException, IOException {
		
	request.getRequestDispatcher("registerHTMLHtml.jsp").forward(request, response);	
	}
	
	private void ToLogin(HttpServletRequest request, 
			HttpServletResponse response) throws ServletException, IOException {
		
	request.getRequestDispatcher("loginHtml.jsp").forward(request, response);
		
	}
	private void Searchlogin00(HttpServletRequest request, 
			HttpServletResponse response) throws ServletException, IOException {
		
	request.getRequestDispatcher("SearchLogin.jsp").forward(request, response);
		
	}
	
	private void Logout(HttpServletRequest request, HttpServletResponse response)  throws ServletException, IOException {
   
	
	
	request.getRequestDispatcher("mainHtml.jsp").forward(request, response);
	
	}

	private void DiscountPage(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		
	request.getRequestDispatcher("specialSales.jsp").forward(request, response);		
	}

	private void FavoriteGames(HttpServletRequest request,
		HttpServletResponse response) throws ServletException, IOException {

		request.getRequestDispatcher("userFavorites.jsp").forward(request, response);	
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
	private void DiscountPageUser(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("specialSalesUser.jsp").forward(request, response);
		
	}
	
	private void DiscountPageAdmin(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("specialSalesAdmin.jsp").forward(request, response);
		
	}
	
	private void GameAdmitEdit(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("gameEditing.jsp").forward(request, response);
		
	}
	
	
	

protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
{	  
	 
}






}
