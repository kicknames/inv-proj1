{% extends "base.volt" %}
{% block content %}
    <nav class="navbar navbar-expand-md bg-dark navbar-dark">
        <a class="navbar-brand" href="#">Navbar</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="collapsibleNavbar">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link" href="/Products">Adionar Produtos</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Ver Pedidos</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/Session/logout">Log Out</a>
                </li>    
            </ul>
        </div>  
    </nav>
{% endblock %}