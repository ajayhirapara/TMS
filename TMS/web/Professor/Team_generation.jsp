
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
        <!-- sidebar menu: : style can be found in sidebar.less -->
        <ul class="sidebar-menu">
            <li class="header">MAIN NAVIGATION</li>
            <li class="treeview">
                <a href="../index.jsp">
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
                    <i class="fa fa-group"></i>
                    <span>Teams</span>
                    <i class="fa fa-angle-left pull-right"></i>
                </a>
                <ul class="treeview-menu">
                    <li><a href="team.jsp"><i class="fa fa-book"></i> Course 1</a></li>
                    <li><a href="team.jsp"><i class="fa fa-book"></i> Course 2</a></li>
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
            Course Details
        </h1>
        <ol class="breadcrumb">
            <li><a href="<%= link.link.main %> "><i class="fa fa-dashboard"></i> Home</a></li>
            <li><a href="Courses.jsp"> Courses</a></li>
            <li class="active">Course Details</li>
        </ol>
        <ul class="nav nav-tabs" style="margin-top: 3%;">
            <li id="li1" class="active"><a id="currentyear" href="#courseinfo">Course Details</a></li>
            <li id="li2"><a id="pastyear" href="#team">Teams</a></li>

        </ul>
    </section>

    <!-- Main content -->
    <section class="content">
        <!-- Small boxes (Stat box) -->
        <div class="row" id="courseinfo" style="margin-left: 2px;">
            <!-- Modal -->
            <div class="modal fade" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" style="margin-top: 7%">
                <div class="modal-dialog" role="document">
                    <div class="modal-content" style="height: 356px;">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                            <h4 class="modal-title" id="myModalLabel">Course Details</h4>
                        </div>
                        <div class="modal-body">
                            <form method="post" >
                                <table>
                                    <tr>
                                        <td style="width: 37%"> <label> Course ID</label> </td>
                                        <td> <input type="text" value="Course id" id="add_course_id" name="add_course_id"> </td>
                                    </tr>
                                    <tr>
                                        <td><label> Course Name</label></td>
                                        <td><input type="text" value="Course Name" id="add_course_name" name="add_course_name"></td>
                                    </tr>
                                    <tr>
                                        <td><label> Head Instructor's name </label></td>
                                        <td><input type="text" value="name" id="add_course_iname" name="add_course_iname"></td>
                                    </tr>
                                    <tr>
                                        <td><label> TA</label></td>
                                        <td><input type="text" value="name" id="add_course_ta_name" name="add_course_ta_name"></td>
                                    </tr>
                                    <tr>
                                        <td><label> Course Duration</label></td>
                                        <td><input type=date value="Start date" id="Startdate" name="startdate"></td>
                                        <td>TO</td>
                                        <td><input type=date value="End date" id="enddate" name="enddate"></td>
                                    </tr>
                                </table>


                            </form>
                        </div>
                        <div class="modal-footer" style="float: left;margin-left: 31%;padding-top: 7%;">
                            <button type="button" class="btn btn-default" data-dismiss="modal" id="close" name="close">Close</button>
                            <button type="submit" class="btn btn-primary" id="save" name="save">Save changes</button>
                        </div>
                    </div>
                </div>
            </div>

            <div id="course_details">
                <h3 class="box-title">Course Details <button class="btn btn-default pull-right" data-toggle="modal" data-target="#myModal1" style="margin-right: 2%;width: 6%; background-color: cornflowerblue;">Edit</button></h3>
                <table>
                    <tr>
                        <td style="width: 75%;">
                            <b> Course ID</b>
                        </td>

                        <td>
                            <label id="course_id" name="course_id">IT632</label>
                        </td>

                    </tr>
                    <tr>
                        <td>
                            <b> Course Name</b>
                        </td>

                        <td>
                            <label id="course_name" name="course_name">SEN</label>
                        </td>

                    </tr>
                    <tr>
                        <td>
                            <b>Head Instructor Name</b>
                        </td>

                        <td>
                            <label id="course_iname" name="course_iname">Asim banerjee</label>
                        </td>

                    </tr>
                    <tr>
                        <td>
                            <b> Other Instructors</b>
                        </td>

                        <td>
                            <label id="course_ta_name" name="course_ta_name">TA</label>
                        </td>

                    </tr>
                    <tr>
                        <td>
                            <b> Course Duration</b>
                        </td>

                        <td>
                            <label id="course_time" name="course_time">Summer 2015</label>
                        </td>

                    </tr>

                </table>                
            </div>

        </div><!-- /.row -->

        <div class="row" id="team" style="display: none">

            <!-- Modal -->
            <div class="modal fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" style="margin-top: 7%">
                <div class="modal-dialog" role="document">
                    <div class="modal-content" style="height: 356px;">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                            <h4 class="modal-title" id="myModalLabel">Generate Teams</h4>
                        </div>
                        <div class="modal-body">
                            <form method="post" >
                                <table>
                                    <tr>
                                        <td><label> Course Name</label></td>
                                        <td><input type="text" value="Course Name" name="team_course_name" id="team_course_name"></td>
                                    </tr>
                                    <tr>
                                        <td><label> Number Criteria </label></td>
                                        <td>
                                            <input type="radio" name="Criteria" value="members" id="members">Number Of Member
                                            <input type="radio" name="Criteria" value="teams" id="teams">Number Of Teams
                                        </td>
                                    </tr>
                                    <tr style="display: none" id="number1">
                                        <td><label name="team_number" id="team_number"> Criteria </label></td>
                                        <td>
                                            <input type="text" value="Number" id="number_of_teams" id="number_of_teams">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td><label> Criteria Method </label></td>
                                        <td>
                                            <input type="radio" name="Criteria_Method" value="CPI" checked="checked" id="cpi">CPI
                                            <input type="radio" name="Criteria_Method" value="Random" id="random">Random
                                        </td>
                                    </tr>
                                </table>
                            </form>
                        </div>
                        <div class="modal-footer" style="float: left;margin-left: 31%;padding-top: 7%;">
                            <button type="button" class="btn btn-default" data-dismiss="modal" id="team_close" name="team_close">Close</button>
                            <button class="btn btn-primary" data-toggle="modal"  id="call_generated_teams" data-target="#myModal3">Create Team</button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal fade" id="myModal3" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" style="margin-top: 7%">
                <div class="modal-dialog" role="document">
                    <div class="modal-content" style="height: 380px;">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                            <h4 class="modal-title" id="myModalLabel">Generated Teams</h4>
                        </div>
                        <div class="modal-body">
                            <form method="post" >
                                <div class="box box-solid box-info" style="width:15%;">
                                    <div class="box-header">
                                        <h3 class="box-title">Team1</h3>
                                    </div><!-- /.box-header -->
                                    <div class="member_list">
                                        <div class="list-group-item" id="memb1" name="memb1">
                                            A
                                        </div>
                                        <div class="list-group-item" id="memb2" name="memb2">
                                            B
                                        </div>
                                        <div class="list-group-item" id="memb3" name="memb3">
                                            C
                                        </div>
                                        <div class="list-group-item" id="memb4" name="memb4">
                                            D
                                        </div>
                                        <div class="list-group-item" id="memb5" name="memb5">
                                            E
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                        <div class="modal-footer" style="float: left;margin-left: 31%;padding-top: 7%;">
                            <button type="button" class="btn btn-default" data-dismiss="modal" id="generated_teams_close" name="generated_teams_close">Close</button>
                            <button type="submit" class="btn btn-primary" id="generated_teams_submit" name="generated_teams_submit">Create Team</button>
                        </div>
                    </div>
                </div>
            </div>

            <h3 class="box-title" style="margin-left: 1%;">TEAMS </h3>
            <br/>
            <button class="btn btn-default pull-right" data-toggle="modal" id="create_team" name="create_team" data-target="#myModal2"  style="margin-right: 2%;width: 12%; background-color: cornflowerblue;">Generate TEAM</button>
            
        </div>
        <!-- Main row -->
    </section><!-- /.content -->
</div><!-- /.content-wrapper -->
<%@include file="footer.jsp" %>
<div class='control-sidebar-bg'></div>
</div><!-- ./wrapper -->
<script>
    $("#call_generated_teams").click(function () {
        
        $("#myModal3").show();
        $("#myModal2").hide();
        return false;
    });
</script>
<script type='text/javascript'>
    $('input:radio[name="Criteria"]').change(function () {

        if ($(this).val() === 'members') {
            $("#number1").show();
            $("#team_number").text("Number of Members");
        }
        else {
            $("#number1").show();
            $("#team_number").text("Number of Teams");
        }
    });
</script>
<style>
    .member_list
    {
        height:120px; 
        width:auto; 
        overflow:hidden; 
        overflow-y:scroll;
    }
</style>

<script>
    $("#currentyear").click(function () {
        $("#courseinfo").show();
        $("#team").hide();
        $("#li1").addClass("active");
        $("#li2").removeClass("active");
    });
    $("#pastyear").click(function () {
        $("#courseinfo").hide();
        $("#team").show();
        $("#li2").addClass("active");
        $("#li1").removeClass("active");
    });
</script>

</body>
</html>