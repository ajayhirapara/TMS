<%@include file="header.jsp" %>
<aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
        <!-- Sidebar user panel -->
        <div class="user-panel">
            <div class="pull-left image">
                <img src="../dist/img/user2-160x160.jpg" class="img-circle" alt="User Image" />
            </div>
            <div class="pull-left info">
                <p>Student</p>
            </div>
        </div>
        <!-- sidebar menu: : style can be found in sidebar.less -->
        <ul class="sidebar-menu">
            <li class="header">MAIN NAVIGATION</li>
            <li class="treeview" id="Dashboard">
                <a href="index.jsp">
                    <i class="fa fa-dashboard"></i> <span>Dashboard</span> </i>
                </a>

            </li>
            <li class="treeview" id="Course">
                <a href="StudentCoursesSetDetail">
                    <i class="fa fa-book"></i>
                    <span>My Courses</span>
                </a>
            </li>

            <li class="treeview" id="Task">
                <a href="#">
                    <i class="fa fa-tasks"></i>
                    <span>Tasks</span>
                    <i class="fa fa-angle-left pull-right"></i>
                </a>
                <ul class="treeview-menu">
                    <li><a href="Task.jsp"><i class="fa fa-book"></i> Course 1</a></li>
                    <li><a href="Task.jsp"><i class="fa fa-book"></i> Course 2</a></li>
                </ul>
            </li>
            <li class="treeview" id="Team">
                <a href="#">
                    <i class="fa fa-group"></i>
                    <span>My Teams</span>
                    <i class="fa fa-angle-left pull-right"></i>
                </a>
                <ul class="treeview-menu">
                    <li><a href="Team.jsp"><i class="fa fa-book"></i> Course 1</a></li>
                    <li><a href="Team.jsp"><i class="fa fa-book"></i> Course 2</a></li>
                </ul>
            </li>
        </ul>
    </section>
    <!-- /.sidebar -->
</aside>
            <div class="content-wrapper">
                <!-- Content Header (Page header) -->
                <section class="content-header">
                    <h1>
                        Course Name
                    </h1>
                    <ol class="breadcrumb">
                        <li><a href="<%= link.link.main%>"><i class="fa fa-dashboard"></i> Home</a></li>
                        <li class="active">Task</li>
                    </ol>
                </section>

                <!-- Main content -->
                <section class="content">
                    <div class="row" style="margin-top: 18px">
                        <div class="col-xs-12">
                            <div class="box box-primary">
                                <div class="box-header">
                                  <h3 class="box-title">Tasks</h3>
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
                                        <th>Performer Type</th>
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
                                        <td>Team</td>
                                        <td><a href="Task_details.jsp">Click Here</a> </td>
                                      </tr>
                                      <tr>
                                        <td>2</td>  
                                        <td>16/7/15</td>
                                        <td>COCOMO</td>
                                        <td>20/7/15</td>
                                        <td>Presentation</td>
                                        <td>Team</td>
                                        <td><a href="Task_details.jsp">Click Here</a> </td>
                                      </tr>
                                      <tr>
                                        <td>3</td>  
                                        <td>24/7/15</td>
                                        <td>CMM</td>
                                        <td>14/8/15</td>
                                        <td>Assignment</td>
                                        <td>Individual</td>
                                        <td><a href="Task_details.jsp">Click Here</a> </td>
                                      </tr>
                                      
                                    </tbody>
                                    
                                  </table>
                                </div><!-- /.box-body -->
                            </div><!-- /.box -->
                        </div><!-- /.col -->
                    </div>    
                </section><!-- /.content -->
            </div><!-- /.content-wrapper -->
            <%@include file="footer.jsp" %>
            <div class='control-sidebar-bg'></div>
            
            
        <script>
            $("#Individual").click(function () {
                    $("#Individual_task").show();
                    $("#Team_task").hide();
                    $("#li1").addClass("active");
                    $("#li2").removeClass("active");
                });
            $("#Team").click(function () {
                    $("#Individual_task").hide();
                    $("#Team_task").show();
                    $("#li2").addClass("active");
                    $("#li1").removeClass("active");
                });
        </script>
        <script type="text/javascript">
      $(function () {
        $("#example1").dataTable();
        $('#example2').dataTable({
          "bPaginate": true,
          "bLengthChange": false,
          "bFilter": false,
          "bSort": true,
          "bInfo": true,
          "bAutoWidth": false
        });
      });
    </script>

    </body>
</html>