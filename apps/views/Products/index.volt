{% extends "base.volt" %}
{% block content %}
    <div class="container-fluid">
        <div class="jumbotron">
            <h1 class="display-4">{{this.tradutor.get('add.title')}}</h1>
        </div>
        <form action="/Products/save" method="POST">
            <div class="form-group">
                <label for="exampleInputEmail1">{{this.tradutor.get('add.label.name')}}</label>
                <input type="text"  class="form-control" id="name" name="name"  placeholder="Nome">
            </div>
            <div class="form-group col-md-2" style="padding-left: 0">
                <label for="inputZip">{{this.tradutor.get('add.label.price')}}</label>
                <input type="text" class="form-control" id="price" name="price" placeholder="Preço">
            </div>
            <div class="form-check form-check-inline first-check" style="display:none">
                <input class="form-check-input" type="radio" id="inlineCheckbox1" name="options" value="1">
                <label class="form-check-label" for="inlineCheckbox1">{{this.tradutor.get('add.check.first')}}</label>
            </div>
            <div class="form-check form-check-inline second-check" style="display:none">
                <input class="form-check-input" type="radio" id="inlineCheckbox2" name="options" value="2">
                <label class="form-check-label" for="inlineCheckbox2">{{this.tradutor.get('add.check.second')}}</label>
            </div>
            <label class="col-12" style="padding-left:0; margin-bottom: 1rem;" for="exampleFormControlSelect2">{{this.tradutor.get('add.label.category')}}</label>
            <div class="form-group categories-cont col-xl-4 col-sm-6 ">
                {% for item in categories %}
                    <div id="{{item.id}}" class="form-group categories-sub-cont {% if item.id ==221 %}checked{%endif%}">
                        <img class="form-check-input-img" for="inlineCheckbox1" src="/img/icons/{{item.icon}}.svg">
                        <label class="form-check-label" for="inlineCheckbox1">{{this.tradutor.get(item.name)}}</label>
                    </div>
                {% endfor %}
                <input id="add-category" type="hidden" name="category" value="191">
            </div>
            <div class="form-group row" style="margin-top: 20px;">
                <div class="col-sm-10">
                    <button type="submit" class="btn btn-primary">{{this.tradutor.get('add.btn.submit')}}</button>
                </div>
            </div>
        </form>
    </div>
{% endblock %}