<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Update Student</title>
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

        .btn-primary, .btn-secondary {
            width: 100%;
            padding: 10px;
            border-radius: 5px;
            font-size: 18px;
            border: none;
            transition: 0.3s;
        }

        .btn-primary {
            background-color: #4889f2;
        }

        .btn-primary:hover {
            background-color: #0056b3;
        }

        .btn-secondary {
            background-color: #6c757d;
        }

        .btn-secondary:hover {
            background-color: #5a6268;
        }
    </style>
</head>
<body>
<div class="container mt-5">
    <h1>Update Student</h1>
    <form action="updateStudent" method="post">
        <input type="hidden" name="id" value="${student.id}">

        <div class="form-group">
            <label for="Nom">Nom</label>
            <input type="text" class="form-control" name="Nom" id="Nom" value="${student.Nom}" required>
        </div>
        <div class="form-group">
            <label for="Prenom">Prenom</label>
            <input type="text" class="form-control" name="Prenom" id="Prenom" value="${student.Prenom}" required>
        </div>
        <div class="form-group">
            <label for="date_de_naissance">Date de Naissance</label>
            <input type="date" class="form-control" name="date_de_naissance" id="date_de_naissance" value="${student.date_de_naissance}" required>
        </div>
        <div class="form-group">
            <label for="email">E-mail</label>
            <input type="email" class="form-control" name="email" id="email" value="${student.email}" required>
        </div>

        <button type="submit" class="btn btn-primary">Update</button>
        <a href="cours" class="btn btn-secondary mt-2">Cancel</a>
    </form>
</div>

</body>
</html>
