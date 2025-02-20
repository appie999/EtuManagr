package dao;


import model.Cours;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class CoursDao {
    private Connection connection;

    public CoursDao() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            this.connection = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/EtuManager", "root", "");

            if (this.connection == null) {
                throw new SQLException("Failed to establish database connection!");
            }

            try (Statement statement = connection.createStatement()) {
                String createTableSQL = "CREATE TABLE IF NOT EXISTS cours (" +
                        "id INT AUTO_INCREMENT PRIMARY KEY, " +
                        " Nom VARCHAR(100) NOT NULL, " +
                        "Description VARCHAR(100) NOT NULL, " +
                        ");";

                statement.executeUpdate(createTableSQL);
                System.out.println("Table 'cours' created successfully");
            }

        } catch (ClassNotFoundException e) {
            System.err.println("MySQL JDBC Driver not found!");
            e.printStackTrace();
        } catch (SQLException e) {
            System.err.println("Database connection error: " + e.getMessage());
            e.printStackTrace();
        }
        }

    public static void createCours(Cours cours) {
    }

    public void deletePerson(int id) {
    }
}

