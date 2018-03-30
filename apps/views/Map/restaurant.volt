{% extends "base.volt" %}
{% block content %}
    <div class="main-map">
        <div class="main-bar">
            <div class="part-1">
                <div class="sit-1 occupied" id="1"><a class="table-spot" data-index="1" data-toggle="modal" data-target="#create-request">1</a></div>
                <div class="sit-2 occupied" id="2">2</div>
                <div class="sit-3 occupied" id="2">3</div>
            </div>  
            <div class="part-2">
                <div class="sit-1 occupied" id="1">1</div>
                <div class="sit-2 occupied" id="2">2</div>
                <div class="sit-3 occupied" id="2">3</div>
            </div> 
            <div class="part-3">
                <div class="sit-1 occupied" id="1">1</div>
            </div> 
        </div>
    </div>
    {{ partial('partials/create')}}
{% endblock %}