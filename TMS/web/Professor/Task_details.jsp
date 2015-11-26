
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
            <li class="active treeview">
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
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
            Task Details
        </h1>
        <ol class="breadcrumb">
            <li><a href="#"> <i class="fa fa-dashboard"></i> Home</a></li>
            <li><a href="#"> Task</a> </li>
            <li class="active">Task Details</li>
        </ol>


    </section>

    <!-- Main content -->
    <section class="content" style="margin-top: 18px">

        <div class="box box-primary">
            <div class="box-header with-border">
                <h3 class="box-title text-bold">Assignment 1</h3>

            </div><!-- /.box-header -->
            <div class="box-body" style="padding-top: 30px">
                <style>
                    th
                    {
                        height:50px;
                    }
                </style>

                <table class='table-condensed'>
                    <tr>
                        <th style="width: 140px">Assigned On </th><td>12/7/15 11:00 AM</td>                        
                    </tr>
                    <tr>
                        <th>Submit  </th><td>12/7/15 6:00 PM</td>
                    </tr>
                    <tr>
                        <th>Description</th><td>Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.</td>
                    </tr>
                    <tr>
                        <th>Submission file</th><td> <a href="#">Download file </a>(Last upated on: 12/7/15 5:00PM) </td>
                    </tr>
                    <tr>
                        <th>Credits</th><td>5 </td>
                    </tr>
                    <tr>
                        <th>Earned Credits</th>
                        <td> 
                            <div class="col-sm-2 no-padding">
                                <button class="btn btn-block btn-success btn-xs">Assign Credits</button> 
                            </div>
                        </td>
                    </tr>

                    <tr>


                    </tr>
                </table>
            </div>
            <div class="box-footer no-padding">

            </div>
        </div>

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

</body>
</html>