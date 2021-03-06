
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
            Dashboard
        </h1>
        <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
            <li class="active">Dashboard</li>
        </ol>
    </section>

    <!-- Main content -->
    <section class="content">
        <!-- Small boxes (Stat box) -->
       <div class="row">
            <div class="col-lg-3 col-xs-6">
                <!-- small box -->
                <div class="small-box bg-aqua">
                    <div class="inner">
                        <h4>Courses Enrolled</h4>
                        <p id="course_taken" name="course_taken">5</p>

                    </div>
                    <div class="icon">
                        <i class="fa fa-graduation-cap"></i>
                    </div>
                    <br/>
                </div>
            </div><!-- ./col -->
            <div class="col-lg-3 col-xs-6">
                <!-- small box -->
                <div class="small-box bg-green">
                    <div class="inner">
                        <h4>Current Course</h4>
                        <p id="completion_rate" name="completion_rate">4</p>
                    </div>
                    <div class="icon">
                        <i class="fa fa-book"></i>
                    </div><br/>
                </div>
            </div><!-- ./col -->
            <div class="col-lg-3 col-xs-6">
                <!-- small box -->
                <div class="small-box bg-yellow">
                    <div class="inner">
                        <h4>My Teams</h4>
                        <p id="myteams" name="myteams">12</p>
                    </div>
                    <div class="icon">
                        <i class="fa fa-users"></i>
                    </div><br/>
                </div>
            </div><!-- ./col -->
            <div class="col-lg-3 col-xs-6">
                <!-- small box -->
                <div class="small-box bg-red">
                    <div class="inner">
                        <h4>Tasks Pending</h4>
                        <p id="task_pending" name="task_pending">5</p>

                    </div>
                    <div class="icon">
                        <i class="ion ion-pie-graph"></i>
                    </div><br/>
                </div>
            </div><!-- ./col -->
        </div><!-- /.row -->
        <!-- Main row -->
        <div class="row">
            <!-- Left col -->
            <section class="col-lg-7 connectedSortable">

                <!-- RECENT TASKS -->

                <div class="box box-primary">
                    <div class="box-header">
                        <i class="fa fa-tasks"></i>
                        <h3 class="box-title">Recent Tasks</h3>  
                    </div>
                    <div class="box-body">
                        <ul class="todo-list">
                            <li>
                                <span class="text">Design a nice theme</span>
                            </li>
                            <li>
                                <span class="text">Make SRS</span>
                            </li>
                            <li>
                                <span class="text">Do cost estimation using COCOMO</span>
                            </li>
                            <li>
                                <span class="text">Make class diagram</span>
                            </li>
                            <li>
                                <span class="text">Write note about different SDLC</span>
                            </li>
                        </ul>
                        <div class="box-footer clearfix no-border">
                            <button class="btn btn-default pull-right"><i class="fa fa-plus"></i> Show more</button>
                        </div>
                    </div>
                </div>


                <!-- quick email widget -->
                <div class="box box-info">
                    <div class="box-header">
                        <i class="fa fa-envelope"></i>
                        <h3 class="box-title">Quick Email</h3>
                        <!-- tools box -->
                        <div class="pull-right box-tools">
                            <button class="btn btn-info btn-sm" data-widget="remove" data-toggle="tooltip" title="Remove"><i class="fa fa-times"></i></button>
                        </div><!-- /. tools -->
                    </div>
                    <div class="box-body">
                        <form action="#" method="post">
                            <div class="form-group">
                                <input type="email" class="form-control" name="emailto" placeholder="Email to:"/>
                            </div>
                            <div class="form-group">
                                <input type="text" class="form-control" name="subject" placeholder="Subject"/>
                            </div>
                            <div>
                                <textarea class="textarea" placeholder="Message" style="width: 100%; height: 125px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;"></textarea>
                            </div>
                        </form>
                    </div>
                    <div class="box-footer clearfix">
                        <button class="pull-right btn btn-default" id="sendEmail">Send <i class="fa fa-arrow-circle-right"></i></button>
                    </div>
                </div>

            </section><!-- /.Left col -->
            <!-- right col (We are only adding the ID to make the widgets sortable)-->
            <section class="col-lg-5 connectedSortable">

              <!-- TO DO List -->
                <div class="box box-primary">
                    <div class="box-header">
                        <i class="ion ion-clipboard"></i>
                        <h3 class="box-title">To Do List</h3>
                        <div class="box-tools pull-right">
                            <ul class="pagination pagination-sm inline">
                                <li><a href="#">&laquo;</a></li>
                                <li><a href="#">1</a></li>
                                <li><a href="#">2</a></li>
                                <li><a href="#">3</a></li>
                                <li><a href="#">&raquo;</a></li>
                            </ul>
                        </div>
                    </div><!-- /.box-header -->
                    <div class="box-body">
                        <ul class="todo-list">
                            <li id="task1">
                                <!-- todo text -->
                                <span class="text" id="todo_task1" name="todo_task1">Design a nice theme</span>
                                <input type="text" class="text-primary" id="1todo_task1" name="1todo_task1" style="display: none;width:80%"/>

                                <div class="tools">
                                    <i class="fa fa-edit" id="11todo_task1" onclick="getname(this)"></i>
                                    <i class="fa fa-trash-o" style="color:red" id="1task1"></i>
                                </div>
                            </li>
                            <li id="task2">
                                <!-- drag handle -->
                                <!-- todo text -->
                                <span class="text" id="todo_task2" name="todo_task2">Database</span>
                                <input type="text" class="text-primary" id="1todo_task2" name="1todo_task2" style="display: none;width:80%"/>

                                <div class="tools">
                                    <i class="fa fa-edit" id="11todo_task2" onclick="getname(this)"></i>
                                    <i class="fa fa-trash-o" style="color:red" id="1task2" ></i>
                                </div>
                            </li>
                            <li id="task3">
                                <!-- drag handle -->
                                <!-- todo text -->
                                <span class="text" id="todo_task3" name="todo_task3">Coding</span>
                                <input type="text" class="text-primary" id="1todo_task3" name="1todo_task3" style="display: none;width:80%"/>
                                <div class="tools">
                                    <i class="fa fa-edit" id="11todo_task3" onclick="getname(this)"></i>
                                    <i class="fa fa-trash-o" style="color:red" id="1task3"></i>
                                </div>
                            </li>
                            <li id="task4">
                                <!-- drag handle -->
                                <!-- todo text -->
                                <span class="text" id="todo_task4" name="todo_task4"> Check your messages and notifications</span>
                                <input type="text" class="text-primary" id="1todo_task4" name="1todo_task4" style="display: none;width:80%"/>
                                <div class="tools">
                                    <i class="fa fa-edit" id="11todo_task4" onclick="getname(this)"></i>
                                    <i class="fa fa-trash-o" style="color:red" id="1task4"></i>
                                </div>
                            </li>
                            <li id="task5">
                                <!-- drag handle -->
                                <!-- todo text -->
                                <span class="text" id="todo_task5" name="todo_task5">Make the theme responsive </span>
                                <input type="text" class="text-primary" id="1todo_task5" name="1todo_task5" style="display: none;width:80%"/>
                                <div class="tools">
                                    <i class="fa fa-edit" id="11todo_task5" onclick="getname(this)"></i>
                                    <i class="fa fa-trash-o" style="color:red" id="1task5"></i>
                                </div>
                            </li>
                            <li id="task6">
                                <!-- drag handle -->
                                <!-- todo text -->
                                <span class="text" id="todo_task6" name="todo_task6">Let theme shine like a star</span>
                                <input type="text" class="text-primary" id="1todo_task6" name="1todo_task6" style="display: none;width:80%"/>
                                <div class="tools">
                                    <i class="fa fa-edit" id="11todo_task6" onclick="getname(this);"></i>
                                    <i class="fa fa-trash-o" style="color:red" id="1task6"></i>
                                </div>
                            </li>
                        </ul>
                    </div><!-- /.box-body -->
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="text" class="text-input" id="todo_task_new" name="todo_task_new" style="display: none;width:60%" placeholder="add new"/>

                    <div class="box-footer clearfix no-border">
                        <button class="btn btn-default pull-right"  id="addnew_todo" name="addnew_todo"><i class="fa fa-plus"></i> Add item</button>
                    </div>
                </div><!-- /.box -->

            </section><!-- right col -->
        </div><!-- /.row (main row) -->

    </section><!-- /.content -->
</div><!-- /.content-wrapper -->

<%@include file="footer.jsp" %>
<div class='control-sidebar-bg'></div>

<script>
    $(document).ready(function () {
        $(".fa-trash-o").click(function () {

            var id = $(this).attr('id');
            var result = id.substring(1, id.length);
            //alert(result);
            $("#" + result).remove();
        });
    });
</script>
<script>
    var z = 1;
    function getname(nameid) {
        if (z === 1)
        {
            var id = nameid.id;
            var x = id.substring(2, id.length);
            var y = id.substring(1, id.length);
            document.getElementById(y).value = document.getElementById(x).innerHTML;
            document.getElementById(y).style.display = 'block';
            //document.getElementById(x).style.visibility = "hidden";
            document.getElementById(x).className = "notvisible";//style.addclass("notvisible");
            z++;
        }

    }
   
</script>
<script>
    $(document).ready(function () {
        $(".text-primary").keypress(function (event) {

            var keycode = (event.keyCode ? event.keyCode : event.which);
//alert(keycode);
            if (keycode === 13)
            {
                z--;
                
                var id = $(this).attr('id');
                var result = id.substring(1, id.length);
                $("#" + id).hide();
                document.getElementById(result).innerHTML=document.getElementById(id).value;
                document.getElementById(result).classList.remove("notvisible");
               document.getElementById(result).className = "text";
               
            }
        });
    });
</script>
<script>
    $(document).ready(function () {
        $("#addnew_todo").click(function () {
           $("#todo_task_new").show();
           //alert("hi");
        });
    });
</script>
<script>
    $(document).ready(function () {
        $("#todo_task_new").keypress(function (event) {

            var keycode = (event.keyCode ? event.keyCode : event.which);
            if (keycode === 13)
            {
                alert("enter");
            }
                
        });
    });
</script>
</body>
</html>