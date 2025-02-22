package servlet;

import dao.StudentDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.StudentCourse;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet("/enrolled-students")

public class EnrolledStudentServlet extends HttpServlet {
    private StudentDAO studentDAO = new StudentDAO();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException{
        try{
            List<StudentCourse> enrolledStudents = studentCourseDAO.readAll();
            request.setAttribute("enrolledStudents", enrolledStudents);
            request.getRequestDispatcher("/enrolled-students.jsp").forward(request, response);
        } catch (SQLException e){
            throw new ServletException("Error retrieving enrolled students", e);
        }
    }
}
