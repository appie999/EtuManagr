<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<h1><%= "Hello World!" %>
</h1>
<br/>
<a href="hello-servlet">Hello Servlet</a>
</body><%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>EduManage - Dashboard</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
    <style>
        :root {
            --primary: #6366f1;
            --secondary: #4f46e5;
            --success: #22c55e;
            --info: #06b6d4;
            --warning: #eab308;
            --background: #f8fafc;
            --card-bg: #ffffff;
            --text-primary: #1e293b;
            --text-secondary: #64748b;
        }

        body {
            background-color: var(--background);
            font-family: system-ui, -apple-system, sans-serif;
        }

        .dashboard-header {
            background: linear-gradient(135deg, var(--primary), var(--secondary));
            padding: 2rem 0;
            margin-bottom: 2rem;
            border-radius: 0 0 2rem 2rem;
        }

        .dashboard-title {
            color: white;
            font-weight: 800;
            font-size: 2.5rem;
            margin: 0;
            text-align: center;
        }

        .card-container {
            padding: 0.5rem;
        }

        .feature-card {
            background: var(--card-bg);
            border: none;
            border-radius: 1rem;
            transition: all 0.3s ease;
            height: 100%;
            position: relative;
            overflow: hidden;
        }

        .feature-card::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 0.25rem;
            background: linear-gradient(90deg, var(--primary), var(--secondary));
            opacity: 0;
            transition: opacity 0.3s ease;
        }

        .feature-card:hover {
            transform: translateY(-0.5rem);
            box-shadow: 0 1rem 2rem rgba(0, 0, 0, 0.1);
        }

        .feature-card:hover::before {
            opacity: 1;
        }

        .card-body {
            padding: 2rem;
        }

        .feature-icon {
            width: 4rem;
            height: 4rem;
            display: flex;
            align-items: center;
            justify-content: center;
            border-radius: 1rem;
            margin: 0 auto 1.5rem;
            background: linear-gradient(135deg, var(--primary), var(--secondary));
            color: white;
        }

        .card-title {
            color: var(--text-primary);
            font-weight: 700;
            font-size: 1.25rem;
            margin-bottom: 1rem;
        }

        .card-text {
            color: var(--text-secondary);
            margin-bottom: 1.5rem;
        }

        .action-button {
            width: 100%;
            padding: 0.75rem;
            border-radius: 0.75rem;
            font-weight: 600;
            text-transform: uppercase;
            letter-spacing: 0.05em;
            transition: all 0.3s ease;
            border: none;
        }

        .action-button:hover {
            transform: scale(1.05);
            box-shadow: 0 0.5rem 1rem rgba(0, 0, 0, 0.1);
        }

        .action-button i {
            margin-right: 0.5rem;
        }

        @media (max-width: 768px) {
            .dashboard-title {
                font-size: 2rem;
            }

            .card-container {
                padding: 0.25rem;
            }
        }
    </style>
</head>
<body>
<header class="dashboard-header">
    <h1 class="dashboard-title">EduManage</h1>
</header>

<div class="container">
    <div class="row g-4">
        <div class="col-md-4 col-sm-6 card-container">
            <div class="feature-card">
                <div class="card-body">
                    <div class="feature-icon">
                        <i class="fa-solid fa-user-plus fa-lg"></i>
                    </div>
                    <h5 class="card-title">Ajouter un Étudiant</h5>
                    <p class="card-text">Créez un nouveau profil étudiant dans le système</p>
                    <a href="${pageContext.request.contextPath}/students?action=add" class="btn action-button" style="background: var(--primary); color: white;">
                        <i class="fa-solid fa-plus"></i>Ajouter
                    </a>
                </div>
            </div>
        </div>

        <div class="col-md-4 col-sm-6 card-container">
            <div class="feature-card">
                <div class="card-body">
                    <div class="feature-icon">
                        <i class="fa-solid fa-book-open fa-lg"></i>
                    </div>
                    <h5 class="card-title">Ajouter un Cours</h5>
                    <p class="card-text">Créez et configurez un nouveau cours dans le système</p>
                    <a href="${pageContext.request.contextPath}/courses?action=add" class="btn action-button" style="background: var(--success); color: white;">
                        <i class="fa-solid fa-plus"></i>Ajouter
                    </a>
                </div>
            </div>
        </div>

        <div class="col-md-4 col-sm-6 card-container">
            <div class="feature-card">
                <div class="card-body">
                    <div class="feature-icon">
                        <i class="fa-solid fa-book fa-lg"></i>
                    </div>
                    <h5 class="card-title">Inscrire un Étudiant</h5>
                    <p class="card-text">Inscrivez des étudiants aux cours disponibles</p>
                    <a href="${pageContext.request.contextPath}/student-courses" class="btn action-button" style="background: var(--warning); color: var(--text-primary);">
                        <i class="fa-solid fa-plus"></i>Inscrire
                    </a>
                </div>
            </div>
        </div>

        <div class="col-md-4 col-sm-6 card-container">
            <div class="feature-card">
                <div class="card-body">
                    <div class="feature-icon">
                        <i class="fa-solid fa-users fa-lg"></i>
                    </div>
                    <h5 class="card-title">Étudiants Inscrits</h5>
                    <p class="card-text">Consultez la liste complète des étudiants inscrits</p>
                    <a href="${pageContext.request.contextPath}/enrolled-students" class="btn action-button" style="background: var(--info); color: white;">
                        <i class="fa-solid fa-list"></i>Voir la Liste
                    </a>
                </div>
            </div>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
</html>