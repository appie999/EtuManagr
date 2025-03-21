<%--
  Created by IntelliJ IDEA.
  User: Faouz
  Date: 18/02/2025
  Time: 12:33
  To change this template use File | Settings | File Templates.
--%>
<html>
<head>
    <title>Create Student</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
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
    <h1>Create Cours</h1>
    <form action="cours" method="post">
        <div class="form-group">
            <label for="name">Nom du cours:</label>
            <input type="text" class="form-control" name="name" id="name">
        </div>
        <div class="form-group">
            <label for="description">Description:</label>
            <input type="text" class="form-control" name="description" id="description">
        </div>
        <button type="submit" class="btn btn-primary">Ajouter</button>
    </form>
</div>

</body>
</html>