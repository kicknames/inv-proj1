<html>
    <head>
        {% block head %}
            <meta charset="utf-8">
            <meta name="viewport" content="width=device-width, initial-scale=1">
            <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
            <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
            <link rel="stylesheet" href="/css/style.css">
        {% endblock %}
        <title>{% block title %}{% endblock %} CHUPAQUI - My Webpage</title>
    </head>
    <body>
        <div id="content">
            {% if isLogin is not defined %}
                <nav class="navbar navbar-expand-md bg-dark navbar-dark">
                    <a class="navbar-brand" href="#">Navbar</a>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="collapsibleNavbar">
                        <ul class="navbar-nav">
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    Produtos
                                </a>
                                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item" href="/Products">Adionar Produtos</a>
                                    <a class="dropdown-item" href="/Products/list">Gerir Pedidos</a>
                                </div>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="/Session/logout">Log Out</a>
                            </li>    
                        </ul>
                    </div>  
                </nav>
            {% endif %}
            {% block content %}
            {% endblock %}
        </div>
        <div class="container py-5 bind-top-xs">
            <div id="footer">
                {% block footer %}
                    {% if isLogin is not defined %}
                        &copy; Copyright 2015, All rights reserved.
                    {% endif %}
                {% endblock %}
            </div>
        </div>
    </body>
</html>