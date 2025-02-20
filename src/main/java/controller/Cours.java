package controller;

import dao.CoursDao;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

public class Cours {
    @WebServlet("/create")
    public class CoursServlet extends HttpServlet {
        private CoursDao coursDao ;

        @Override
        public void init() {
            coursDao = new CoursDao();
        }

        @Override
        protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            request.getRequestDispatcher("/WEB-INF/Cours/AjouterCours.jsp").forward(request, response);
        }

        @Override
        protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            int id = Integer.parseInt(request.getParameter("id"));
            String NomCours = request.getParameter("NomCours");
            String Description= request.getParameter("Description");


            model.Cours cour = new Cours(id, NomCours, Description);
            CoursDao.createCours(cour);

            response.sendRedirect(request.getContextPath() + "/read");
        }


        @WebServlet("/delete")
        public class Delete extends HttpServlet {
            private CoursDao coursDao;

            @Override
            public void init() {
                coursDao = new CoursDao();
            }

            @Override
            protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
                int id = Integer.parseInt(request.getParameter("id"));
                coursDao.deletePerson(id);
                response.sendRedirect(request.getContextPath() + "/read");
            }
        }

    }
}
