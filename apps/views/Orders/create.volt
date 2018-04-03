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
                            <div data-id="{{subitem.id}}" data-class="{{item.id}}" data-text="{{subitem.name}}" class="card-body products-item-add">{{subitem.name}}<i class="fas fa-plus-circle" style="float:right"></i>
                            </div>
                        {% endfor %}
                    </div>
                </div>
            {% endfor %}
        </div>
        <div class="card col-xl-3 col-sm-3 col-6 request-card">
            <img class="card-img-top card-img" src="/img/icons/19-bill.svg" alt="Card image cap">
            <h5 class="card-title">Pedido:</h5>
            <div class="card-body">
                <h5 class="card-title" id="request-drinks">Bebidas:</h5>
                <!--ul id="new-request-list" class="list-group list-group-flush">
                    <li class="list-group-item">Prato Grande de Bacalhau</li>
                    <li class="list-group-item">Vinho do Lano 1L</li>
                </ul-->
                <h5 class="card-title" id="request-food">Pratos:</h5>

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
                <ul class="list-group list-group-flush list-products" id="drinks-list">
                </ul>
            </div>
            <hr>
            <div  class="request-custom-items col-3">
                <img class="card-img-top card-img custom-request-img" src="/img/icons/11-steak.svg" alt="Drink">
                <span class="inner-text">plate</span>
            </div>
            <div  class="request-custom-items col-8">
                <ul class="list-group list-group-flush list-products" id="plate-composition-list">
                </ul>
            </div>
            <div class="card-body create-container"><div id="add-to-plate-request" class="btn btn-primary">Adicionar</div></div>
        </div>
    </div>
{% endblock %}