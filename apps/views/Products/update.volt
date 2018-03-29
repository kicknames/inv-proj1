{% extends "base.volt" %}
{% block content %}
    <div class="container">
        <div class="jumbotron">
            <h1 class="display-4">{{this.tradutor.get('add.title')}}</h1>
            <p class="lead">{{this.tradutor.get('add.subtitle')}}</p>
        </div>
        <form action="/Products/save" method="POST">
            <div class="form-group">
                <label for="exampleInputEmail1">{{this.tradutor.get('add.label.name')}}</label>
                <input type="text"  class="form-control" id="name" name="name"  placeholder="Nome" value="{{item.name}}">
            </div>
            <div class="form-group col-md-2" style="padding-left: 0">
                <label for="inputZip">{{this.tradutor.get('add.label.price')}}</label>
                <input type="text" class="form-control" id="price" name="price" placeholder="Preço" value="{{item.price}}">
            </div>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" id="inlineCheckbox1" name="category" value="1" {% if item.category == 'Menu principal' %}checked="checked"{% endif %}>
                <label class="form-check-label" for="inlineCheckbox1">{{this.tradutor.get('add.check.first')}}</label>
            </div>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" id="inlineCheckbox2" name="category" value="2" {% if item.category != 'Menu principal' %}checked="checked"{% endif %}>
                <label class="form-check-label" for="inlineCheckbox2">{{this.tradutor.get('add.check.second')}}</label>
            </div>
            <div class="form-group row" style="margin-top: 20px;">
                <div class="col-sm-10">
                    <button type="submit" class="btn btn-primary">{{this.tradutor.get('add.btn.submit')}}</button>
                </div>
            </div>
        </form>
    </div>
{% endblock %}