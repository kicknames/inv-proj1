{% extends "base.volt" %}
{% block content %}
    <div class="container-fluid">
        <div class="jumbotron">
            <h1 class="display-4">{{this.tradutor.get('list.title')}}</h1>
        </div>
        <table class="table">
            <thead class="thead-dark">
                <tr>
                    <th scope="col">{{this.tradutor.get('list.col.id')}}</th>
                    <th scope="col">{{this.tradutor.get('list.col.name')}}</th>
                    <th scope="col">{{this.tradutor.get('list.col.price')}}</th>
                    <th scope="col">{{this.tradutor.get('list.col.category')}}</th>
                    <th scope="col"></th>
                </tr>
            <tbody>
                {%for item in products %}
                    <tr>
                        <td>{{item.getNormalId()}}</td>
                        <td>{{item.name}}</td>
                        <td>{{item.price}} €</td>
                        <td scope="row">
                            <img class="table-img" src="/img/icons/{{item.category[0].icon}}.svg">
                            <span>{{item.category[0].name}}</span>
                        </td>
                        <td style="width: 40px;">
                            <div class="btn-group" role="group" aria-label="Basic example">
                                <a href="/Products/update?id={{item.id}}"><button type="button" class="btn btn-secondary"><i class="fa fa-edit" style="font-size:27px"></i></button></a>
                                <a href="/Products/remove?id={{item.id}}"><button type="button" class="btn btn-secondary"><i class="fa fa-remove" style="font-size:27px"></i></button></a>
                            </div>
                        </td>
                    </tr>
                {% endfor %}
            </tbody>
        </table>
    </div>
{% endblock %}