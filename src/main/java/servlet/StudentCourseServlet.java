package servlet;

import dao.CourseDAO;
import dao.DatabaseConnection;
import dao.StudentDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Course;
import model.Student;

import java.io.IOException;
import java.rmi.server.ServerCloneException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

@WebServlet("/student-courses/*")

public class StudentCourseServlet extends HttpServlet {
    private StudentDAO studentDAO = new StudentDAO();
    private CourseDAO courseDAO = new CourseDAO();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException{
        try{
            List<Student> students = StudentDAO.readAll();
            List<Course> courses = courseDAO.readAll();
            request.setAttribute("students", students);
            request.setAttribute("courses", courses);
            request.getRequestDispatcher("student-courses.jsp").forward(request, response);
        } catch (SQLException e){
            throw new ServletException("Error retrieving student courses",e);
        }

    }

    @Override

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            int studentId = Integer.parseInt(request.getParameter("studentId"));
            int courseId = Integer.parseInt(request.getParameter("courseId"));


            if (isEnrolled(studentId, courseId)) {
                request.setAttribute("error", "Student is already enrolled in this course.");
                doGet(request, response);
                return;
            }


            String sql = "INSERT INTO student_courses (student_id, course_id) VALUES (?, ?)";
            try (Connection conn = DatabaseConnection.getConnection();
                 PreparedStatement stmt = conn.prepareStatement(sql)) {
                stmt.setInt(1, studentId);
                stmt.setInt(2, courseId);
                stmt.executeUpdate();
            }

            response.sendRedirect(request.getContextPath() + "/student-courses");
        } catch (Exception e) {
            throw new ServletException("Error processing student course enrollment", e);
        }
    }

    private boolean isEnrolled(int studentId, int courseId) throws SQLException {
        String sql = "SELECT COUNT(*) FROM student_courses WHERE student_id = ? AND course_id = ?";
        try (Connection conn = DatabaseConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setInt(1, studentId);
            stmt.setInt(2, courseId);
            try (ResultSet rs = stmt.executeQuery()) {
                if (rs.next()) {
                    return rs.getInt(1) > 0;
                }
            }
        }
        return false;
    }

}
