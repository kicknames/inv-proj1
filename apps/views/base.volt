<html>
    <head>
        {% block head %}
            <meta charset="utf-8">
            <meta name="viewport" content="width=device-width, initial-scale=1">
            <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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
                    <i class="fa fa-home" style="color:white;font-size: 30px;"></i>
                    <img src="/img/utensils.svg" style=" color:whitesmoke; width: 20px;">
                    <img src="/img/cart-arrow-down.svg" style=" color:whitesmoke; width: 27px;">
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="collapsibleNavbar">
                        <ul class="navbar-nav">
                     

                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    {{this.tradutor.get('base.btn.products')}}
                                </a>
                                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item" href="/Products">{{this.tradutor.get('base.btn.addproducts')}}</a>
                                    <a class="dropdown-item" href="/Products/list">{{this.tradutor.get('base.btn.manageorders')}}</a>
                                </div>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="/Session/logout">{{this.tradutor.get('base.btn.logout')}}</a>
                            </li>    
                        </ul>
                    </div>  
                    <select class="form-control col-2">
                        <option style="background-image:url(pt.svg);"> Portugal</option>
                        <option>Espanha</option>
                        <option>Reino Unido</option>
                        <option>França</option>
                        <option>Alemanha</option>
                    </select>
                </nav>
            {% endif %}
            {% block content %}
            {% endblock %}
        </div>
        <div class="container py-5 bind-top-xs">
            <div id="footer">
                {% block footer %}
                    {% if isLogin is not defined %}
                        &copy; Copyright Francisco & Aureliano Martins lda. 2018, All rights reserved.
                    {% endif %}
                {% endblock %}
            </div>
        </div>
    </body>
</html>