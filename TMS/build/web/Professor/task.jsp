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
                            <a href="<%=link.link.main%>">
                                <i class="fa fa-dashboard"></i> <span>Dashboard</span> </i>
                            </a>

                        </li>
                        <li class="treeview">
                            <a href="<%= link.link.prof %>">
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
                                <li><a href="Professor/team.jsp"><i class="fa fa-book"></i> Course 1</a></li>
                                <li><a href="Professor/team.jsp"><i class="fa fa-book"></i> Course 2</a></li>
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
                        Task
                    </h1>
                    <ol class="breadcrumb">
                        <li><a href="<%= link.link.main%>"><i class="fa fa-dashboard"></i> Home</a></li>
                        <li><a href="Courses.jsp">Course</a></li>
                        <li class="active">Task</li>
                    </ol>
                </section>

                <!-- Main content -->
                <section class="content">
                    <!-- Small boxes (Stat box) -->
                    
                    <div class="row">
                        <!-- Modal -->
                                    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" style="margin-top: 7%">
                                      <div class="modal-dialog" role="document">
                                        <div class="modal-content" style="height: 500px;">
                                          <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                                <h4 class="modal-title" id="myModalLabel">ADD Task</h4>
                                          </div>
                                          <div class="modal-body">
                                                <form action="index2.html" method="post" id="register" class="styled">
                                                        <div class="form-group has-feedback">
                                                            <input type="text" class="form-control required" placeholder="Course ID"/>

                                                        </div>
                                                        <div class="form-group has-feedback">
                                                            <input type="text" class="form-control required" placeholder="Task Title"/>

                                                        </div>
                                                        <div class="form-group has-feedback">
                                                            <textarea class="form-control required" placeholder="Task description"></textarea>

                                                        </div>
                                                        <div class="form-group has-feedback">
                                                            <label>Submission Date</label>
                                                            <input type="date" class="form-control required" />

                                                        </div>
                                                        <div class="form-group has-feedback">
                                                            <label>Task Type</label>
                                                        </div>
                                                        <div class="form-group has-feedback">
                                                            <input type="radio" name="Task" value="Individual" checked="true"> Individual
                                                            <input type="radio" name="Task" value="Team"> Team
                                                            

                                                        </div>
                                                        <div class="modal-footer" style="float: left;margin-left: 31%;padding-top: 7%;">
                                                            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                                            <button type="button" class="btn btn-primary">ADD Task</button>
                                                        </div>
                                                </form>
                                          </div>

                                        </div>
                                      </div>
                                    </div>

                                    
                        <div class="col-lg-12 col-xs-12">
                            <!-- small box -->
                            <div class="small-box bg-light-blue" style="height: 48px;">
                                
                                <div style="height: 16%">
                                    <div id="course" style="float: left;display: block;position: absolute;">
                                        <h4>Course name(ID)</h4>
                                    </div>
                                
                                    <div  style="float: right;display: block;margin-left: 91.5%;margin-top: 7px; position: absolute;">
                                        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal" style="border-color: #3F426D;" >ADD Task</button>
                                    </div>
                                    
                                </div>
                            </div><!-- ./col -->
                        </div>
                    </div>    
                    
                    
                    <ul class="nav nav-tabs" style="margin-top: 3%;">
                        <li id="li1" class="active"><a id="Individual" href="#Individual_task">Individual Task</a></li>
                        <li id="li2"><a id="Team" href="#Team_task">Team Task</a></li>
                    </ul>
                    
                    <div id="Individual_task">
                        <div class="box">
                            <div class="accordion" id="accordion2">
                                <div class="accordion-group">
                                    <div class="accordion-heading">
                                        <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapseOne">
                                            <table>
                                                <tr>
                                                    <td style="width: 980px">
                                                        <lable>Task 1</lable>
                                                    </td>
                                                    <td>
                                                        <lable>Submission Date</lable>
                                                        
                                                    </td>
                                                
                                                </tr>
                                                
                                            </table>
                                        
                                        </a>
                                    </div>
                                    <div id="collapseOne" class="accordion-body collapse">
                                        <div class="accordion-inner">
                                            <table>
                                                <tr>
                                                    <td style="width: 980px">
                                                        <lable>Task Description...................</lable>
                                                    </td>
                                                    
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <lable>Attachments</lable>
                                                        
                                                    </td>
                                                    <td>
                                                        <button>Delete Task</button>
                                                        
                                                    </td>
                                                
                                                </tr>
                                                
                                            </table>
                                            
                                        </div>
                                    </div>

                                </div>
                                <hr>
                                <div class="accordion-group">
                                    <div class="accordion-heading">
                                        <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapseTwo">
                                            <table>
                                                <tr>
                                                    <td style="width: 980px">
                                                        <lable>Task 2</lable>
                                                    </td>
                                                    <td>
                                                        <lable>Submission Date</lable>
                                                        
                                                    </td>
                                                
                                                </tr>
                                                
                                            </table>
                                        
                                        </a>
                                    </div>
                                    <div id="collapseTwo" class="accordion-body collapse">
                                        <div class="accordion-inner">
                                            <table>
                                                <tr>
                                                    <td style="width: 980px">
                                                        <lable>Task Description...................</lable>
                                                    </td>
                                                    
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <lable>Attachments</lable>
                                                        
                                                    </td>
                                                    <td>
                                                        <button>Delete Task</button>
                                                        
                                                    </td>
                                                
                                                </tr>
                                                
                                            </table>
                                            
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                    <div id="Team_task" style="display: none">
                        <div class="box">
                            <div class="accordion" id="accordion1">
                                <div class="accordion-group">
                                    <div class="accordion-heading">
                                        <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion1" href="#TeamOne">
                                            <table>
                                                <tr>
                                                    <td style="width: 980px">
                                                        <lable>Task 1</lable>
                                                    </td>
                                                    <td>
                                                        <lable>Submission Date</lable>
                                                        
                                                    </td>
                                                
                                                </tr>
                                                
                                            </table>
                                        
                                        </a>
                                    </div>
                                    <div id="TeamOne" class="accordion-body collapse">
                                        <div class="accordion-inner">
                                            <table>
                                                <tr>
                                                    <td style="width: 980px">
                                                        <lable>Task Description...................</lable>
                                                    </td>
                                                    
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <lable>Attachments</lable>
                                                        
                                                    </td>
                                                    <td>
                                                        <button>Delete Task</button>
                                                        
                                                    </td>
                                                
                                                </tr>
                                                
                                            </table>
                                            
                                        </div>
                                    </div>

                                </div>
                                <hr>
                                <div class="accordion-group">
                                    <div class="accordion-heading">
                                        <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion1" href="#TeamTwo">
                                            <table>
                                                <tr>
                                                    <td style="width: 980px">
                                                        <lable>Task 2</lable>
                                                    </td>
                                                    <td>
                                                        <lable>Submission Date</lable>
                                                        
                                                    </td>
                                                
                                                </tr>
                                                
                                            </table>
                                        
                                        </a>
                                    </div>
                                    <div id="TeamTwo" class="accordion-body collapse">
                                        <div class="accordion-inner">
                                            <table>
                                                <tr>
                                                    <td style="width: 980px">
                                                        <lable>Task Description...................</lable>
                                                    </td>
                                                    
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <lable>Attachments</lable>
                                                        
                                                    </td>
                                                    <td>
                                                        <button>Delete Task</button>
                                                        
                                                    </td>
                                                
                                                </tr>
                                                
                                            </table>
                                            
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                    </div>
                    
                    
                    
                    
                            
                    
                </section><!-- /.content -->
            </div><!-- /.content-wrapper -->
            <%@include file="footer.jsp" %>
            <div class='control-sidebar-bg'></div>
        </div><!-- ./wrapper -->
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
       

    </body>
</html>