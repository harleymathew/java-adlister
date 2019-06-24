package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Ad;
import com.codeup.adlister.models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "controllers.EditServlet", urlPatterns = "/ads/edit")
public class EditServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (request.getSession().getAttribute("user") == null) {
            response.sendRedirect("/login");
            return;
        }

        Ad ad = null;

        if (request.getParameter("id") != null) {

            long id = Long.parseLong(request.getParameter("id"));
            ad = DaoFactory.getAdsDao().findById(id);

        }
        request.setAttribute("ad", ad);

        request.getRequestDispatcher("/WEB-INF/ads/edit.jsp").forward(request,response);

    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (request.getSession().getAttribute("user") == null) {
            response.sendRedirect("/login");
            return;

        }

        //find the ad by its id

        Ad ad = null;

        if (request.getParameter("id") != null) {

            Long id = Long.parseLong(request.getParameter("id"));
            ad = DaoFactory.getAdsDao().findById(id);

        }

        // update the ad with the values coming from the request/form

        ad.setTitle(request.getParameter("title"));
        ad.setDescription(request.getParameter("description"));


        // update the ad in the database using the dao

        DaoFactory.getAdsDao().update(ad);
        response.sendRedirect("/profile");

    }
}