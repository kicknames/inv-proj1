{% extends "base.volt" %}
{% block content %}
    <div class="container-fluid">
        <!--div class="row catalog">
        {# % for i,item in categorys %}
            <div class="col-sm col-xl-2 col-md-4 col-12">
                <a href="/Orders/menu?category={{item.id}}">
                    <img src="/img/icons/{{item.icon}}.svg">
                    <span>{{item.name}}</span>
                </a>    
            </div>
        {% endfor %#}
    </div-->
        <div id="accordion" class="col-xl-3 col-sm-4 col-12 request-create-menu">
            {% for i,item in category %}
                <div class="card">
                    <div class="card-header">
                        <a class="card-link" data-toggle="collapse" href="#collapse{{i}}">
                            <img class="table-img" src="/img/icons/{{item.icon}}.svg">
                            {{item.name}}
                        </a>
                    </div>
                    <div id="collapse{{i}}" class="collapse" data-parent="#accordion">
                        {% for x,subitem in item.products %}
                            <div class="card-body">
                                {{subitem.name}}
                            </div>
                        {% endfor %}
                    </div>
                </div>
            {% endfor %}
        </div>
        <div class="card col-xl-3 col-sm-3 col-6 request-card">
            <img class="card-img-top card-img" src="/img/icons/19-bill.svg" alt="Card image cap">
            <div class="card-body">
                <h5 class="card-title">Pedido meda 1</h5>
                <ul class="list-group list-group-flush">
                    <li class="list-group-item">Bacalhau</li>
                    <li class="list-group-item">Bolinhos</li>
                    <li class="list-group-item">Coca-cola</li>
                </ul>
            </div>
            <div class="card-body">
                <a href="#" class="btn btn-primary">Envia para cozinha</a>
            </div>
        </div>
        <div class="card col-xl-6 col-md-5 col-sm-8 col-12 request-item-composition">
            <div  class="request-custom-items col-3">
                <img class="card-img-top card-img custom-request-img" src="/img/icons/43-ice tea.svg" alt="Drink">
                <span class="inner-text">Drinks</span>
            </div>
            <div  class="request-custom-items col-8">
                <ul class="list-group list-group-flush list-products">
                    <li class="list-group-item">Coca-cola</li>
                </ul>
            </div>
            <hr>
            <div  class="request-custom-items col-3">
                <img class="card-img-top card-img custom-request-img" src="/img/icons/11-steak.svg" alt="Drink">
                <span class="inner-text">plate</span>
            </div>
            <div  class="request-custom-items col-8">
                <ul class="list-group list-group-flush list-products">
                    <li class="list-group-item">Arroz</li>
                    <li class="list-group-item">Carne</li>
                    <li class="list-group-item">Peixe</li>
                </ul>
            </div>
            <div class="card-body create-container">
                <a href="#" class="btn btn-primary">Adicionar</a>
            </div>´
        </div>
    </div>
{% endblock %}