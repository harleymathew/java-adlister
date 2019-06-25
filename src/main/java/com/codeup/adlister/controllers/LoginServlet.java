package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.User;
import com.codeup.adlister.util.Password;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "controllers.LoginServlet", urlPatterns = "/login")
public class LoginServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (request.getSession().getAttribute("user") != null) {
            response.sendRedirect("/profile");
            return;
        }
        String username = request.getParameter("username");
        String password = request.getParameter("password");


        request.setAttribute("username2", username);
        request.setAttribute("password2", password);
        request.getRequestDispatcher("/WEB-INF/login.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String url = request.getParameter("url");
        User user = DaoFactory.getUsersDao().findByUsername(username);

        if (user == null) {
            request.setAttribute("username2", username);
            request.setAttribute("password2", password);
//            request.setAttribute("isNotLoggedIn", "username or password was incorrect");
            request.getRequestDispatcher("/WEB-INF/login.jsp").forward(request, response);
        }

        boolean validAttempt = Password.check(password, user.getPassword());

        if (validAttempt) {
            request.getSession().setAttribute("user", user);
            if(url.contains("/ads/index.jsp")) {
                response.sendRedirect("/ads");
            } else if (url.contains("/")){
                response.sendRedirect("/");
            } else if (url.contains("/login")){
                response.sendRedirect("/");
            } else {
                response.sendRedirect("/profile");
            }
        } else {
            response.sendRedirect("/login");
        }
    }
}
