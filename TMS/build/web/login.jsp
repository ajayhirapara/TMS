<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>AdminLTE 2 | Log in</title>
        <!-- jQuery 2.1.4 -->
        <script src="plugins/jQuery/jQuery-2.1.4.min.js"></script>
        <script src="plugins/Login/login.js" type="text/javascript"></script>
        <script type="text/javascript" src="plugins/jQuery/jquery.leanModal.min.js"></script>
        <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
        <!-- Bootstrap 3.3.2 JS -->
        <script src="bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
        <!-- iCheck -->
        <script src="plugins/iCheck/icheck.min.js" type="text/javascript"></script>
        <!-- Bootstrap 3.3.4 -->
        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <!-- Font Awesome Icons -->
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
        <!-- Theme style -->
        <link href="dist/css/AdminLTE.min.css" rel="stylesheet" type="text/css" />
        <link href="plugins/iCheck/square/blue.css" rel="stylesheet" type="text/css" />
        <link type="text/css" rel="stylesheet" href="plugins/Login/login.css" />
        <link rel="stylesheet" href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.min.css" />
    </head>
    <body class="login-page">
        <div class="container">
            <a id="modal_trigger_login" href="#modal-login" class="btn btn_login_home">Login</a>
            <a id="modal_trigger_register" href="#modal-register" class="btn btn_register_home">Register</a>
            <div id="modal-login" class="popupContainer" style="display:none;">
                <header class="popupHeader">
                    <span class="header_title">Sign In</span>
                    <span class="modal_close"><i class="fa fa-times"></i></span>
                </header>

                <section class="popupBody">
                    <!-- Username & Password Login form -->
                    <div class="login-box-body">
                        <form action="index2.html" method="post" id="register" class="styled">
                            <div class="form-group has-feedback">
                                <input type="email" class="form-control required" placeholder="Email"/>
                                <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
                            </div>
                            <div class="form-group has-feedback">
                                <input type="password" class="form-control required" placeholder="Password"/>
                                <span class="glyphicon glyphicon-lock form-control-feedback"></span>
                            </div>
                            <div class="row">
                                <div class="col-xs-8">    
                                    <div class="checkbox icheck">
                                        <label>
                                            <input type="checkbox"> Remember Me
                                        </label>
                                    </div>                        
                                </div><!-- /.col -->
                                <center>
                                    <div class="action_btns">
                                        <div class="row"><a href="#" class="btn_login btn btn_red" style="width:120px">Login</a></div>
                                    </div>
                                </center>
                            </div>
                        </form>
                        <a href="#" class="forgot_password">Forgot password?</a>
                    </div>
                </section>
            </div>

            <div id="modal-register" class="popupContainer" style="display:none;">
                <header class="popupHeader">
                    <span class="header_title">Register</span>
                    <span class="modal_close"><i class="fa fa-times"></i></span>
                </header>

                <section class="popupBody">
                    <!-- /.login-box-body -->
                    <div class="social_login1">
                        <div class="row">
                            <div class="action_btns"><center>
                                    <br/><div><center><img src="img/student-512.png" width="50px" height="50px"/></center><br /><a href="#" id="Student_signup" class="btn btn-primary btn-block btn-flat btn_student" style="color:white;width:150px;">Student</a></div>
                                    <br/><div><center><img src="img/prof-512.png" width="50px" height="50px" /></center><br /><a href="#" id="Prof_signup" class="btn btn-primary btn-block btn-flat btn_prof" style="color:white;width:150px;">Professor</a></div>				
                                    <br/><div><center><img src="img/Teacher-male.png" width="50px" height="50px"/></center><br /><a href="#" id="Mentor_signup" class="btn btn-primary btn-block btn-flat btn_mentor" style="color:white;width:150px;">Mentor</a></div>				
                                <br/></div>
                            </center>
                        </div>
                    </div>

                    <!-- Register Form -->
                    <div class="register-box-body-student">
                        <form action="index.html" method="post" class="styled">
                            <div class="form-group has-feedback">
                                <input type="text" class="form-control text-input required" placeholder="Full name" id="full_name"/>
                                <span class="glyphicon glyphicon-user form-control-feedback"></span>
                                <span id="full_name_error"></span>
                            </div>
                            <div class="form-group has-feedback">
                                <input type="email" class="form-control text-input required email" placeholder="Email" id="email"/>
                                <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
                            </div>
                            <div class="form-group has-feedback" id="Pass-1" >
                                <input type="password" class="form-control text-input required password" placeholder="Password" id="pass-1"/>
                                <span class="glyphicon glyphicon-lock form-control-feedback"></span>
                            </div>
                            <div class="form-group has-feedback" id="Pass-2">
                                <input type="password" class="form-control text-input required password" placeholder="Retype password" id="pass-2"/>
                                <span class="glyphicon glyphicon-log-in form-control-feedback"></span>
                            </div>
                            <div style="float: left; padding-right: 16%; padding-bottom: 10%">
                                <label class="radio1" style="padding-right:10px"><span></span>Gender:</label>
                                <input type="radio" id="radio01" name="radio" />
                                <label for="radio01" style="padding-right:10px"><span></span>Male</label>
                                <input type="radio" id="radio02" name="radio" />
                                <label for="radio02"><span></span>Female</label>
                            </div>
                            <div class="action_btns">
                                <div class="one_half"><a href="#" class="btn_submit btn btn_red">Register</a></div>
                                <div class="one_half last"><a href="#" class="btn back_btn_register" style="color:white;">Back</a></div>
                            </div>
                        </form>
                    </div>

                    <div class="register-box-body-mentor">
                        <form action="index.html" method="post" class="styled">
                            <div class="form-group has-feedback">
                                <input type="text" class="form-control text-input required" placeholder="Full name" id="full_name_mentor"/>
                                <span class="glyphicon glyphicon-user form-control-feedback"></span>
                                <span id="full_name_error"></span>
                            </div>
                            <div class="form-group has-feedback">
                                <input type="email" class="form-control text-input required email" placeholder="Email" id="email_mentor"/>
                                <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
                            </div>

                            <div class="form-group has-feedback" id="Pass_mentor_form1" >
                                <input type="password" class="form-control text-input required password" placeholder="Password" id="pass_mentor1"/>
                                <span class="glyphicon glyphicon-lock form-control-feedback"></span>
                            </div>
                            <div class="form-group has-feedback" id="Pass_mentor_form2">
                                <input type="password" class="form-control text-input required password" placeholder="Retype password" id="pass_mentor2"/>
                                <span class="glyphicon glyphicon-log-in form-control-feedback"></span>
                            </div>

                            <div class="action_btns">
                                <div class="one_half"><a href="#" class="btn btn_submit_mentor btn_red">Register</a></div>
                                <div class="one_half last"><a href="#" class="btn back_btn_register" style="color:white;">Back</a></div>
                            </div>
                        </form>
                    </div>

                    <div class="register-box-body-prof">
                        <form action="index.html" method="post" class="styled">
                            <div class="form-group has-feedback">
                                <input type="text" class="form-control text-input required" placeholder="Full name" id="full_name_prof"/>
                                <span class="glyphicon glyphicon-user form-control-feedback"></span>
                                <span id="full_name_error"></span>
                            </div>
                            <div class="form-group has-feedback">
                                <input type="email" class="form-control text-input required email" placeholder="Email" id="email_prof"/>
                                <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
                            </div>

                            <div class="form-group has-feedback" id="Pass_prof_form1" >
                                <input type="password" class="form-control text-input required password" placeholder="Password" id="pass_prof1"/>
                                <span class="glyphicon glyphicon-lock form-control-feedback"></span>
                            </div>
                            <div class="form-group has-feedback" id="Pass_prof_form2">
                                <input type="password" class="form-control text-input required password" placeholder="Retype password" id="pass_prof2"/>
                                <span class="glyphicon glyphicon-log-in form-control-feedback"></span>
                            </div>
                            <div class="action_btns">
                                <div class="one_half"><a href="#" class="btn_submit_prof btn btn_red">Register</a></div>
                                <div class="one_half last"><a href="#" class="btn back_btn_register" style="color:white;">Back</a></div>
                            </div>
                        </form>
                    </div>
                </section>
            </div>
        </div>
        <script>
            $("#modal_trigger_login").leanModal({top: 100, overlay: 0.7, closeButton: ".modal_close"});
            $("#modal_trigger_register").leanModal({top: 100, overlay: 0.7, closeButton: ".modal_close"});

            $(".btn_login_home").click(function () {
                $(".social_login").hide();
                $(".login-box-body").show();
                $(".register-box-body-student").hide();
                $(".register-box-body-prof").hide();
                $(".errormsg").hide();
                $(".social_login1").hide();
                $(".register-box-body-mentor").hide();
                $(".header_title").text('Sign In');
                return false;
            });

            $(".btn_register_home").click(function () {
                $(".social_login1").show();
                $(".register-box-body-student").hide();
                $(".register-box-body-prof").hide();
                $(".errormsg").hide();
                $(".register-box-body-mentor").hide();
                $(".header_title").text('Register');
                return false;
            });

            $(".btn_student").click(function () {
                $(".login-box-body").hide();
                $(".social_login1").hide();
                $(".register-box-body-student").show();
                $(".register-box-body-prof").hide();
                $(".errormsg").hide();
                $(".register-box-body-mentor").hide();
                $(".header_title").text('Register As Student');
                return false;
            });

            $(".btn_prof").click(function () {
                $(".login-box-body").hide();
                $(".social_login1").hide();
                $(".register-box-body-student").hide();
                $(".register-box-body-prof").show();
                $(".errormsg").hide();
                $(".register-box-body-mentor").hide();
                $(".header_title").text('Register As Professor');
                return false;
            });
            $(".btn_mentor").click(function () {
                $(".login-box-body").hide();
                $(".social_login1").hide();
                $(".register-box-body-student").hide();
                $(".register-box-body-prof").hide();
                $(".errormsg").hide();
                $(".register-box-body-mentor").show();
                $(".header_title").text('Register As Mentor');
                return false;
            });

            $(".back_btn_register").click(function () {
                $(".login-box-body").hide();
                $(".social_login1").show();
                $(".register-box-body-student").hide();
                $(".register-box-body-prof").hide();
                $(".errormsg").hide();
                $(".register-box-body-mentor").hide();
                $(".header_title").text('Register');
                return false;
            });

        </script>
    </body>
</html>