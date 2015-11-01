
<%@include file="header.jsp" %>
<!-- Left side column. contains the logo and sidebar -->
<aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
        <!-- Sidebar user panel -->
        <div class="user-panel">
            <div class="pull-left image">
                <img src="../dist/img/user2-160x160.jpg" class="img-circle" alt="User Image" />
            </div>
            <div class="pull-left info">
                <p>Alexander Pierce</p>


            </div>
        </div>
        <!-- search form -->
        <form action="#" method="get" class="sidebar-form">
            <div class="input-group">
                <input type="text" name="q" class="form-control" placeholder="Search..."/>
                <span class="input-group-btn">
                    <button type='submit' name='search' id='search-btn' class="btn btn-flat"><i class="fa fa-search"></i></button>
                </span>
            </div>
        </form>
        <!-- /.search form -->
        <!-- sidebar menu: : style can be found in sidebar.less -->
        <ul class="sidebar-menu">
            <li class="header">MAIN NAVIGATION</li>
            <li class="treeview">
                <a href="../index.jsp">
                    <i class="fa fa-dashboard"></i> <span>Dashboard</span> </i>
                </a>

            </li>
            <li class="active treeview">
                <a href="../Professor/Courses.jsp">
                    <i class="fa fa-book"></i>
                    <span>Courses</span>
                </a>
            </li>

            <li class="treeview">
              <a href="#">
                <i class="fa fa-tasks"></i>
                <span>Tasks</span>
                <i class="fa fa-angle-left pull-right"></i>
              </a>
              <ul class="treeview-menu">
                <li><a href="task.jsp"><i class="fa fa-book"></i> Course 1</a></li>
                <li><a href="task.jsp"><i class="fa fa-book"></i> Course 2</a></li>
              </ul>
            </li>
            
            <li class="treeview">
              <a href="#">
                <i class="fa fa-group"></i>
                <span>Teams</span>
                <i class="fa fa-angle-left pull-right"></i>
              </a>
              <ul class="treeview-menu">
                <li><a href="team.jsp"><i class="fa fa-book"></i> Course 1</a></li>
                <li><a href="team.jsp"><i class="fa fa-book"></i> Course 2</a></li>
              </ul>
            </li>


        </ul>
    </section>
    <!-- /.sidebar -->
</aside>

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
            Course Details
        </h1>
        <ol class="breadcrumb">
            <li><a href="<%= link.link.main %> "><i class="fa fa-dashboard"></i> Home</a></li>
            <li><a href="Courses.jsp"> Courses</a></li>
            <li class="active">Course Details</li>
        </ol>
        <ul class="nav nav-tabs" style="margin-top: 3%;">
            <li id="li1" class="active"><a id="currentyear" href="#courseinfo">Course Details</a></li>
            <li id="li2"><a id="pastyear" href="#team">Teams</a></li>

        </ul>

    </section>

    <!-- Main content -->
    <section class="content">
        <!-- Small boxes (Stat box) -->
        <div class="row" id="courseinfo" style="margin-left: 2px;">
            <!-- Modal -->
            <div class="modal fade" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" style="margin-top: 7%">
              <div class="modal-dialog" role="document">
                <div class="modal-content" style="height: 356px;">
                  <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="myModalLabel">Course Details</h4>
                  </div>
                  <div class="modal-body">
                      <form method="post" >
                          <table>
                               <tr>
                                   <td style="width: 37%"> <label> Course ID</label> </td>
                                   <td> <input type="text" value="Course id"> </td>
                                </tr>
                                <tr>
                                    <td><label> Course Name</label></td>
                                    <td><input type="text" value="Course Name"></td>
                                </tr>
                                <tr>
                                    <td><label> Head Instructor's name </label></td>
                                    <td><input type="text" value="name"></td>
                                </tr>
                                <tr>
                                    <td><label> Other Instructor</label></td>
                                    <td><input type="text" value="name"></td>
                                </tr>
                                <tr>
                                    <td><label> Course Duration</label></td>
                                    <td><input type=date value="Start date"></td>
                                    <td>TO</td>
                                    <td><input type=date value="End date"></td>
                                </tr>
                          </table>
                          
                          
                      </form>
                  </div>
                  <div class="modal-footer" style="float: left;margin-left: 31%;padding-top: 7%;">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-primary">Save changes</button>
                  </div>
                </div>
              </div>
            </div>

        <div id="course_details">
            <h3 class="box-title">Course Details <button class="btn btn-default pull-right" data-toggle="modal" data-target="#myModal1" style="margin-right: 2%;width: 6%; background-color: cornflowerblue;">Edit</button></h3>
            <table>
                <tr>
                    <td style="width: 75%;">
                        Course ID
                    </td>
                        
                    <td>
                        IT615
                    </td>
                        
                </tr>
                <tr>
                    <td>
                        Course Name
                    </td>
                        
                    <td>
                        SEN
                    </td>
                        
                </tr>
                <tr>
                    <td>
                        Head Instructor Name
                    </td>
                        
                    <td>
                        Asim banerjee
                    </td>
                        
                </tr>
                <tr>
                    <td>
                        Other Instructors
                    </td>
                        
                    <td>
                        TA
                    </td>
                        
                </tr>
                <tr>
                    <td>
                        Course Duration
                    </td>
                        
                    <td>
                        Summer 2015
                    </td>
                        
                </tr>


            </table>                
        </div>

            
        </div><!-- /.row -->
        
        
        <div class="row" id="team" style="display: none">
            
            <!-- Modal -->
            <div class="modal fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" style="margin-top: 7%">
              <div class="modal-dialog" role="document">
                <div class="modal-content" style="height: 356px;">
                  <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="myModalLabel">ADD TEAM</h4>
                  </div>
                  <div class="modal-body">
                      <form method="post" >
                          <table>
                               <tr>
                                    <td><label> Course Name</label></td>
                                    <td><input type="text" value="Course Name"></td>
                               </tr>
                               <tr>
                                   <td style="width: 37%"> <label> Team ID</label> </td>
                                   <td> <input type="text" value="Team id"> </td>
                                </tr>
                                <tr>
                                    <td><label> Team Members</label></td>
                                    <td><input type="text" value="Name"></td>
                                </tr>
                                <tr>
                                    <td><label> Team Generation Method </label></td>
                                    <td>
                                        <input type="radio" name="CPI"  checked="true">CPI
                                        <input type="radio" name="Random" >Random

                                    </td>
                                </tr>
                                
                          </table>
                          
                          
                      </form>
                  </div>
                  <div class="modal-footer" style="float: left;margin-left: 31%;padding-top: 7%;">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-primary">ADD Team</button>
                  </div>
                </div>
              </div>
            </div>

            <h3 class="box-title" style="margin-left: 1%;">TEAMS <button class="btn btn-default pull-right" data-toggle="modal" data-target="#myModal2"  style="margin-right: 2%;width: 8%; background-color: cornflowerblue;">ADD TEAM</button></h3>
            
            <div class="col-lg-3 col-xs-6">
                <!-- small box -->

                <div class="small-box bg-light-blue" style="height: 140px">
           
                    <div class="inner">

                        <h3>Team 1</h3>
                        <p>

                        </p>
                    </div>
                    <div class="icon">
                        <img src="../dist/img/team.jpg" style="height: 61px; margin-top: -40px;" alt="User Image"/>

                    </div>
                    <a href="CourseDetail.jsp" class="small-box-footer" style="padding-top: 9px;margin-top: 33px;height: 35px;">More info <i class="fa fa-arrow-circle-right"></i></a>
                </div>
            </div><!-- ./col -->
            <div class="col-lg-3 col-xs-6">
                <!-- small box -->
                <div class="small-box bg-light-blue" style="height: 140px">
                    <div class="inner">
                        <h3>Team 2</h3>
                        <p>      </p>
                    </div>
                    <div class="icon">
                        <img src="../dist/img/team.jpg" style="height: 61px; margin-top: -40px;" alt="User Image"/>

                    </div>
                    <a href="CourseDetail.jsp" class="small-box-footer" style="padding-top: 9px;margin-top: 33px;height: 35px;">More info <i class="fa fa-arrow-circle-right"></i></a>
                </div>
            </div><!-- ./col -->
           
        </div>
        <!-- Main row -->
        
    </section><!-- /.content -->
</div><!-- /.content-wrapper -->
<%@include file="footer.jsp" %>
<!-- Add the sidebar's background. This div must be placed
     immediately after the control sidebar -->
<div class='control-sidebar-bg'></div>
</div><!-- ./wrapper -->


<script>
            $("#modal_trigger_login").leanModal({top: 100, overlay: 0.7, closeButton: ".modal_close"});
            
            
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
</script>


<script>
    $("#modal_trigger_unroll").leanModal({top: 100, overlay: 0.7, closeButton: ".modal_close"});
</script>
<script>
    $("#currentyear").click(function () {
            $("#courseinfo").show();
            $("#team").hide();
            $("#li1").addClass("active");
            $("#li2").removeClass("active");
        });
    $("#pastyear").click(function () {
            $("#courseinfo").hide();
            $("#team").show();
            $("#li2").addClass("active");
            $("#li1").removeClass("active");
        });

</script>


</body>
</html>