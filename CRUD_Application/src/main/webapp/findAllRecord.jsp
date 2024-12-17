<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>

<!DOCTYPE html>
<html>
<head>
    <title>All User Information</title>
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap" rel="stylesheet">

    <!-- CSS for Styling -->
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            background-color: #f4f4f9; /* Light grey background */
            color: #333; /* Dark text color */
        }
        .container {
            text-align: center;
            background: #ffffff;
            padding: 20px 40px;
            border-radius: 10px;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.2);
            width: 80%;
            overflow-x: auto;
        }
        h1 {
            color: #0056b3;
            font-weight: 600;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        table, th, td {
            border: 2px solid #0056b3; /* Blue border */
        }
        th, td {
            padding: 15px;
            text-align: center;
            font-size: 16px;
        }
        th {
            background-color: #0056b3;
            color: #fff;
            font-weight: 600;
        }
        td {
            background-color: #e6f2ff;
        }
        a {
            text-decoration: none;
            color: #fff;
            background-color: #0056b3;
            padding: 10px 20px;
            border-radius: 5px;
            margin-top: 20px;
            display: inline-block;
        }
        a:hover {
            background-color: #004080;
        }
        p {
            color: red;
            font-size: 16px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>All User Information</h1>
        <%
            try {
                // Load JDBC driver
                Class.forName("com.mysql.cj.jdbc.Driver");

                // Connect to the database
                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/chandan", "root", "root");

                // Prepare the SQL query to fetch all records
                PreparedStatement ps = conn.prepareStatement("SELECT * FROM emp1");

                // Execute the query
                ResultSet rs = ps.executeQuery();

                if (rs.next()) {
        %>
                    <table>
                        <tr>
                            <th>User Name</th>
                            <th>Password</th>
                        </tr>
        <%
                    do {
        %>
                        <tr>
                            <td><%= rs.getString("userName") %></td>
                            <td><%= rs.getString("password") %></td>
                        </tr>
        <%
                    } while (rs.next());
        %>
                    </table>
        <%
                } else {
        %>
                    <p>No records found!</p>
        <%
                }
                rs.close();
                ps.close();
                conn.close();
            } catch (Exception e) {
        %>
                <p><strong>Error:</strong> <%= e.getMessage() %></p>
        <%
            }
        %>

        <br>
        <a href="index.html">Back Home</a>
    </div>
</body>
</html>
