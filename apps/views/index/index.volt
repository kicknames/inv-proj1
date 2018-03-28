{% extends "base.volt" %}
{% block content %}
<div class="container py-5">
    <div class="row">
        <div class="col-md-12">
            <h2 class="text-center text-white mb-4">Bootstrap 4 Login Form</h2>
            <div class="row">
                <div class="col-md-6 mx-auto">

                    <!-- form card login -->
                    <div class="card rounded-0">
                        <div class="card-header">
                            <h3 class="mb-0">Login</h3>
                        </div>
                        <div class="card-body">
                            <div style="text-align: center;"><img src="/img/user.jpg" style="width: 175px;border: 4px solid #d6cece;
    box-shadow: 1px 1px 1px;"></div>
                            <form class="form" action="/Session/doLogin" role="form" autocomplete="off" id="formLogin" novalidate="" method="POST">
                                <div class="form-group">
                                    <label for="uname1">Username</label>
                                    <input type="text" class="form-control form-control-lg rounded-0" name="username" id="uname1" required="">
                                    <div class="invalid-feedback">Oops, you missed this one.</div>
                                </div>
                                <div class="form-group">
                                    <label>Password</label>
                                    <input type="password" name="password" class="form-control form-control-lg rounded-0" id="pwd1" required="" autocomplete="new-password">
                                    <div class="invalid-feedback">Enter your password too!</div>
                                </div>
                                <div>
                                    <label class="custom-control custom-checkbox">
                                      <input type="checkbox" class="custom-control-input">
                                      <span class="custom-control-indicator"></span>
                                      <span class="custom-control-description small text-dark">Remember me on this computer</span>
                                    </label>
                                </div>
                                <button type="submit" class="btn btn-success btn-lg float-right" id="btnLogin">Login</button>
                            </form>
                        </div>
                        <!--/card-block-->
                    </div>
                    <!-- /form card login -->
                </div>
            </div>
            <!--/row-->
    <footer>
        <script src="//code.jquery.com/jquery-3.3.1.min.js" crossorigin="anonymous"></script>
        <script src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
        <script>
            jQuery(document).ready(function () {
                
                jQuery('#show-login').trigger('click');
                
                jQuery('#form-submit').click(function () {
                    jQuery('#formLogin').submit();
                });
                
                jQuery('#uPassword #uLogin').keyup(function (e) {
                    if (e.keyCode === 13)
                    {
                        jQuery('#formLogin').submit();
                    }
                });
            });
        </script>
    </footer>
{% endblock %}