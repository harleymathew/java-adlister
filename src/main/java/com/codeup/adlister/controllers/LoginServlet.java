package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.User;

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
        request.getRequestDispatcher("/WEB-INF/login.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        User dbUser = DaoFactory.getUsersDao().findByUsername(username);

        if(dbUser == null){
            response.sendRedirect("/login?error=username+doesn't+exist");
            return;
        }

        boolean validAttempt = dbUser.getPassword().equals(password);

        if (validAttempt) {
            request.getSession().setAttribute("user", dbUser);
            response.sendRedirect("/profile");
        } else {
            response.sendRedirect("/login");
        }

        if (validAttempt) {
            request.getSession().setAttribute("user", dbUser);
            response.sendRedirect("/profile");
        } else {
            response.sendRedirect("/login");
        }
    }
}