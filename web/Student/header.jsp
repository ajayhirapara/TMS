<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>Team Management System</title>
    <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
    <!-- Bootstrap 3.3.4 -->
    <link href="../bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />    
    <!-- FontAwesome 4.3.0 -->
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <!-- Ionicons 2.0.0 -->
    <link href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css" rel="stylesheet" type="text/css" />    
    <!-- Theme style -->
    <link href="../dist/css/AdminLTE.min.css" rel="stylesheet" type="text/css" />
    <!-- AdminLTE Skins. Choose a skin from the css/skins 
         folder instead of downloading all of them to reduce the load. -->
    <link href="../plugins/datatables/dataTables.bootstrap.css" rel="stylesheet" type="text/css" />
    <!-- Css for datatables -->
    <link href="../dist/css/skins/_all-skins.min.css" rel="stylesheet" type="text/css" />
    <!-- iCheck -->
    <link href="../plugins/iCheck/flat/blue.css" rel="stylesheet" type="text/css" />
    <!-- Morris chart -->
    <link href="../plugins/morris/morris.css" rel="stylesheet" type="text/css" />
    <!-- jvectormap -->
    <link href="../plugins/jvectormap/jquery-jvectormap-1.2.2.css" rel="stylesheet" type="text/css" />
    <!-- Date Picker -->
    <link href="../plugins/datepicker/datepicker3.css" rel="stylesheet" type="text/css" />
    <!-- Daterange picker -->
    <link href="../plugins/daterangepicker/daterangepicker-bs3.css" rel="stylesheet" type="text/css" />
    <!-- bootstrap wysihtml5 - text editor -->
    <link href="../plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css" rel="stylesheet" type="text/css" />

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    
       <!-- jQuery 2.1.4 -->
    <!-- jQuery UI 1.11.2 -->
    <script src="http://code.jquery.com/ui/1.11.2/jquery-ui.min.js" type="text/javascript"></script>
    <!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
    <script>
      $.widget.bridge('uibutton', $.ui.button);
    </script>
    <!-- Bootstrap 3.3.2 JS -->
    <!-- Morris.js charts -->
    <script src="http://cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
    <script src="../plugins/morris/morris.min.js" type="text/javascript"></script>
    <!-- Sparkline -->
    <script src="../plugins/sparkline/jquery.sparkline.min.js" type="text/javascript"></script>
    <!-- jvectormap -->
    <script src="../plugins/jvectormap/jquery-jvectormap-1.2.2.min.js" type="text/javascript"></script>
    <script src="../plugins/jvectormap/jquery-jvectormap-world-mill-en.js" type="text/javascript"></script>
    <!-- jQuery Knob Chart -->
    <script src="../plugins/knob/jquery.knob.js" type="text/javascript"></script>
    <!-- daterangepicker -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.10.2/moment.min.js" type="text/javascript"></script>
    <script src="../plugins/daterangepicker/daterangepicker.js" type="text/javascript"></script>
    <!-- datepicker -->
    <script src="../plugins/datepicker/bootstrap-datepicker.js" type="text/javascript"></script>
    <!-- Bootstrap WYSIHTML5 -->
    <script src="../plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js" type="text/javascript"></script>
    
    
    <!-- AdminLTE dashboard demo (This is only for demo purposes) -->
    <script src="../dist/js/pages/dashboard.js" type="text/javascript"></script>    
    <script src="../dist/js/jquery.validate.js" type="text/javascript"></script>    
    
    <!-- jQuery for Datatable -->
     <!-- jQuery 2.1.4 -->
    <script src="../plugins/jQuery/jQuery-2.1.4.min.js"></script>
    <!-- Bootstrap 3.3.2 JS -->
    <script src="../bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    <!-- DATA TABES SCRIPT -->
    <script src="../plugins/datatables/jquery.dataTables.min.js" type="text/javascript"></script>
    <script src="../plugins/datatables/dataTables.bootstrap.min.js" type="text/javascript"></script>
    <!-- SlimScroll -->
    <script src="../plugins/slimScroll/jquery.slimscroll.min.js" type="text/javascript"></script>
    <!-- FastClick -->
    <script src='../plugins/fastclick/fastclick.min.js'></script>
    <!-- AdminLTE App -->
    <script src="../dist/js/app.min.js" type="text/javascript"></script>
    <!-- AdminLTE for demo purposes -->
    <script src="../dist/js/demo.js" type="text/javascript"></script>
    <!-- page script -->
  
  </head>
  <body class="skin-blue sidebar-mini">
   <header class="main-header">
        <!-- Logo -->
        <a href="index2.html" class="logo">
          <!-- mini logo for sidebar mini 50x50 pixels -->
          <span class="logo-mini"><b>TMS</b></span>
          <!-- logo for regular state and mobile devices -->
          <span class="logo-lg"><b>Team Management</b></span>
        </a>
        <!-- Header Navbar: style can be found in header.less -->
        <nav class="navbar navbar-static-top" role="navigation">
          <!-- Sidebar toggle button-->
          <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
            <span class="sr-only">Toggle navigation</span>
          </a>
          <div class="navbar-custom-menu">
            <ul class="nav navbar-nav">
              <!-- Messages: style can be found in dropdown.less-->
              <li class="dropdown messages-menu">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                  <i class="fa fa-envelope-o"></i>
                  <span class="label label-success">4</span>
                </a>
                <ul class="dropdown-menu">
                  <li class="header">You have 4 messages</li>
                  <li>
                    <!-- inner menu: contains the actual data -->
                    <ul class="menu">
                      <li><!-- start message -->
                        <a data-rv-vanilla-modal="#msg" style="cursor: pointer;">
                          <div class="pull-left">
                            <img src="../dist/img/user2-160x160.jpg" class="img-circle" alt="User Image"/>
                          </div>
                          <h4>
                            Support Team
                            <small><i class="fa fa-clock-o"></i> 5 mins</small>
                          </h4>
                          <p>Why not buy a new awesome theme?</p>
                        </a>
                      </li><!-- end message -->
                      <li>
                        <a data-rv-vanilla-modal="#msg" style="cursor: pointer;">
                          <div class="pull-left">
                            <img src="../dist/img/user3-128x128.jpg" class="img-circle" alt="user image"/>
                          </div>
                          <h4>
                            AdminLTE Design Team
                            <small><i class="fa fa-clock-o"></i> 2 hours</small>
                          </h4>
                          <p>Why not buy a new awesome theme?</p>
                        </a>
                      </li>
                      <li>
                        <a data-rv-vanilla-modal="#msg" style="cursor: pointer;">
                          <div class="pull-left">
                            <img src="../dist/img/user4-128x128.jpg" class="img-circle" alt="user image"/>
                          </div>
                          <h4>
                            Developers
                            <small><i class="fa fa-clock-o"></i> Today</small>
                          </h4>
                          <p>Why not buy a new awesome theme?</p>
                        </a>
                      </li>
                      <li>
                        <a data-rv-vanilla-modal="#msg" style="cursor: pointer;">
                          <div class="pull-left">
                            <img src="../dist/img/user3-128x128.jpg" class="img-circle" alt="user image"/>
                          </div>
                          <h4>
                            Sales Department
                            <small><i class="fa fa-clock-o"></i> Yesterday</small>
                          </h4>
                          <p>Why not buy a new awesome theme?</p>
                        </a>
                      </li>
                      <li>
                        <a data-rv-vanilla-modal="#msg" style="cursor: pointer;">
                          <div class="pull-left">
                            <img src="../dist/img/user4-128x128.jpg" class="img-circle" alt="user image"/>
                          </div>
                          <h4>
                            Reviewers
                            <small><i class="fa fa-clock-o"></i> 2 days</small>
                          </h4>
                          <p>Why not buy a new awesome theme?</p>
                        </a>
                      </li>
                    </ul>
                  </li>
                  <li class="footer">&nbsp;</li>
                </ul>
              </li>
              <!-- Notifications: style can be found in dropdown.less -->
              <li class="dropdown notifications-menu">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                  <i class="fa fa-bell-o"></i>
                  <span class="label label-warning">10</span>
                </a>
                <ul class="dropdown-menu">
                  <li class="header">You have 10 notifications</li>
                  <li>
                    <!-- inner menu: contains the actual data -->
                    <ul class="menu">
                      <li>
                        <a href="#">
                          <i class="fa fa-users text-aqua"></i> 5 new members joined today
                        </a>
                      </li>
                      <li>
                        <a href="#">
                          <i class="fa fa-warning text-yellow"></i> Very long description here that may not fit into the page and may cause design problems
                        </a>
                      </li>
                      <li>
                        <a href="#">
                          <i class="fa fa-users text-red"></i> 5 new members joined
                        </a>
                      </li>

                      <li>
                        <a href="#">
                          <i class="fa fa-shopping-cart text-green"></i> 25 sales made
                        </a>
                      </li>
                      <li>
                        <a href="#">
                          <i class="fa fa-user text-red"></i> You changed your username
                        </a>
                      </li>
                    </ul>
                  </li>
                  <li class="footer">&nbsp;</li>
                </ul>
              </li>
              <!-- User Account: style can be found in dropdown.less -->
                 <li class="dropdown user user-menu">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                    <img id="smallicon" src="../dist/img/user2-160x160.jpg" class="user-image" alt="User Image"/>
                                    <span class="hidden-xs">Alexander Pierce</span>
                                </a>
                                <ul class="dropdown-menu">
                                    <!-- User image -->
                                    <li class="user-header">
                                        <style type="text/css">

                                            #profilepic #icon   
                                            {
                                                display: block;
                                                margin: 0px auto;
                                            }                
                                            #icon:hover{
                                                display:none;
                                                cursor:pointer;
                                            }
                                            #profilepic:hover #icon
                                            {
                                                cursor: pointer;
                                                opacity:0.6;                                                                           
                                                display: none;
                                            }
                                            #profilepic #iconbtn
                                            {
                                                display: none;
                                                margin: 0px auto;
                                            }
                                            #profilepic:hover #iconbtn
                                            {
                                                cursor: pointer;
                                                display: block;
                                                background-image: url('../dist/img/change_pic.png');
                                                background-size: 60% 60%;
                                                background-position: 50% 50%;
                                                background-repeat: no-repeat;
                                                background-color: white;
                                            }
                                            #fileid
                                            {
                                                background-color: white;
                                                background-image: url('../dist/img/boxed-bg.png');
                                            }
                                            #iconbtn input[type="file"]{
                                                z-index: 999;
                                                line-height: 0;
                                                font-size: 50px;
                                                position: absolute;
                                                opacity: 0;
                                                filter: alpha(opacity = 0);-ms-filter: "alpha(opacity=0)";
                                                cursor: pointer;
                                                _cursor: hand;
                                                margin: 0;
                                                padding:0;
                                                left:0;
                                            }
                                        </style>
                                        <div  class="img-circle" id="profilepic" >
                                            <img id="icon" src="../dist/img/user2-160x160.jpg" class="img-circle" alt="User Image" style="height: 133px;width: 144px;"/>
                                            <div id="iconbtn" src="../dist/img/boxed-bg.png" class="img-circle" style="height: 133px;width: 144px;" > 
                                                <br><br>
                                                <input id="fileid" name="image" type='file' onchange="readURL(this);" accept="image/gif, image/jpeg, image/png">
                                                <br><br><br>
                                                Change pic

                                            </div>
                                        </div>
                                        <p>
                                            Student
                                        </p>
                                    </li>
                                    <!-- Menu Body -->

                                    <!-- Menu Footer-->
                                    <li class="user-footer">
                                        <div class="pull-left">
                                            <a href="profile.jsp" class="btn btn-default btn-flat">Profile</a>
                                        </div>
                                        <div class="pull-right">
                                            <a href="#" class="btn btn-default btn-flat">Sign out</a>
                                        </div>
                                    </li>
                                </ul>
                            </li>
                          
              <!-- Control Sidebar Toggle Button -->
              <li>
                <a href="#" data-toggle="control-sidebar"><i class="fa fa-gears"></i></a>
              </li>
            </ul>
          </div>
        </nav>
      </header>
      <!-- changes -->   
            <div id="msg" class="rv-vanilla-modal"  style="min-height:50px;">
                <div class="rv-vanilla-modal-header group">
                    <button class="rv-vanilla-modal-close"><span class="text">×</span></button>
                    <h2 class="rv-vanilla-modal-title">Message</h2>
                </div>
                <div class="rv-vanilla-modal-body">
                    <form action="#" method="post" class="styled">
                        <table>
                            <tr>
                                <td style="width: 40%"> <label>From</label> </td>
                                <td style="width: 60%"> <span id="from" name="from">Shubham Agrawal</span></td>
                            </tr>
                            <tr>
                                <td colspan="2">  <label style="width: 40%;margin:0px;">Message</label>
                                <span style="width: 60%" id="msg_body" name="msg_body">Hi.. How are you?</span></td>
                            </tr>
                        </table>
                        <div class="box-solid">
                            <input type='button' value="Close"  id="close_msg" class="btn btnsendmail pull-right" style="padding: 4.9px 14px;background-color: #3c8dbc;margin-top: 1%; margin: 1%;border-color: #3c8dbc; color: #ffffff">
                        </div>
                    </form>
                </div>
            </div>
            <!-- changes --> 
            <script>
                function readURL(input) {
                    if (input.files && input.files[0]) {
                        var reader = new FileReader();

                        reader.onload = function (e) {
                            $('#icon')
                                    .attr('src', e.target.result)
                                    .width(125)
                                    .height(125);
                            $('#smallicon')
                                    .attr('src', e.target.result)

                        };

                        reader.readAsDataURL(input.files[0]);
                        // $('#fileid').css("color", "green");


                    }
                }
            </script>
  </body>
