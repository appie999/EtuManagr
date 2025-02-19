package dao;

import controller.Student;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;



public class StudentDao {
    private static Connection conn;
    public StudentDao() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            this.conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/Etudiant", "root", "");
            if (this.conn == null) {
                throw new SQLException("Failed to establish database connection !");
            }

            try(Statement statement = conn.createStatement()) {
                String createTableSQL = "CREATE TABLE IF NOT EXISTS students ("+"id INT AUTO_INCREMENT PRIMARY KEY, "
                        +"nom VARCHAR(50) NOT NULL, "
                        +"prenom VARCHAR(50) NOT NULL, "
                        +"email VARCHAR(50) NOT NULL, "
                        +"date_de_naissance INT NOT NULL, " +");";
                statement.executeUpdate(createTableSQL);
                System.out.println("Table 'students' created successfully !");
            }
        } catch (ClassNotFoundException e) {
            System.err.println("MySQL JDBC Driver class not found !");
            e.printStackTrace();
        }catch (SQLException e) {
            System.err.println("Database connection error !" + e.getMessage());
            e.printStackTrace();
        }
    }

    public static void createStudent(Student student) {
        if (conn == null){
            System.out.println("Database connection is not initialized !");
            return;
        }

    }
}
