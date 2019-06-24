package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "controllers.RegisterServlet", urlPatterns = "/register")
public class RegisterServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/register.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String passwordConfirmation = request.getParameter("confirm_password");

        // validate input
        boolean inputHasErrors = username.isEmpty()
                || email.isEmpty()
                || password.isEmpty()
                || (! password.equals(passwordConfirmation));

        if (username.isEmpty() || email.isEmpty() || password.isEmpty()) {
            request.setAttribute("username", username);
            request.setAttribute("email", email);
            request.setAttribute("password", password);
            request.setAttribute("confirm_password", passwordConfirmation);
            request.setAttribute("registrationFailure", "Inputs are empty, FIX that LOSER!!!!!!");
            request.getRequestDispatcher("/WEB-INF/register.jsp").forward(request, response);
            response.sendRedirect("/register");
            return;
        }

        // validate whether username exists in database
        boolean usernameExists = false;
        if ((DaoFactory.getUsersDao().findByUsername(username)) != null) {
            usernameExists = true;
        }
        if (usernameExists) {
            request.setAttribute("username", username);
            request.setAttribute("email", email);
            request.setAttribute("password", password);
            request.setAttribute("confirm_password", passwordConfirmation);
            request.setAttribute("registrationFailure", "Account already exists, LOSER!");
            request.getRequestDispatcher("/WEB-INF/register.jsp").forward(request, response);
            response.sendRedirect("/register");
            return;
        }

        if(! password.equals(passwordConfirmation)){
            request.setAttribute("username", username);
            request.setAttribute("email", email);
            request.setAttribute("password", password);
            request.setAttribute("confirm_password", passwordConfirmation);
            request.setAttribute("registrationFailure", "Passwords do not match, try again LOSER!!!!!!");
            request.getRequestDispatcher("/WEB-INF/register.jsp").forward(request, response);
            response.sendRedirect("/register");
            return;
        }



        // create and save a new user

        User user = new User(username, email, password);
        DaoFactory.getUsersDao().insert(user);
        response.sendRedirect("/login");


    }

}
