<%@page import="java.util.ArrayList"%>
<%@page import="TMS.Bean.Courses"%>
<!DOCTYPE html>
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
   <%
     ArrayList<Courses> workingCoursess=(ArrayList<Courses>)session.getAttribute(TMS.Controller.constrants.sessionStudentWorkingCourses);
     ArrayList<Courses> finishCoursess=(ArrayList<Courses>)session.getAttribute(TMS.Controller.constrants.sessionStudentFinishCourses);
              
    %>
            <!-- Content Wrapper. Contains page content -->
            <div class="content-wrapper">
                <!-- Content Header (Page header) -->
                <section class="content-header">
                    <h1>My Courses
                    </h1>
                    <ol class="breadcrumb">
                        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
                        <li class="active">My Courses</li>

                    </ol>
                    <ul class="nav nav-tabs" style="margin-top: 3%;">
                        <li id="li1" class="active"><a id="currentyear" href="#currentCourseRow">Current Year Courses</a></li>
                        <li id="li2"><a id="pastyear" href="#pastCourseRow">Past Year Courses</a></li>

                    </ul>

                </section>

                <!-- Main content -->
                <section class="content" >
                    <div  id="currentCourseRow">
                        <!-- Small boxes (Stat box) -->
                        <div class="row">
                         <%
                           for(Courses c:workingCoursess ){
                         %>   
                            <div class="col-lg-3 col-xs-6">
                                <!-- small box -->
                                <div class="small-box bg-light-blue-active">
                                    <div class="inner">
                                        <h4 style="text-transform: uppercase;"><%=c.getCourse_name() %>()<%= c.getCourse_id() %></h4>
                                        <p>&nbsp;&nbsp;</p>
                                    </div>
                                    <div class="icon">
                                        <img src="../dist/img/books.png" style="height: 61px; margin-top: -40px;" alt="User Image">
                                    </div>
                                        <a href="Course_details.jsp?coursesId=<%=c.getCourse_id()%>" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
                                </div>
                            </div><!-- ./col -->
                         <%
                          }
                         %>
                        </div>
                    </div>
                    <div  id="pastCourseRow" style="display: none">    
                        <div class="row">
                            <%
                            for(Courses c:finishCoursess){
                            %>
                            <div class="col-lg-3 col-xs-6">
                                <!-- small box -->
                                <div class="small-box bg-light-blue-active">
                                    <div class="inner">
                                        <h4 style="text-transform: uppercase;"><%=c.getCourse_name() %>()<%= c.getCourse_id() %></h4>
                                        <p>&nbsp;&nbsp;</p>
                                    </div>
                                    <div class="icon">
                                        <img src="../dist/img/books.png" style="height: 61px; margin-top: -40px;" alt="User Image">                                        
                                    </div>
                                    <a href="Course_details.jsp?coursesId=<%=c.getCourse_id()%>" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
                                </div>
                            </div><!-- ./col -->
                            <%}%>
                        </div>
                    </div>  
                </section><!-- /.content -->
            </div><!-- /.content-wrapper -->
            <%@include file="footer.jsp" %>
            <div class='control-sidebar-bg'></div>
        </div><!-- ./wrapper -->

        <script>
    $("#currentyear").click(function () {
            $("#currentCourseRow").show();
            $("#pastCourseRow").hide();
            $("#li1").addClass("active");
            $("#li2").removeClass("active");
        });
    $("#pastyear").click(function () {
            $("#currentCourseRow").hide();
            $("#pastCourseRow").show();
            $("#li2").addClass("active");
            $("#li1").removeClass("active");
        });
</script>
        
   