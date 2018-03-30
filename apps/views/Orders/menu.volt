{% extends "base.volt" %}
{% block content %}
    <div class="container-fluid">
        <div class="row catalog">
            {% for i,item in categorys %}
                <div class="col-sm col-xl-2 col-md-4 col-12">
                    <img src="/img/icons/{{item.icon}}.svg">
                    <span>{{item.name}}</span>
                </div>
            {% endfor %}
        </div>
    </div>
{% endblock %}