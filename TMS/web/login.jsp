<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Log in</title>
        <!-- jQuery 2.1.4 -->
        <script src="plugins/jQuery/jQuery-2.1.4.min.js"></script>
        <script src="dist/js/jquery.validate.js"></script>
        <script src="plugins/Login/login.js" type="text/javascript"></script>
        <script type="text/javascript" src="plugins/jQuery/jquery.leanModal.min.js"></script>
        <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
        <!-- Bootstrap 3.3.2 JS -->
        <script src="bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="plugins/iCheck/icheck.min.js" type="text/javascript"></script>
        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <script>
            function CheckIsNumeric(objEvt) {
                var charCode = (objEvt.which) ? objEvt.which : event.keyCode
                if (charCode > 31 && (charCode < 48 || charCode > 57)) {
                    return false;
                }
                else {
                    document.getElementById("contact_student").style.backgroundColor = "#fff";
                    document.getElementById("contact_mentor").style.backgroundColor = "#fff";
                    document.getElementById("contact_prof").style.backgroundColor = "#fff";

                    return true;
                }
            }
            function CheckIsCharacter(objEvt) {
                var charCode = (objEvt.which) ? objEvt.which : event.keyCode
                if ((charCode >= 65 && charCode <= 90) || (charCode >= 97 && charCode <= 122)) {
                    document.getElementById("first_name").style.backgroundColor = "#fff";
                    document.getElementById("first_name_prof").style.backgroundColor = "#fff";
                    document.getElementById("first_name_mentor").style.backgroundColor = "#fff";
                    document.getElementById("last_name").style.backgroundColor = "#fff";
                    document.getElementById("last_name_prof").style.backgroundColor = "#fff";
                    document.getElementById("last_name_mentor").style.backgroundColor = "#fff";
                    return true;
                }
                else {
                    return false;
                }
            }
        </script>
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
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
                        <form action="Authenticator" method="post" id="register" class="styled">
                            <div class="form-group has-feedback">
                                <input type="email" name="userName" style="margin-top: 5%" class="form-control required" placeholder="Email"/>
                                <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
                            </div>
                            <div class="form-group has-feedback">
                                <input type="password" name="password" class="form-control required" placeholder="Password"/>
                                <span class="glyphicon glyphicon-lock form-control-feedback"></span>
                            </div>
                            <div class="row">
                                <div class="col-xs-8">    
                                    <div class="checkbox icheck" style="margin-left: -29%;">
                                        <label>
                                            <input type="checkbox" name="remember_me"> Remember Me
                                        </label>
                                    </div>                        
                                </div><!-- /.col -->
                                <center>
                                    <div class="action_btns">
                                        <div class="row"><input type="submit" name="login" value="Login" class="btn_login btn btn_red" style="width:120px"/></div>
                                    </div>
                                </center>
                            </div>
                        </form>
                        <a id="modal_forgot" href="#modal_forgotpass" class="forgot_password">Forgot password?</a>
                        <a href="#" class="Not_Register">Create Account</a>
                    </div>
                    <div class="forgot_passwordpop" id="#modal_forgotpass" style="display: none">
                        <form action="#" method="post" id="register" class="styled">
                            <div class="form-group has-feedback" style="margin-top: 9%;">
                                <input type="email" class="form-control text-input required email" placeholder="Email" id="email" name="email"/>
                                <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
                            </div>
                            <center>
                                <div class="action_btns">
                                    <div class="row"><input type="submit" name="login" value="Submit" class="btn_Forgot btn btn_red" style="width:120px"/></div>
                                </div>
                            </center>
                        </form>
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
                                    <br/></center></div>
                        </div>
                    </div>
                    <!-- Register Form -->
                    <div class="register-box-body-student">
                        <form action="index.html" method="post" class="styled">
                            <div class="form-group has-feedback">
                                <input type="text" class="form-control text-input required" onkeypress="return CheckIsCharacter(event);" placeholder="First Name" id="first_name" name="full_name"/>
                                <span class="glyphicon glyphicon-user form-control-feedback"></span>
                                <span id="full_name_error"></span>
                            </div>
                            <div class="form-group has-feedback">
                                <input type="text" class="form-control text-input required" onkeypress="return CheckIsCharacter(event);" placeholder="Last Name" id="last_name" name="full_name"/>
                                <span class="glyphicon glyphicon-user form-control-feedback"></span>
                                <span id="full_name_error"></span>
                            </div>
                            <div class="form-group has-feedback">
                                <input type="email" class="form-control text-input required email" placeholder="Email" id="email" name="email"/>
                                <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
                            </div>
                            <div class="form-group has-feedback" id="Pass-1" >
                                <input type="password" class="form-control text-input required password" placeholder="Password" id="pass-1" name="pass-1"/>
                                <span class="glyphicon glyphicon-lock form-control-feedback"></span>
                            </div>
                            <div class="form-group has-feedback" id="Pass-2">
                                <input type="password" class="form-control text-input required password" placeholder="Retype password" id="pass-2" name="pass-2"/>
                                <span class="glyphicon glyphicon-log-in form-control-feedback"></span>
                            </div>
                            <div class="form-group has-feedback" id="contact" >
                                <input type="text" class="form-control text-input required contact" onkeypress="return CheckIsNumeric(event);" placeholder="Contact" id="contact_student" name="contact"/>
                                <span class="glyphicon glyphicon-phone form-control-feedback"></span>
                            </div>
                            <div style="float: left; padding-right: 16%; padding-bottom: 2%">
                                <label class="Gender" style="padding-right:10px"><span></span>Gender:</label>
                                <input type="radio" checked="checked" id="male" name="gender" />
                                <label for="male" style="padding-right:10px"><span></span>Male</label>
                                <input type="radio" id="female" name="gender" />
                                <label for="female"><span></span>Female</label>
                            </div>
                            <div class="row">
                                <div class="col-xs-8"  id="check1" style="margin-left: 5%;width:auto;">    
                                    <div class="checkbox icheck">
                                        <label>
                                            <input type="checkbox" id="Agree" value="student" /><strong style="font-size: smaller;">I agree to the <a target="_blank" id="TosLink" href="#">Terms of Service</a> and <a target="_blank" id="PrivacyLink" href="#">Privacy Policy</a></strong>
                                            <br /><span class="errormsg" id="errormsg_0_TermsOfService">In order to use our services, you must agree to Terms of Service.</span>
                                        </label>
                                    </div>                        
                                </div><!-- /.col -->
                            </div>
                            <div class="action_btns" style="margin-bottom: 5%;">
                                <div class="one_half"><input type="submit" name="mentor_reg" class="btn btn_submit btn_red" value="Register" style="width: 90%;" /></div>
                                <div class="one_half last"><a href="#" class="btn back_btn_register" style="color:white;">Back</a></div>
                            </div>
                            <a href="#" class="Already_Register">Already Register?</a>
                        </form>
                    </div>

                    <div class="register-box-body-mentor">
                        <form action="index.html" method="post" class="styled">
                            <div class="form-group has-feedback">
                                <input type="text" class="form-control text-input required" onkeypress="return CheckIsCharacter(event);" placeholder="First Name" id="first_name_mentor" name="full_name"/>
                                <span class="glyphicon glyphicon-user form-control-feedback"></span>
                                <span id="full_name_error"></span>
                            </div>
                            <div class="form-group has-feedback">
                                <input type="text" class="form-control text-input required" onkeypress="return CheckIsCharacter(event);" placeholder="Last Name" id="last_name_mentor" name="full_name"/>
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
                            <div class="form-group has-feedback" id="contact" >
                                <input type="text" class="form-control text-input required contact" onkeypress="return CheckIsNumeric(event);" placeholder="Contact" id="contact_mentor" name="contact"/>
                                <span class="glyphicon glyphicon-phone form-control-feedback"></span>
                            </div>
                            <div style="float: left; padding-right: 16%; padding-bottom: 2%">
                                <label class="Gender" style="padding-right:10px"><span></span>Gender:</label>
                                <input type="radio" checked="checked" id="male" name="gender" />
                                <label for="male" style="padding-right:10px"><span></span>Male</label>
                                <input type="radio" id="female" name="gender" />
                                <label for="female"><span></span>Female</label>
                            </div>
                            <div class="row">
                                <div class="col-xs-8"  id="check1" style="margin-left: 5%;width:auto;">    
                                    <div class="checkbox icheck">
                                        <label>
                                            <input type="checkbox" id="Agree_mentor" value="mentor" /><strong style="font-size: smaller;">I agree to the <a target="_blank" id="TosLink" href="#">Terms of Service</a> and <a target="_blank" id="PrivacyLink" href="#">Privacy Policy</a></strong>
                                            <br /><span class="errormsg" id="errormsg_0_TermsOfService">In order to use our services, you must agree to Terms of Service.</span>
                                        </label>
                                    </div>                        
                                </div><!-- /.col -->
                            </div>
                            <div class="action_btns" style="margin-bottom: 5%">
                                <div class="one_half"><input type="submit" name="mentor_reg" class="btn btn_submit_mentor btn_red" value="Register" style="width: 90%;" /></div>
                                <div class="one_half last"><a href="#" class="btn back_btn_register" style="color:white;">Back</a></div>
                            </div>
                            <a href="#" class="Already_Register">Already Register?</a>
                        </form>
                    </div>

                    <div class="register-box-body-prof">
                        <form action="index.html" method="post" class="styled">
                            <div class="form-group has-feedback">
                                <input type="text" class="form-control text-input required" onkeypress="return CheckIsCharacter(event);" placeholder="First Name" id="first_name_prof" name="full_name"/>
                                <span class="glyphicon glyphicon-user form-control-feedback"></span>
                                <span id="full_name_error"></span>
                            </div>
                            <div class="form-group has-feedback">
                                <input type="text" class="form-control text-input required" onkeypress="return CheckIsCharacter(event);" placeholder="Last Name" id="last_name_prof" name="full_name"/>
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
                            <div class="form-group has-feedback" id="contact" >
                                <input type="text" class="form-control text-input required contact" onkeypress="return CheckIsNumeric(event);" placeholder="Contact" id="contact_prof" name="contact"/>
                                <span class="glyphicon glyphicon-phone form-control-feedback"></span>
                            </div>
                            <div style="float: left; padding-right: 16%; padding-bottom: 2%">
                                <label class="Gender" style="padding-right:10px"><span></span>Gender:</label>
                                <input type="radio" checked="checked" id="male" name="gender" />
                                <label for="male" style="padding-right:10px"><span></span>Male</label>
                                <input type="radio" id="female" name="gender" />
                                <label for="female"><span></span>Female</label>
                            </div>
                            <div class="row">
                                <div class="col-xs-8"  id="check1" style="margin-left: 5%;width:auto;">    
                                    <div class="checkbox icheck">
                                        <label>
                                            <input type="checkbox" id="Agree_prof" value="prof" /><strong style="font-size: smaller;">I agree to the <a target="_blank" id="TosLink" href="#">Terms of Service</a> and <a target="_blank" id="PrivacyLink" href="#">Privacy Policy</a></strong>
                                            <br /><span class="errormsg" id="errormsg_0_TermsOfService">In order to use our services, you must agree to Terms of Service.</span>
                                        </label>
                                    </div>
                                </div><!-- /.col -->
                            </div>
                            <div class="action_btns" style="margin-bottom: 5%">
                                <div class="one_half"><input type="submit" style="width: 90%;" value="Register" name="prof_reg" class="btn_submit_prof btn btn_red"/></div>
                                <div class="one_half last"><a href="#" class="btn back_btn_register" style="color:white;">Back</a></div>
                            </div>
                            <a href="#" class="Already_Register">Already Register?</a>
                        </form>
                    </div>
                </section>
            </div>
        </div>
    </body>
</html>
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