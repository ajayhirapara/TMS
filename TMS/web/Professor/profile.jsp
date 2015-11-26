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
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
            Profile
        </h1>
        <ol class="breadcrumb">
            <li><a href="#"> <i class="fa fa-dashboard"></i> Home</a></li>
            <li class="active">Profile</li>
        </ol>


    </section>
    <section class="content" style="margin-top: 18px">
        <div class="box box-primary">
            <div class="box-header">
                <b>Professor</b>
                <button class="btn btn-default pull-right" id="editDetails">Edit</button>
            </div>

            <div class="box-body" id="ProfileDetails">
                <table class="table-condensed">
                    <tbody>
                    <tr>
                        <th style="width:140px">First Name </th>
                        <td>
                            <label>Ketan</label> 
                        </td>
                    </tr>

                    <tr>
                        <th>Last Name </th>
                        <td>
                            <label>Saresa</label>
                        </td>
                    </tr>
                    <tr>
                        <th>Email</th>
                        <td>
                            <label>saresaketan@gmail.com</label> 
                        </td>
                    </tr>
                    <tr>
                        <th>Gender</th>
                        <td>
                            <label>Male</label>
                        </td>
                    </tr>

                    </tbody>
                </table>
                <div class="box-footer clearfix no-border">
                    <button class="btn btn-default pull-right">Reset</button>&nbsp;
                    <button class="btn btn-default pull-right">Save</button>
                </div>
            </div>

        </div>
        <!-- quick email widget -->
    </section><!-- /.Left col -->
    <!-- right col (We are only adding the ID to make the widgets sortable)-->
    <!-- right col -->
</div><!-- /.row (main row) -->

<%@include file="footer.jsp" %>
<!-- Add the sidebar's background. This div must be placed
     immediately after the control sidebar -->
<div class='control-sidebar-bg'></div>
<!-- ./wrapper -->


<script>
    

    $( "#editDetails" ).click( function() {
    $( "label" ).replaceWith( function() {
        return "<input type=\"text\" value=\"" + $( this ).html() + "\" />";
    });
    });
    

</script>
</body>
</html>