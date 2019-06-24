package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


@WebServlet(name = "controllers.UpdateProfileServlet", urlPatterns = "/profile/configurations")
public class UpdateProfileServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/profile-config.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        Long id = Long.parseLong(request.getParameter("id"));


        if (username.isEmpty() || email.isEmpty() || password.isEmpty()) {
            request.setAttribute("username", username);
            request.setAttribute("email", email);
            request.setAttribute("password", password);
            request.setAttribute("profileConfigFailure", "Inputs are empty, FIX that LOSER!!!!!!");
            request.getRequestDispatcher("/WEB-INF/profile-config.jsp").forward(request, response);
            response.sendRedirect("/profile/configurations");
            return;
        }

        if (username.isEmpty() || email.isEmpty() || password.isEmpty()) {
            request.setAttribute("username", username);
            request.setAttribute("email", email);
            request.setAttribute("password", password);
            request.setAttribute("profileConfigFailure", "Inputs are empty, Please fix that");
        }



        //Need to get current user session username, email, password and replace.



        User user = new User(id, username, email, password);
        DaoFactory.getUsersDao().update(user);
        response.sendRedirect("/profile");


    }
}



