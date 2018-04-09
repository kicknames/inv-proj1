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
            <link rel="stylesheet" href="{{this.session.getCss()}}">
            <script src="{{this.session.getJs()}}" type="text/javascript"></script>
            <script defer src="https://use.fontawesome.com/releases/v5.0.9/js/all.js" integrity="sha384-8iPTk2s/jMVj81dnzb/iFR2sdA7u06vHJyyLlAd4snFpCl/SnyUjRrbdJsw1pGIl" crossorigin="anonymous"></script>
        {% endblock %}
        <title>{% block title %}{% endblock %}{{this.tradutor.get('titulo')}}</title>
    </head>
    <body>
        {% if isLogin is not defined %}
            <nav class="navbar navbar-expand-sm bg-dark navbar-dark" style="width: 100% !important;">
                <a href="/Map/restaurant"><i class="fas fa-home top-menu"></i></a>
                <a href="/Orders/create"><i class="fas fa-shopping-basket top-menu"></i></a>
                <a href="/Orders/list"><i class="fas fa-clipboard-list top-menu"></i></a>
                <i class="fas fa-shopping-cart top-menu"></i>
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
                                <a class="dropdown-item" href="/Products/categorys">{{this.tradutor.get('base.btn.category')}}</a>
                            </div>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="/Session/logout">{{this.tradutor.get('base.btn.logout')}}</a>
                        </li>    
                    </ul>
                </div>  
                <!--select class="form-control col-2">
                    <option style="background-image:url(pt.svg);"> Portugal</option>
                    <option>Espanha</option>
                    <option>Reino Unido</option>
                    <option>França</option>
                    <option>Alemanha</option>
                </select-->
            </nav>
        {% endif %}
        {% block content %}
        {% endblock %}
        <div class="container py-5 bind-top-xs">
            <div id="footer">
                {% block footer %}
                    {% if isLogin is not defined %}

                    {% endif %}
                {% endblock %}
            </div>
        </div>
    </body>
</html>