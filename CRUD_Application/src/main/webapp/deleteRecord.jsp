<%@page import="java.sql.Connection" %>
<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.PreparedStatement" %>

<%
    String userName = request.getParameter("userName");
    Class.forName("com.mysql.cj.jdbc.Driver");
    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/chandan", "root", "root");
    PreparedStatement ps = conn.prepareStatement("delete from emp1 where userName=?");
    ps.setString(1, userName);

    Integer count = ps.executeUpdate();
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Delete Record</title>
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet">

    <!-- CSS Styling -->
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
        }

        .container {
            background-color: #ffffff;
            padding: 30px 40px;
            border-radius: 10px;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.2);
            text-align: center;
            width: 400px;
        }

        h1 {
            color: #dc3545; /* Red color */
            font-size: 24px;
            margin-bottom: 20px;
            font-weight: 600;
        }

        p {
            font-size: 18px;
            color: #333;
            margin-bottom: 20px;
        }

        .btn {
            display: inline-block;
            margin: 10px 5px;
            padding: 10px 20px;
            font-size: 16px;
            text-decoration: none;
            color: #ffffff;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }

        .btn-delete {
            background-color: #dc3545;
        }

        .btn-delete:hover {
            background-color: #c82333;
        }

        .btn-home {
            background-color: #6c757d;
        }

        .btn-home:hover {
            background-color: #5a6268;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Delete Record</h1>
        <p><strong><%= count %> Record Deleted!</strong></p>
        <a href="delete.jsp" class="btn btn-delete">Delete More Record</a>
        <a href="index.html" class="btn btn-home">Back Home</a>
    </div>
</body>
</html>
