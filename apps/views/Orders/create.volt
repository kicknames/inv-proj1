{% extends "base.volt" %}
{% block content %}
    <div class="container-fluid">
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
            <div class="card-body" id="order-items-list">
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
            <div class="card-body create-container"><button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">Adicionar</button></div>
        </div>
        <!-- Modal -->
        <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Tamanho do prato</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body" style="text-align: center">
                        <button type="button" data-type="G" class="btn btn-primary btn-lg col-3 add-to-plate-request">Grande</button>
                        <button type="button" data-type="M" class="btn btn-primary btn-lg col-3 add-to-plate-request">Medio</button>
                        <button type="button" data-type="P" class="btn btn-primary btn-lg col-3 add-to-plate-request">Pequeno</button>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
{% endblock %}