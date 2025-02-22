package servlet;

import dao.StudentDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Student;

import java.io.IOException;
import java.time.format.DateTimeFormatter;

@WebServlet("/students")

public class StudentServlet extends HttpServlet {
    private StudentDAO studentDAO = new StudentDAO();
    private DateTimeFormatter dateFormat = DateTimeFormatter.ofPattern("dd/MM/yyyy");

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException{

        try{
            request.setAttribute("Student", studentDAO.readAll());
            request.getRequestDispatcher("student.jsp").forward(request, response);
        } catch (Exception e) {
            throw new ServletException(e);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            String action = request.getParameter("action");
            if ("create".equals(action)) {
                Student student = new Student();
                student.setFirstName(request.getParameter("firstName"));
                student.setLastName(request.getParameter("lastName"));
                student.setEmail(request.getParameter("email"));
                student.setDateNaiss(request.getParameter("dateNaiss"));
                studentDAO.create(student);
            } else if ("update".equals(action)) {
                Student student = new Student();
                student.setId(Integer.parseInt(request.getParameter("id")));
                student.setFirstName(request.getParameter("firstName"));
                student.setLastName(request.getParameter("lastName"));
                student.setEmail(request.getParameter("email"));
                student.setDateNaiss(request.getParameter("dateNaiss"));
                studentDAO.update(student);
            } else if ("delete".equals(action)) {
                int id = Integer.parseInt(request.getParameter("id"));
                studentDAO.delete(id);
            }
            response.sendRedirect(request.getContextPath() + "/students");
        } catch (Exception e) {
            throw new ServletException("Error processing student", e);
        }


}
}
