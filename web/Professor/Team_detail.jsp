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
                <p>Professor</p>


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
                <a href="index.jsp">
                    <i class="fa fa-dashboard"></i> <span>Dashboard</span> </i>
                </a>

            </li>

            <li class="treeview">
                <a href="Courses.jsp">
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
                    <i class="fa fa-envelope"></i>
                    <span>Quick Mail</span>
                 </a>
                
            </li>


        </ul>
    </section>
    <!-- /.sidebar -->
</aside>

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">

    <section class="content-header">
        <h1 id="team_name" name="team_name">
            Sen Team 5
        </h1>
        <ol class="breadcrumb">
            <li><a href="index.jsp"><i class="fa fa-dashboard"></i> Home</a></li>
            <li><a href="Courses.jsp">My Courses</a></li>
            <li><a href="Courses.jsp">teams</a></li>
            <li class="active" id="team_name" name="team_name">Team_name</li>
        </ol>
    </section>

    <!-- Main content -->
    <section class="content" style="margin-top: 18px">

        <ul class="nav nav-tabs">
            <li id="li1" class="active"><a id="Detail" href="#detail">Team Detail</a></li>
            <li id="li2"><a id="Task" href="#task">Task</a></li>
        </ul>
        <div id='detail'>
            <div class="box box-primary" style="position: relative;">
                <div class="box-header" >
                    <img id="team_logo" name="team_logo" src="../dist/img/user3-128x128.jpg" class="img-circle" style="width: 5%;"/>
                    &nbsp; &nbsp;
                    <h3 class="box-title" id='team_name' name='team_name'>SEN Team 5</h3>

                </div><!-- /.box-header -->
                <div class="box-body">
                    <ul class="todo-list">
                        <small class="label label-danger"><i class="fa"></i> Leader</small>
                        <li>                                       
                            <!-- todo text -->
                            <span class="text" id='leader_name' name='leader_name'>Chintan Tundia</span>
                            <!-- Emphasis label -->

                            <!-- General tools such as edit or delete-->
                            <div class="tools">                       
                                <i class="fa fa-trash-o"></i>
                            </div>
                        </li>
                        <small class="label label-success"><i class="fa"></i> Members</small>
                        <li>                                       
                            <!-- todo text -->
                            <span class="text" id='member1' name='member1'>Chirag Shah</span>
                            <!-- Emphasis label -->
                            <!-- General tools such as edit or delete-->
                            <div class="tools">    
                                <a id="modal_confirm" href="#confirm" class="fa fa-trash-o"></a>
                            </div>
                        </li>
                         <li>                                       
                            <!-- todo text -->
                            <span class="text" id='member1' name='member1'>Chirag Shah</span>
                            <!-- Emphasis label -->
                            <!-- General tools such as edit or delete-->
                            <div class="tools">    
                                <a id="modal_confirm" href="#confirm" class="fa fa-trash-o"></a>
                            </div>
                        </li>
                         <li>                                       
                            <!-- todo text -->
                            <span class="text" id='member1' name='member1'>Chirag Shah</span>
                            <!-- Emphasis label -->
                            <!-- General tools such as edit or delete-->
                            <div class="tools">    
                                <a id="modal_confirm" href="#confirm" class="fa fa-trash-o"></a>
                            </div>
                        </li>
                         <li>                                       
                            <!-- todo text -->
                            <span class="text" id='member1' name='member1'>Chirag Shah</span>
                            <!-- Emphasis label -->
                            <!-- General tools such as edit or delete-->
                            <div class="tools">    
                                <a id="modal_confirm" href="#confirm" class="fa fa-trash-o"></a>
                            </div>
                        </li>
                         <li>                                       
                            <!-- todo text -->
                            <span class="text" id='member1' name='member1'>Chirag Shah</span>
                            <!-- Emphasis label -->
                            <!-- General tools such as edit or delete-->
                            <div class="tools">    
                                <a id="modal_confirm" href="#confirm" class="fa fa-trash-o"></a>
                            </div>
                        </li>
                         <li>                                       
                            <!-- todo text -->
                            <span class="text" id='member1' name='member1'>Chirag Shah</span>
                            <!-- Emphasis label -->
                            <!-- General tools such as edit or delete-->
                            <div class="tools">    
                                <a id="modal_confirm" href="#confirm" class="fa fa-trash-o"></a>
                            </div>
                        </li>
                         <li>                                       
                            <!-- todo text -->
                            <span class="text" id='member1' name='member1'>Chirag Shah</span>
                            <!-- Emphasis label -->
                            <!-- General tools such as edit or delete-->
                            <div class="tools">    
                                <a id="modal_confirm" href="#confirm" class="fa fa-trash-o"></a>
                            </div>
                        </li>
                        
                        <li>                                       
                            <!-- todo text -->
                            <span class="text" id='member2' name='member2'>Ajay Hirppra</span>
                            <!-- Emphasis label -->
                            <!-- General tools such as edit or delete-->
                            <div class="tools">                       
                                <i class="fa fa-trash-o"></i>
                            </div>
                        </li>
                        <li>                                       
                            <!-- todo text -->
                            <span class="text" id='member3' name='member3'>Shubham Agrawal</span>
                            <!-- Emphasis label -->                      
                            <!-- General tools such as edit or delete-->
                            <div class="tools">                       
                                <i class="fa fa-trash-o"></i>
                            </div>
                        </li>

                    </ul>
                </div><!-- /.box-body -->
                <div class="box-footer clearfix no-border " >
                    <a class="btn btn-default pull-right" id="modal_add" href="#add_member" style='margin-left:20%'><i class="fa fa-plus"></i> Add Team Member</a>
                </div>
            </div>
        </div>
        <div id="task" style="display: none">
            <div class="box box-primary">
                                <div class="box-header">
                                  <h3 class="box-title">Course Name (ID)</h3>
                                </div><!-- /.box-header -->
                                <div class="box-body">
                                  <table id="example2" class="table table-bordered table-hover">
                                    <thead>
                                      <tr>
                                        <th>Sr. Number</th>  
                                        <th>Assigned Date</th>
                                        <th>Subject</th>
                                        <th>Submission Date</th>
                                        <th>Task Type</th>
                                        <th>Late Submission</th>
                                        <th>Details</th>
                                      </tr>
                                    </thead>
                                    <tbody>
                                      <tr>
                                        <td>1</td>  
                                        <td>12/7/15</td>
                                        <td>SRS</td>
                                        <td>14/7/15</td>
                                        <td>Assignment</td>
                                        <td>Yes</td>
                                        <td><a href="Task_details.jsp">Click Here</a> </td>
                                      </tr>
                                      <tr>
                                        <td>2</td>  
                                        <td>16/7/15</td>
                                        <td>COCOMO</td>
                                        <td>20/7/15</td>
                                        <td>Presentation</td>
                                        <td>NO</td>
                                        <td><a href="Task_details.jsp">Click Here</a> </td>
                                      </tr>
                                      <tr>
                                        <td>3</td>  
                                        <td>24/7/15</td>
                                        <td>CMM</td>
                                        <td>14/8/15</td>
                                        <td>Assignment</td>
                                        <td>NO</td>
                                        <td><a href="Task_details.jsp">Click Here</a> </td>
                                      </tr>
                                      
                                    </tbody>
                                    
                                  </table>
                                </div><!-- /.box-body -->
                            </div><!-- /.box -->
        </div>
    </section>
    <div id="confirm" class="popupContainer" style="display:none;">
        <header class="popupHeader">
            <span class="header_title">Confirmation</span>
            <span class="modal_close"><i class="fa fa-times"></i></span>
        </header>

        <section class="popupBody">
            <!-- Username & Password Login form -->
            <div class="HideCourses">
                <form action="index2.html" method="post" id="register" class="styled">
                    <div class="row"><h4>Are You Sure You want to remove member?</h4></div>
                    <div class="row">
                        <a class="btn btn_red one_half">Yes</a>
                        <a class="btn btn_hide one_half last" style="width: 25%;margin-left: 8px;margin-top: 36px;color: #FFF;">No</a>
                    </div>
                </form>
            </div>
        </section>
    </div>
        <div id="add_member" class="popupContainer" style="display:none;">
        <header class="popupHeader">
            <span class="header_title">Confirmation</span>
            <span class="modal_close"><i class="fa fa-times"></i></span>
        </header>

        <section class="popupBody">
            <!-- Username & Password Login form -->
            <div class="HideCourses">
                <form action="index2.html" method="post" id="register" class="styled">
                    <div class="row"><h4>Are You Sure You want to remove member?</h4></div>
                    <div class="row">
                        <a class="btn btn_red one_half">Yes</a>
                        <a class="btn btn_hide one_half last" style="width: 25%;margin-left: 8px;margin-top: 36px;color: #FFF;">No</a>
                    </div>
                </form>
            </div>
        </section>
    </div>

</div>
<%@include file="footer.jsp" %>
<div class='control-sidebar-bg'></div>
</div><!-- ./wrapper -->
<script>
    $("#modal_confirm").leanModal({top: 100, overlay: 0.7, closeButton: ".modal_close"});
 $("#modal_add").leanModal({top: 100, overlay: 0.7, closeButton: ".modal_close"});


</script>

<script>
    $(".header").click(function () {

        $header = $(this);
        //getting the next element
        $content = $header.next();
        //open up the content needed - toggle the slide- if visible, slide up, if not slidedown.
        $content.slideToggle(500, function () {
            //execute this after slideToggle is done
            //change text of header based on visibility of content div
            $header.text(function () {
                //change text based on condition
                return $content.is(":visible") ? "Collapse" : "Expand";
            });
        });

    });
</script>
<script>
    $("#Detail").click(function () {
        $("#detail").show();
        $("#task").hide();
        $("#li1").addClass("active");
        $("#li2").removeClass("active");
    });
    $("#Task").click(function () {
        $("#detail").hide();
        $("#task").show();
        $("#li2").addClass("active");
        $("#li1").removeClass("active");
    });
</script>


</body>
</html>