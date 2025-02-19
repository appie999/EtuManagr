<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Update Cours</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f8f9fa;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .container {
            background: white;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1);
            width: 400px;
        }

        h1 {
            text-align: center;
            color: #4889f2;
            margin-bottom: 20px;
        }

        .form-group {
            margin-bottom: 15px;
        }

        label {
            font-weight: bold;
            color: #4889f2;
        }

        input {
            width: 100%;
            padding: 10px;
            border: 1px solid #ced4da;
            border-radius: 5px;
            font-size: 16px;
        }

        input:focus {
            border-color: #4889f2;
            outline: none;
            box-shadow: 0 0 5px rgba(0, 123, 255, 0.5);
        }

        .btn-primary {
            width: 100%;
            padding: 10px;
            border-radius: 5px;
            font-size: 18px;
            background-color: #4889f2;
            border: none;
            transition: 0.3s;
        }

        .btn-primary:hover {
            background-color: #0056b3;
            cursor: pointer;
        }
    </style>
</head>
<body>
<div class="container mt-5">
    <h1>Update Cours</h1>
    <form action="updateCours" method="post">
        <input type="hidden" name="id" value="${Cours.id}">
        <div class="form-group">
            <label for="name">Nom du cours:</label>
            <input type="text" class="form-control" name="name" id="name" value="${Cours.name}" required>
        </div>
        <div class="form-group">
            <label for="description">Description:</label>
            <input type="text" class="form-control" name="description" id="description" value="${Cours.description}" required>
        </div>
        <button type="submit" class="btn btn-primary">Mettre Ã  jour</button>
    </form>
</div>
</body>
</html>