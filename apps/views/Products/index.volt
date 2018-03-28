{% extends "base.volt" %}
{% block content %}
    <div class="container">
        <div class="jumbotron">
            <h1 class="display-4">Gestão de produtos</h1>
            <p class="lead">Neste formulário adicionar novos produtos</p>
        </div>
        <form>
            <div class="form-group">
                <label for="exampleInputEmail1">Nome do artigo:</label>
                <input type="text" name="name" class="form-control" id="name" placeholder="Nome">
            </div>
            <div class="form-group col-md-2" style="padding-left: 0">
                <label for="inputZip">Preco</label>
                <input type="text" class="form-control" id="price" name="price" placeholder="Preço">
            </div>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="checkbox" id="inlineCheckbox1" name="categoria" value="option1">
                <label class="form-check-label" for="inlineCheckbox1">Menu principal</label>
            </div>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="checkbox" id="inlineCheckbox2" name="categoria" value="option2">
                <label class="form-check-label" for="inlineCheckbox2">Sub categoria</label>
            </div>
            <div class="form-group row" style="margin-top: 20px;">
                <div class="col-sm-10">
                    <button type="submit" class="btn btn-primary">Adicionar</button>
                </div>
            </div>
        </form>
    </div>
{% endblock %}