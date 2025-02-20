package controller;

import dao.CoursDao;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/cours")
public class Cours extends HttpServlet {

   ;private CoursDao coursDao;

    public Cours(String  Nom, String Description) {
    }

    @Override
        public void init() {

          coursDao= new CoursDao();
        }

        @Override
        protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            request.getRequestDispatcher("/webapp/AddCours.jsp").forward(request, response);
        }

        @Override
        protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            String Nom = request.getParameter("Nom");
            String Description = request.getParameter("Description");


            Cours cours = new Cours(Nom, Description);

        }
    }


