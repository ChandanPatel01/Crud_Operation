<%@page import="java.sql.Connection" %>
<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.PreparedStatement" %>

<!DOCTYPE html>
<html>
<head>
    <title>Record Insertion</title>
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
            color: #333; /* Text color */
        }

        .container {
            text-align: center;
            background: #ffffff;
            padding: 40px 60px;
            border-radius: 10px;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.2);
            max-width: 400px;
        }

        h1 {
            color: #28a745; /* Success green */
            font-weight: 600;
            margin-bottom: 20px;
        }

        p {
            font-size: 18px;
            color: #333;
        }

        a {
            display: inline-block;
            text-decoration: none;
            color: #fff;
            background-color: #0056b3;
            padding: 12px 20px;
            border-radius: 5px;
            margin: 10px 5px;
            font-size: 16px;
            font-weight: 500;
            transition: background-color 0.3s ease;
        }

        a:hover {
            background-color: #004080; /* Darker blue on hover */
        }
    </style>
</head>
<body>
<%
    String userName = request.getParameter("userName");
    String passwordStr = request.getParameter("password");

    int count = 0;
    boolean errorOccurred = false;

    try {
        // Convert password to Integer safely
        Integer password = Integer.parseInt(passwordStr);

        // Database connection
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/chandan", "root", "root");

        // SQL query
        PreparedStatement ps = conn.prepareStatement("INSERT INTO emp1 VALUES (?,?)");
        ps.setString(1, userName);
        ps.setInt(2, password);

        count = ps.executeUpdate();

        // Close resources
        ps.close();
        conn.close();

    } catch (Exception e) {
        errorOccurred = true;
    }
%>

<div class="container">
    <% if (!errorOccurred && count > 0) { %>
        <h1>Success!</h1>
        <p><%= count %> Record Added Successfully!</p>
    <% } else { %>
        <h1 style="color: red;">Error!</h1>
        <p>Something went wrong. Please try again.</p>
    <% } %>

    <br>
    <a href="add.jsp">Add More Records</a>
    <a href="index.html">Back Home</a>
</div>
</body>
</html>
