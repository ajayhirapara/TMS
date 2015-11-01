<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
                        <li class="active treeview">
                            <a href="../index.jsp">
                                <i class="fa fa-dashboard"></i> <span>Dashboard</span> </i>
                            </a>

                        </li>

                        <li class="treeview">
                            <a href="../Professor/Courses.jsp">
                                <i class="fa fa-tasks"></i>
                                <span>Courses</span>
                            </a>
                        </li>

                        <li class="treeview">
                            <a href="#">
                                <i class="fa fa-tasks"></i>
                                <span>Tasks</span>
                            </a>
                        </li>

                        <li class="treeview">
                            <a href="#">
                                <i class="fa fa-group"></i>
                                <span>Teams</span>
                            </a>
                        </li>


                    </ul>
                </section>
                <!-- /.sidebar -->
            </aside>

            <!-- Content Wrapper. Contains page content -->
            <div class="content-wrapper">
                <!-- Content Header (Page header) -->

                <ol class="breadcrumb">
                    <li><a href="index.jsp"><i class="fa fa-dashboard"></i> Home</a></li>
                    <li class="active">Profile</li>
                </ol>
                </section>

                <!-- Main content -->
                <!-- Main row -->
                <div class="row">
                    <!-- Left col -->
                    
                    <section class="col-lg-7 connectedSortable">

                        <!-- RECENT TASKS -->

                        <div class="box box-primary" style="width: 173%;">
                            <div class="box-header">
                                <i class="fa fa-tasks"></i>
                                <ul class="nav nav-tabs">
                                    <li id="li1" class="active"><a id="modal_Personal_Details" href="#PersonalDetails">Personal Details</a></li>
                                    <li id="li2"><a id="modal_Educational_Details" href="#EducationalDetails">Educational Details</a></li>
                                    
                                </ul>

                            </div>
                            <div class="box-body" id="PersonalDetails">
                                <h3 class="box-title">Personal Details <button class="btn btn-default pull-right">Edit</button></h3>
                                <%--
                                     <button class="btn btn-default pull-right">Edit</button>
                                --%>
                                <ul class="todo-list">

                                    <li>
                                        <span class="text">Name </span>
                                        <span class="text" style="margin-left: 420px;padding-left: 66px;">
                                            <input type="text" id="txtName" readonly="true" /> 
                                        </span>
                                    </li>
                                    <li>
                                        <span class="text">Email</span>
                                        <span class="text" style="margin-left: 420px;padding-left: 66px;">
                                            <input type="text" id="txtEmail" readonly="true" /> 
                                        </span>
                                    </li>
                                    <li>
                                        <span class="text">Institute Name</span>
                                        <span class="text" style="margin-left:365px;padding-left: 66px;">
                                            <input type="text" id="txtInstituteName" readonly="true" />

                                        </span>
                                    </li>
                                    <li>
                                        <span class="text">New Password</span>
                                        <span class="text" style="margin-left: 365px;padding-left: 66px;">
                                            <input type="text" id="txtNewPassword" readonly="true"/> 
                                        </span>
                                    </li>

                                </ul>
                                <div class="box-footer clearfix no-border">
                                    <button class="btn btn-default pull-right">Reset</button>&nbsp;
                                    <button class="btn btn-default pull-right">Save</button>
                                </div>
                            </div>
                                <div class="box-body" id="EducationalDetails" style="display: none">
                                <h3 class="box-title">Educational Details<button class="btn btn-default pull-right">Edit</button></h3>  
                                <ul class="todo-list">

                                    <li>
                                        <span class="text">Name </span>
                                        <span class="text" style="margin-left: 420px;padding-left: 66px;">
                                            <input type="text" id="txtName" readonly="true" /> 
                                        </span>
                                    </li>
                                    <li>
                                        <span class="text">Email</span>
                                        <span class="text" style="margin-left: 420px;padding-left: 66px;">
                                            <input type="text" id="txtEmail" readonly="true" /> 
                                        </span>
                                    </li>
                                    <li>
                                        <span class="text">Institute Name</span>
                                        <span class="text" style="margin-left:365px;padding-left: 66px;">
                                            <input type="text" id="txtInstituteName" readonly="true" />

                                        </span>
                                    </li>
                                    <li>
                                        <span class="text">New Password</span>
                                        <span class="text" style="margin-left: 365px;padding-left: 66px;">
                                            <input type="text" id="txtNewPassword" readonly="true" /> 
                                        </span>
                                    </li>

                                </ul>
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

                </section><!-- /.content -->
            </div><!-- /.content-wrapper -->
            
            <%@include file="footer.jsp" %>
            <!-- Add the sidebar's background. This div must be placed
                 immediately after the control sidebar -->
            <div class='control-sidebar-bg'></div>
        </div><!-- ./wrapper -->

        
        <script>
             $("#modal_Personal_Details").click(function () {
                $("#EducationalDetails").hide();
                $("#PersonalDetails").show();
                $("#li1").addClass("active");
                $("#li2").removeClass("active");
            });
               
               $("#modal_Educational_Details").click(function () {
                $("#EducationalDetails").show();
                $("#PersonalDetails").hide();
                $("#li2").addClass("active");
                $("#li1").removeClass("active");
            });
            
        </script>
    </body>
</html>