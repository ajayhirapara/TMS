
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
                              <li><a href="pages/charts/chartjs.html"><i class="fa fa-book"></i> Course 1</a></li>
                              <li><a href="pages/charts/morris.html"><i class="fa fa-book"></i> Course 2</a></li>
                              <li><a href="pages/charts/flot.html"><i class="fa fa-book"></i> Course 3</a></li>
                              <li><a href="pages/charts/inline.html"><i class="fa fa-book"></i> Course 4</a></li>
                            </ul>
                          </li>

                          <li class="treeview">
                            <a href="#">
                              <i class="fa fa-group"></i>
                              <span>Teams</span>
                              <i class="fa fa-angle-left pull-right"></i>
                            </a>
                              <ul class="treeview-menu">
                              <li><a href="pages/charts/chartjs.html"><i class="fa fa-book"></i> Course 1</a></li>
                              <li><a href="pages/charts/morris.html"><i class="fa fa-book"></i> Course 2</a></li>
                              <li><a href="pages/charts/flot.html"><i class="fa fa-book"></i> Course 3</a></li>
                              <li><a href="pages/charts/inline.html"><i class="fa fa-book"></i> Course 4</a></li>
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
                        Courses
                    </h1>
                    <ol class="breadcrumb">
                        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
                        <li class="active">Courses</li>
                    </ol>
                </section>

                <!-- Main content -->
                <section class="content">
                    <!-- Small boxes (Stat box) -->
                    
                    <div class="row">
                        <div class="col-lg-3 col-xs-6">
                            <!-- small box -->
                            <div class="small-box bg-light-blue" style="height: 140px">
                                <div class="inner">

                                    <h3>Course 1</h3>
                                    <p>

                                    </p>
                                </div>
                                <div class="icon">
                                    <%--i class="fa fa-book" ></i>--%>
                                    <img src="../dist/img/books.png" style="height: 80px" alt="User Image"/>

                                </div>
                                <a href="CourseDetail.jsp" class="small-box-footer" style="padding-top: 9px;margin-top: 33px;height: 35px;">More info <i class="fa fa-arrow-circle-right"></i></a>
                            </div>
                        </div><!-- ./col -->
                        <div class="col-lg-3 col-xs-6">
                            <!-- small box -->
                            <div class="small-box bg-light-blue" style="height: 140px">
                                <div class="inner">
                                    <h3>Course 2</h3>
                                    <p>      </p>
                                </div>
                                <div class="icon">
                                    <%--  <i class="fa fa-book" ></i>--%>
                                    <img src="../dist/img/books.png" style="height: 80px" alt="User Image"/>

                                </div>
                                <a href="#" class="small-box-footer" style="padding-top: 9px;margin-top: 33px;height: 35px;">More info <i class="fa fa-arrow-circle-right"></i></a>
                            </div>
                        </div><!-- ./col -->
                        <div class="col-lg-3 col-xs-6" >
                            <!-- small box -->
                            <div class="small-box bg-light-blue" style="height: 140px">
                                <div class="inner">
                                    <h3>Course 3</h3>
                                    <p></p>
                                </div>
                                <div class="icon">
                                    <%--<i class="fa fa-book" ></i>--%>
                                    <img src="../dist/img/books.png" style="height: 80px" alt="User Image"/>
                                </div>
                                <a href="#" class="small-box-footer" style="padding-top: 9px;margin-top: 33px;height: 35px;">More info <i class="fa fa-arrow-circle-right"></i></a>
                            </div>
                        </div><!-- ./col -->
                        <div class="col-lg-3 col-xs-6">
                            <!-- small box -->
                            <div class="small-box bg-light-blue" style="height: 140px">
                                <div class="inner">
                                    <h3>Course 4</h3>
                                    <p></p>
                                </div>
                                <div class="icon">
                                    <%--<i class="fa fa-book" ></i>--%>
                                    <img src="../dist/img/books.png" style="height: 80px" alt="User Image"/>
                                </div>
                                <a href="#" class="small-box-footer" style="padding-top: 9px;margin-top: 33px;height: 35px;">More info <i class="fa fa-arrow-circle-right"></i></a>
                            </div>
                        </div><!-- ./col -->
                    </div>
                    <!-- Main row -->
                    <div class="row" style="padding-left: 510px; display: block">
                        <!-- Left col -->
                        <!-- /.Left col -->
                        <!-- right col (We are only adding the ID to make the widgets sortable)-->
                        <!-- right col -->

                        <%--<button id="btnAddCourse"   style="text-align: center" class="btn-github" >Add Course</button>--%>

                        <a id="modal_trigger_login" href="#modal_trigger_login" class="btn btn_login_home">Add Course</a>
                        <div id="modal-login" class="popupContainer" style="display:none;">
                            <header class="popupHeader">
                                <span class="header_title">Courses</span>
                                <span class="modal_close"><i class="fa fa-times"></i></span>
                            </header>

                            <section class="popupBody">
                                <!-- Username & Password Login form -->
                                <div class="login-box-body">
                                    <form action="index2.html" method="post" id="register" class="styled">
                                        <div class="form-group has-feedback">
                                            <input type="email" class="form-control required" placeholder="Email"/>
                                            <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
                                        </div>
                                        <div class="form-group has-feedback">
                                            <input type="password" class="form-control required" placeholder="Password"/>
                                            <span class="glyphicon glyphicon-lock form-control-feedback"></span>
                                        </div>
                                        <div class="row">
                                            <div class="col-xs-8">    
                                                <div class="checkbox icheck">
                                                    <label>
                                                        <input type="checkbox"> Remember Me
                                                    </label>
                                                </div>                        
                                            </div><!-- /.col -->
                                            <center>
                                                <div class="action_btns">
                                                    <div class="row"><a href="#" class="btn_login btn btn_red" style="width:120px">Login</a></div>
                                                </div>
                                            </center>
                                        </div>
                                    </form>
                                    <a href="#" class="forgot_password">Forgot password?</a>
                                </div>
                            </section>
                        </div>
                    </div><!-- /.row (main row) -->

                </section><!-- /.content -->
            </div><!-- /.content-wrapper -->
            <%@include file="footer.jsp" %>
            <div class='control-sidebar-bg'></div>
        </div><!-- ./wrapper -->

       

    </body>
</html>