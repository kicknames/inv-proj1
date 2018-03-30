<!-- The Modal -->
<div class="modal fade" id="create-request">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">

            <!-- Modal Header -->
            <div class="modal-header">
                <h4 id="modal-title-div" class="modal-title">Produtos</h4>
                <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div>

            <!-- Modal body -->
            <div class="modal-body">
                <table class="table table-dark table-striped" style="width: 250px;">
                    <tbody>
                        {%for i in 0..10 %}
                            {%for item in products %}
                                <tr>
                                    <td>{{item.name}}</td>
                                </tr>
                            {% endfor %}
                        {% endfor %}
                    </tbody>
                </table>
            </div>

            <!-- Modal footer -->
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
            </div>

        </div>
    </div>
</div>
