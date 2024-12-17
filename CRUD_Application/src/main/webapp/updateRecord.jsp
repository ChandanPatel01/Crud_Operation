<%@page import="java.sql.Connection" %>
<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.PreparedStatement" %>

<%
    String userName = request.getParameter("userName");
    Integer password = Integer.parseInt(request.getParameter("password"));

    Class.forName("com.mysql.cj.jdbc.Driver");
    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/chandan", "root", "root");
    PreparedStatement ps = conn.prepareStatement("update emp1 set password=? where userName=?");

    ps.setInt(1, password);
    ps.setString(2, userName);

    Integer count = ps.executeUpdate();
%>

<!DOCTYPE html>
<html>
<head>
    <title>Record Update</title>
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
            background-color: #f4f4f9; /* Light background */
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
            color: #007bff;
            font-size: 24px;
            margin-bottom: 20px;
        }

        p {
            font-size: 18px;
            color: #333;
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

        .btn-update {
            background-color: #007bff;
        }

        .btn-update:hover {
            background-color: #0056b3;
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
        <h1>Record Update</h1>
        <p><strong><%= count %> Record Updated!</strong></p>
        <a href="update.jsp" class="btn btn-update">Update More Record</a>
        <a href="index.html" class="btn btn-home">Back Home</a>
    </div>
</body>
</html>
