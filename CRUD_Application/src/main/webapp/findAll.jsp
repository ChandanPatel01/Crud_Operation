<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Find All Records</title>
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
            color: #28a745; /* Green color */
            font-size: 24px;
            margin-bottom: 20px;
            font-weight: 600;
        }

        button {
            background-color: #28a745; /* Green color for find all */
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
            background-color: #218838; /* Darker green */
        }

        .btn-home {
            background-color: #6c757d; /* Grey background */
        }

        .btn-home:hover {
            background-color: #5a6268; /* Darker grey */
        }
    </style>
</head>
<body>
    <div class="form-container">
        <h1>Find All Records</h1>
        <form method="post" action="findAllRecord.jsp">
            <button type="submit">Find All Records</button>
            <a href="index.html">
                <button type="button" class="btn-home">Back to Home</button>
            </a>
        </form>
    </div>
</body>
</html>
