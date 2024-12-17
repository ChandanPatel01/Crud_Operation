<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Update Record</title>
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
        }

        .form-container {
            background-color: #ffffff;
            padding: 30px 40px;
            border-radius: 10px;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.2);
            max-width: 400px;
            width: 100%;
            text-align: center;
        }

        h1 {
            margin-bottom: 20px;
            color: #007bff; /* Blue color */
            font-size: 24px;
            font-weight: 600;
        }

        input[type="text"] {
            width: 100%;
            padding: 12px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 16px;
            box-sizing: border-box;
        }

        input[type="text"]:focus {
            border-color: #007bff;
            outline: none;
            box-shadow: 0 0 5px rgba(0, 123, 255, 0.3);
        }

        button {
            background-color: #007bff;
            color: #ffffff;
            padding: 12px 20px;
            font-size: 16px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            margin: 10px 5px;
            transition: background-color 0.3s ease;
        }

        button:hover {
            background-color: #0056b3; /* Darker blue */
        }

        .home-button {
            background-color: #6c757d; /* Grey background */
        }

        .home-button:hover {
            background-color: #5a6268; /* Darker grey on hover */
        }

        p {
            margin-top: 10px;
            font-size: 14px;
        }
    </style>
</head>
<body>
    <div class="form-container">
        <h1>Update Record</h1>
        <form method="post" action="updateRecord.jsp">
            <input type="text" name="userName" placeholder="Enter User Name" required>
            <input type="text" name="password" placeholder="Enter New Password" required>
            <button type="submit">Update Record</button>
            <a href="index.html">
                <button type="button" class="home-button">Back to Home</button>
            </a>
        </form>
        <p>Update the user's password and ensure the information is correct.</p>
    </div>
</body>
</html>
