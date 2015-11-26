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
</aside>s
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
                    <ul class="nav nav-tabs">
                        <li id="li1" class="active"><a id="modal_Personal_Details" href="#PersonalDetails">Personal Details</a></li>
                        <li id="li2"><a id="modal_Educational_Details" href="#EducationalDetails">Educational Details</a></li>
                    </ul>

                    <div class="box box-primary" id="PersonalDetails">
                        <div class="box-header">
                            <b>Student</b>
                            <button class="btn btn-default pull-right" id="editDetails">Edit</button>
                        </div>
                        <div class="box-body">
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
                    
                    <div class="box box-primary" id="EducationalDetails" style="display: none">
                         <div class="box-header">
                            <b>Student</b>
                            <button class="btn btn-default pull-right" id="editEdu">Edit</button>
                        </div>
                        <div class="box-body">
                            <table class="table-condensed">
                                <tbody>
                                <tr>
                                    <th style="width:140px">Institute Name</th>
                                    <td>
                                        <label>Daiict</label> 
                                    </td>
                                </tr>

                                <tr>
                                    <th>Past Colg</th>
                                    <td>
                                        <label>K.s</label>
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
            
            $("#editPersonalDetails").click(function () {
                $("#txtName").removeAttr("readonly");
                $("#txtEmail").removeAttr("readonly");
                $("#txtInstituteName").removeAttr("readonly");
                $("#txtNewPassword").removeAttr("readonly");
            });
            
            $("#editEducationalDetails").click(function () {
                $("#txtNametab2").removeAttr("readonly");
                $("#txtEmailtab2").removeAttr("readonly");
                $("#txtInstituteNametab2").removeAttr("readonly");
                $("#txtNewPasswordtab2").removeAttr("readonly");
            });
               
               $("#modal_Educational_Details").click(function () {
                $("#EducationalDetails").show();
                $("#PersonalDetails").hide();
                $("#li2").addClass("active");
                $("#li1").removeClass("active");
            });
            
        </script>
        <script>
    

            $( "#editDetails" ).click( function() {
            $( "label" ).replaceWith( function() {
                return "<input type=\"text\" value=\"" + $( this ).html() + "\" />";
            });
            });
            $( "#editEdu" ).click( function() {
            $( "label" ).replaceWith( function() {
                return "<input type=\"text\" value=\"" + $( this ).html() + "\" />";
            });
            });
            
        </script>
    </body>
</html>