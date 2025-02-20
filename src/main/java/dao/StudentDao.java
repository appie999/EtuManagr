package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class StudentDao {
    private static final String HOST = "localhost";
    private static final int PORT = 3306;
    private static final String DB_NAME = "student";
    private static final String USERNAME = "root";
    private static final String PASSWORD = "";

    private static Connection connection;

    // Singleton pattern to ensure only one connection is used
    public static Connection getConnection() {
        if (connection == null) {
            try {
                // Load MySQL JDBC Driver (optional for newer JDBC versions)
                Class.forName("com.mysql.cj.jdbc.Driver");

                // Establish connection
                connection = DriverManager.getConnection(
                        String.format("jdbc:mysql://%s:%d/%s", HOST, PORT, DB_NAME),
                        USERNAME,
                        PASSWORD
                );
                System.out.println("Connected to the database successfully!");

            } catch (ClassNotFoundException e) {
                System.err.println("MySQL JDBC Driver not found!");
                e.printStackTrace();
            } catch (SQLException se) {
                System.err.println("Database connection failed!");
                se.printStackTrace();
            }
        }
        return connection;
    }
}
