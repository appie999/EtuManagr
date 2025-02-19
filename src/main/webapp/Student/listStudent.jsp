<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Cours List</title>
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
            width: 90%;
            max-width: 900px;
        }

        h1 {
            text-align: center;
            color: #333;
            margin-bottom: 20px;
        }

        .table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
            background: white;
            border-radius: 8px;
            overflow: hidden;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
        }

        .table th, .table td {
            border: 1px solid #ddd;
            padding: 12px;
            text-align: center;
        }

        .table th {
            background-color: #4889f2;
            color: white;
        }

        .table tbody tr:nth-child(even) {
            background-color: #f1f1f1;
        }

        .table tbody tr:hover {
            background-color: #d9e9ff;
        }

        .btn {
            padding: 8px 12px;
            border-radius: 5px;
            font-size: 14px;
            text-decoration: none;
            display: inline-block;
            text-align: center;
            transition: 0.3s ease;
            border: none;
            cursor: pointer;
        }

        .btn-primary {
            background-color: #17a2b8;
            color: white;
        }

        .btn-primary:hover {
            background-color: #138496;
        }

        .btn-danger {
            background-color: #dc3545;
            color: white;
        }

        .btn-danger:hover {
            background-color: #c82333;
        }

        .btn-success {
            background-color: #28a745;
            color: white;
            display: block;
            width: fit-content;
            margin: 10px auto;
        }

        .btn-success:hover {
            background-color: #218838;
        }

        form {
            display: inline;
        }
    </style>
</head>
<body>
<div class="container mt-6">
    <h1>Cours List</h1>
    <table class="table table-cours">
        <thead>
        <tr>
            <th>ID</th>
            <th>Nom</th>
            <th>Prenom</th>
            <th>Date de Naissance</th>
            <th>E-mail</th>
            <th>Actions</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="student" items="${students}">
            <tr>
                <td>${student.id}</td>
                <td>${student.Nom}</td>
                <td>${student.Prenom}</td>
                <td>${student.date_de_naissance}</td>
                <td>${student.email}</td>
                <td>
                    <!-- Update Button -->
                    <a href="updateStudent?id=${student.id}" class="btn btn-primary">Update</a>

                    <!-- Delete Button (Handled via a form) -->
                    <form action="deleteStudent" method="post" onsubmit="return confirm('Are you sure you want to delete this student?');">
                        <input type="hidden" name="id" value="${student.id}">
                        <button type="submit" class="btn btn-danger">Delete</button>
                    </form>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>

    <a href="cours" class="btn btn-success">Add New Cours</a>
</div>

</body>
</html>
