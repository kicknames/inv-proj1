{% extends "base.volt" %}
{% block content %}
    <div class="container">
        <div class="jumbotron">
            <h1 class="display-4">{{this.tradutor.get('list.title')}}</h1>
            <p class="lead">{{this.tradutor.get('list.subtitle')}}</p>
        </div>
        <table class="table">
            <thead class="thead-dark">
                <tr>
                    <th scope="col">{{this.tradutor.get('list.col.code')}}</th>
                    <th scope="col">{{this.tradutor.get('list.col.name')}}</th>
                    <th scope="col">{{this.tradutor.get('list.col.price')}}</th>
                    <th scope="col">{{this.tradutor.get('list.col.category')}}</th>
                    <th scope="col"></th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <th scope="row">1</th>
                    <td>Bolinhos</td>
                    <td>10 €</td>
                    <td>Principal</td>
                    <td style="width: 40px;">
                        <div class="btn-group" role="group" aria-label="Basic example">
                            <button type="button" class="btn btn-secondary"><i class="fa fa-edit" style="font-size:27px"></i></button>
                            <button type="button" class="btn btn-secondary"><i class="fa fa-remove" style="font-size:27px"></i></button>
                        </div>
                    </td>
                </tr>
                <tr>
                    <th scope="row">2</th>
                    <td>Salada russa (Sem atum)</td>
                    <td>30 €</td>
                    <td>Principal</td>
                    <td style="width: 40px;">
                        <div class="btn-group" role="group" aria-label="Basic example">
                            <button type="button" class="btn btn-secondary"><i class="fa fa-edit" style="font-size:27px"></i></button>
                            <button type="button" class="btn btn-secondary"><i class="fa fa-remove" style="font-size:27px"></i></button>
                        </div>
                    </td>
                </tr>
                <tr>
                    <th scope="row">3</th>
                    <td>Bolinhos de bacalhau</td>
                    <td>12 €</td>
                    <td>Categoria: Bolinhos</td><
                    <td style="width: 40px;">
                        <div class="btn-group" role="group" aria-label="Basic example">
                            <button type="button" class="btn btn-secondary"><i class="fa fa-edit" style="font-size:27px"></i></button>
                            <button type="button" class="btn btn-secondary"><i class="fa fa-remove" style="font-size:27px"></i></button>
                        </div>
                    </td>
                </tr>
            </tbody>
        </table>
    </div>
{% endblock %}