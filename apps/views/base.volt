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
            {% block content %}
            {% endblock %}
        </div>
        <div id="footer">
            {% block footer %}
                {% if isLogin is not defined %}
                    &copy; Copyright 2015, All rights reserved.
                {% endif %}
            {% endblock %}
        </div>
    </body>
</html>