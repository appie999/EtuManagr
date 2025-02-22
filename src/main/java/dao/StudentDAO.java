package dao;

import model.Student;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class StudentDAO {
    public void create(Student student) throws SQLException {
        String sql = "INSERT INTO students (first_name, last_name, email, dateNaiss) VALUES (?,?,?,?)";
        try(Connection conn = DatabaseConnection.getConnection();
            PreparedStatement stmt = conn.prepareStatement(sql)){
            stmt.setString(1, student.getFirstName());
            stmt.setString(2, student.getLastName());
            stmt.setString(3, student.getEmail());
            stmt.setString(4, student.getDateNaiss());
            stmt.executeUpdate();
        }
    }

    public static List<Student> readAll() throws SQLException {
        List<Student> students = new ArrayList<>();
        String sql = "SELECT * FROM students";
        try(Connection conn = DatabaseConnection.getConnection();
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery(sql)){
            while(rs.next()){
                Student student = new Student();
                student.setId(rs.getInt("id"));
                student.setFirstName(rs.getString("first_name"));
                student.setLastName(rs.getString("last_name"));
                student.setEmail(rs.getString("email"));
                student.setDateNaiss(rs.getString("dateNaiss"));
            }
        }
        return students;
    }

    public void update(Student student) throws SQLException {
        String sql = "UPDATE students SET first_name=?,last_name=?,email=?,dateNaiss=? WHERE id=?";
        try(Connection conn = DatabaseConnection.getConnection();
            PreparedStatement stmt = conn.prepareStatement(sql)){
            stmt.setString(1, student.getFirstName());
            stmt.setString(2, student.getLastName());
            stmt.setString(3, student.getEmail());
            stmt.setString(4, student.getDateNaiss());
            stmt.setInt(5, student.getId());
            stmt.executeUpdate();
        }
    }

    public Student delete(int id) throws SQLException {
        String sql = "DELETE FROM students WHERE id=?";
        try(Connection conn = DatabaseConnection.getConnection();
        PreparedStatement stmt = conn.prepareStatement(sql)){
            stmt.setInt(1, id);
            try(ResultSet rs = stmt.executeQuery()) {
                if(rs.next()){
                    Student student = new Student();
                    student.setId(rs.getInt("id"));
                    student.setFirstName(rs.getString("first_name"));
                    student.setLastName(rs.getString("last_name"));
                    student.setEmail(rs.getString("email"));
                    student.setDateNaiss(rs.getString("dateNaiss"));
                    return student;
                }
            }
        }
        return null;
    }
}
