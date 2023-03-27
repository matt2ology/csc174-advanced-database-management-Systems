import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 * Assignment4CreateFunctionSQL
 * 
 * Create a function to implement the following requirements:
 * 
 * <ol>
 * <li>Retrieve the instructor’s name who teaches a given course.</li>
 * <ol>
 * <li><b>Function name</b>: <code>Course_Instructor</code></li>
 * <li><b>Input parameter</b>: course name</li>
 * <li><b>Return</b>: Instructor name</li>
 * </ol>
 * </ol>
 * When you populate the database, insert data such that the function can return
 * an instructor name.
 */
public class Assignment4CreateFunctionSQL {

    /**
     * The database URL for the database server running on the school's server
     */
    private static final String URL = "jdbc:derby://localhost:1527/Assignment4DB";

    /**
     * The assigned username for the database server
     */
    private static final String USERNAME = "CSC174038";

    /**
     * The assigned password for the database server
     */
    private static final String PASSWORD = "Csc134_977377379";

    public static void main(String[] args) throws SQLException {
        // Create a connection to the database
        Connection connection = DriverManager.getConnection(URL, USERNAME, PASSWORD);

        // Create a statement
        Statement statement = connection.createStatement();

        // Create a function
        statement.execute(
                "CREATE FUNCTION"
                        + "Course_Instructor(courseName VARCHAR(50))"
                        + "RETURNS VARCHAR(50)"
                        + "PARAMETER STYLE JAVA"
                        + "LANGUAGE JAVA"
                        + "NO SQL EXTERNAL NAME"
                        + "'Assignment4CreateFunctionSQL.Course_Instructor'");

        // Close the connection
        connection.close();
    }

    /**
     * Retrieve the instructor's name who teaches a given course.
     * The function is called by the SQL statement in the main method.
     * 
     * @param courseName - course name to search for in the database table Course
     * @return instructor name or null if the course is not found in the database
     * @throws SQLException - if a database access error occurs or this method is
     *                      called on a closed connection
     */
    public static String Course_Instructor(String courseName) throws SQLException {
        // Create a connection to the database
        Connection connection = DriverManager.getConnection(URL, USERNAME, PASSWORD);

        // Create a statement
        Statement statement = connection.createStatement();

        // Execute a statement
        ResultSet resultSet = statement
                .executeQuery("SELECT Instructor FROM Course WHERE CourseName = '"
                        + courseName
                        + "'");

        // Get the instructor name
        String instructorName = null;
        if (resultSet.next()) {
            // Get the first column value in the current row of the result set
            instructorName = resultSet.getString(1);
        }

        // Close the connection
        connection.close();

        return instructorName;
    }

}