<%--
  Created by IntelliJ IDEA.
  User: Faouz
  Date: 18/02/2025
  Time: 12:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Cours list</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            background-color: #f4f7f6;
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
            background-color: #4889f2;
        }

        .table tbody tr:hover {
            background-color: #4889f2;
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
        .btn-success {
            background-color: #4889f2;
            color: white;
            display: block;
            width: fit-content;
            margin: auto;
        }

        .btn-success:hover {
            background-color: #4889f2;
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
            <th>Name</th>
            <th>Description</th>
        </tr>
        </thead>
        <tbody>

        <tr>
            <td>${Cours.id}</td>
            <td>${Cours.description}</td>

        </tr>
        </tbody>
    </table>
    <a href="cours" class="btn btn-success">Add New Cours</a>
</div>

</body>
</html>