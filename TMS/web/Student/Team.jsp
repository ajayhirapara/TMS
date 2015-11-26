<%@include file="header.jsp" %>
<script src="http://kendo.cdn.telerik.com/2015.3.1111/js/kendo.all.min.js"></script>
<script>
    $(document).ready(function () {
        // create DateTimePicker from input HTML element
        $(".datetimepicker").kendoDateTimePicker({
            value: " Deadline"
        });
   });
</script>
<style type="text/css">

    #profilepic #icon   
    {
        display: block;
        margin: 0px auto;
    }                
    #icon:hover{
        display:none;
        cursor:pointer;
    }
    #profilepic:hover #icon
    {
        cursor: pointer;
        opacity:0.6;                                                                           
        display: none;
    }
    #profilepic #iconbtn
    {
        display: none;
        margin: 0px auto;
    }
    #profilepic:hover #iconbtn
    {
        cursor: pointer;
        display: block;
        background-image: url('../dist/img/change_pic.png');
        background-size: 60% 60%;
        background-position: 50% 50%;
        background-repeat: no-repeat;
        background-color: white;
    }
    #fileid
    {
        background-color: white;
        background-image: url('../dist/img/boxed-bg.png');
    }
    #iconbtn input[type="file"]{
        z-index: 999;
        line-height: 0;
        font-size: 50px;
        position: absolute;
        opacity: 0;
        filter: alpha(opacity = 0);-ms-filter: "alpha(opacity=0)";
        cursor: pointer;
        _cursor: hand;
        margin: 0;
        padding:0;
        left:0;
    }
</style>
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
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>My Team
        </h1>
        <ol class="breadcrumb">
            <li><a href="../index.jsp"><i class="fa fa-dashboard"></i> Home</a></li>
            <li class="active">My Teams</li>
        </ol>
    </section>
    <section class="content middle" style="min-height: 530px;">
        <div class="row">
            <div class="col-md-12">
                <!-- Custom Tabs -->
                <div class="nav-tabs-custom">
                    <ul class="nav nav-tabs">
                        <li class="active"><a href="#tab_1" data-toggle="tab">My Team</a></li>
                        <li><a href="#tab_2" data-toggle="tab">Task</a></li>
                        <li><a href="#tab_3" data-toggle="tab">Poll</a></li>
                        <li><a href="#tab_4" data-toggle="tab">Meetings</a></li>
                    </ul>
                    <div class="tab-content">
                        <div class="tab-pane active" id="tab_1">
                            <div class="box-primary">
                                <div class="box-header">
                                    <table>
                                        <tr>
                                            <td> 
                                                <div id="profilepic">
                                                    <img id="icon" src="../dist/img/user2-160x160.jpg" class="img-circle pull-right" tooltip="change image" alt="User Image" style="height: 50px;width: 50px;" />
                                                    <div id="iconbtn" src="../dist/img/boxed-bg.png" class="img-circle pull-right"  style="height: 50px;width: 50px;position: relative;" > 
                                                        <input id="fileid" name="image" type='file' onchange="readURL(this);" accept="image/gif, image/jpeg, image/png">
                                                    </div>
                                                </div>
                                            </td>
                                            <td>
                                                <h3 class="box-title" id='team_name' name='team_name'>SEN Team 5&nbsp;&nbsp;<a class="tool fa fa-pencil" onclick="editname()" style="color:black"></a></h3>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <input type="text" class="text-primary" placeholder="New Name" id="edit_tname" name="edit_team_name" style="display: none;height:30px;"/>
                                            </td>
                                            <td>
                                                <input type="button" class="btn btn-success" value="Update Name" id="update_tname" name="update_tname" style="display: none;height:30px;"/> 
                                            </td>
                                        </tr>
                                    </table>
                                </div><!-- /.box-header -->

                                <div class="box-body">

                                    <ul class="todo-list">
                                        <small class="label label-primary" style="font-size: 1em;"><i class="fa"></i> Leader</small>
                                        <li>                                       
                                            <!-- todo text -->
                                            <span class="text" id='leader_name' name='leader_name' >Chintan Tundia</span>

                                            <div style="float: right">    
                                                <a data-rv-vanilla-modal="#mail" id="L1" onclick="getname(this);" class="btn  btn-flat"><i class="fa fa-envelope-o"></i></a>
                                            </div>
                                        </li>
                                        <small class="label label-primary" style="font-size: 1em;"><i class="fa"></i> Members</small>
                                        <li>                                       
                                            <!-- todo text -->
                                            <span class="text" id='member1' name='member1'>Chirag Shah</span>
                                            <div style="float: right">    
                                                <a data-rv-vanilla-modal="#mail" id="1" onclick="getname(this);" class="btn  btn-flat"><i class="fa fa-envelope-o"></i></a>
                                            </div>
                                        </li>
                                        <li>
                                            <!-- todo text -->
                                            <span class="text" id='member2' name='member2'>Ajay Hirapara</span>
                                            <div style="float: right">    
                                                <a data-rv-vanilla-modal="#mail" id="2" onclick="getname(this);" class="btn  btn-flat"><i class="fa fa-envelope-o"></i></a>
                                            </div>
                                        </li>
                                        <li>                                       
                                            <!-- todo text -->
                                            <span class="text" id='member3' name='member3'>Shubham Agrawal</span>
                                            <div style="float: right">    
                                                <a data-rv-vanilla-modal="#mail" id="3" onclick="getname(this);" class="btn  btn-flat"><i class="fa fa-envelope-o"></i></a>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane" id="tab_2">
                            <div class="box-primary">
                                <div class="box-header">
                                    <i class="ion ion-clipboard"></i>
                                    <h3 class="box-title"><a href="#">Task Details</a></h3>
                                    <span class="navbar-right" style="padding-right:15px;color:gray;font: 18px arial, sans-serif;">
                                </div><!-- /.box-header -->
                                <div class="box-body">
                                    <div id="example2_wrapper" class="dataTables_wrapper form-inline dt-bootstrap no-footer"><div class="row"><div class="col-sm-6"></div><div class="col-sm-6"></div></div><div class="row"><div class="col-sm-12"><table id="example2" class="table table-bordered table-hover dataTable no-footer" role="grid" aria-describedby="example2_info">
                                                    <thead>
                                                        <tr role="row"><th class="sorting_asc" tabindex="0" aria-controls="example2" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Sr. Number: activate to sort column descending">Sr. Number</th><th class="sorting" tabindex="0" aria-controls="example2" rowspan="1" colspan="1" aria-label="Assigned Date: activate to sort column ascending">Assigned Date</th><th class="sorting" tabindex="0" aria-controls="example2" rowspan="1" colspan="1" aria-label="Subject: activate to sort column ascending">Subject</th><th class="sorting" tabindex="0" aria-controls="example2" rowspan="1" colspan="1" aria-label="Submission Date: activate to sort column ascending">Submission Date</th><th class="sorting" tabindex="0" aria-controls="example2" rowspan="1" colspan="1" aria-label="Task Type: activate to sort column ascending">Task Type</th><th class="sorting" tabindex="0" aria-controls="example2" rowspan="1" colspan="1" aria-label="Performer Type: activate to sort column ascending">Performer Type</th><th class="sorting" tabindex="0" aria-controls="example2" rowspan="1" colspan="1" aria-label="Details: activate to sort column ascending">Details</th></tr>
                                                    </thead>
                                                    <tbody>
                                                        <tr role="row" class="odd">
                                                            <td class="sorting_1">1</td>  
                                                            <td>12/7/15</td>
                                                            <td>SRS</td>
                                                            <td>14/7/15</td>
                                                            <td>Assignment</td>
                                                            <td>Team</td>
                                                            <td><a href="Task_details.jsp">Click Here</a> </td>
                                                        </tr><tr role="row" class="even">
                                                            <td class="sorting_1">2</td>  
                                                            <td>16/7/15</td>
                                                            <td>COCOMO</td>
                                                            <td>20/7/15</td>
                                                            <td>Presentation</td>
                                                            <td>Team</td>
                                                            <td><a href="Task_details.jsp">Click Here</a> </td>
                                                        </tr><tr role="row" class="odd">
                                                            <td class="sorting_1">3</td>  
                                                            <td>24/7/15</td>
                                                            <td>CMM</td>
                                                            <td>14/8/15</td>
                                                            <td>Assignment</td>
                                                            <td>Individual</td>
                                                            <td><a href="Task_details.jsp">Click Here</a> </td>
                                                        </tr></tbody>
                                                </table></div></div><div class="row"><div class="col-sm-5"><div class="dataTables_info" id="example2_info" role="status" aria-live="polite">Showing 1 to 3 of 3 entries</div></div><div class="col-sm-7"><div class="dataTables_paginate paging_simple_numbers" id="example2_paginate"><ul class="pagination"><li class="paginate_button previous disabled" id="example2_previous"><a href="#" aria-controls="example2" data-dt-idx="0" tabindex="0">Previous</a></li><li class="paginate_button active"><a href="#" aria-controls="example2" data-dt-idx="1" tabindex="0">1</a></li><li class="paginate_button next disabled" id="example2_next"><a href="#" aria-controls="example2" data-dt-idx="2" tabindex="0">Next</a></li></ul></div></div></div></div>
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane" id="tab_3">
                            <div class="box-primary">
                                <div class="box-header">
                                    <i class="ion ion-clipboard"></i>
                                    <h3 class="box-title"><a href="#">Voting Details</a></h3>
                                    <span class="navbar-right" style="padding-right:15px;color:gray;font: 18px arial, sans-serif;">
                                        <a data-rv-vanilla-modal="#Newpoll" class="button btn btn-sm btn-info btn-flat">Create New Poll</a></span>
                                </div><!-- /.box-header -->
                                <div class="box-body">
                                    <div class="table-responsive">
                                        <table class="table no-margin">
                                            <thead>
                                                <tr>
                                                    <th>Start Date</th>
                                                    <th>End Date</th>
                                                    <th>Subject</th>
                                                    <th>Result</th>
                                                    <th>Options</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>01/10/2014</td>
                                                    <td>10/10/2015</td>
                                                    <td id="Title1">Choose Team Leader</td>
                                                    <td><span class="label label-waring">Pending</span></td>
                                                    <td><input id="modal_trigger_Vote" data-rv-vanilla-modal="#Newvote" type="submit" name="Vote" value="Vote" class="btn btn-sm btn-info btn-flat"/></td>
                                                </tr>
                                                <tr>
                                                    <td>01/10/2014</td>
                                                    <td>10/10/2015</td>
                                                    <td id="Title2">Choose Team Leader</td>
                                                    <td><span class="label label-waring">Pending</span></td>
                                                    <td><input id="modal_trigger_Vote" data-rv-vanilla-modal="#Newvote" type="submit" name="Vote" value="Vote" class="btn btn-sm btn-info btn-flat"/></td>
                                                </tr>
                                                <tr>
                                                    <td>01/10/2014</td>
                                                    <td>10/10/2015</td>
                                                    <td>Choose Team Leader</td>
                                                    <td><span class="label label-waring">Pending</span></td>
                                                    <td><input id="modal_trigger_Vote" data-rv-vanilla-modal="#Newvote" type="submit" name="Vote" value="Vote" class="btn btn-sm btn-info btn-flat"/></td>
                                                </tr>
                                                <tr>
                                                    <td>01/10/2014</td>
                                                    <td>10/10/2015</td>
                                                    <td>Choose Team Leader</td>
                                                    <td><span class="label label-waring">Pending</span></td>
                                                    <td><input id="modal_trigger_Vote" data-rv-vanilla-modal="#Newvote" type="submit" name="Vote" value="Vote" class="btn btn-sm btn-info btn-flat"/></td>
                                                </tr>
                                                <tr>
                                                    <td>01/10/2014</td>
                                                    <td>10/10/2015</td>
                                                    <td>Choose Team Leader</td>
                                                    <td><span class="label label-waring">Pending</span></td>
                                                    <td><input id="modal_trigger_Vote" data-rv-vanilla-modal="#Newvote" type="submit" name="Vote" value="Vote" class="btn btn-sm btn-info btn-flat"/></td>                                                        </tr>
                                                <tr>
                                                    <td>01/10/2014</td>
                                                    <td>10/10/2015</td>
                                                    <td>Choose Team Leader</td>
                                                    <td><span class="label label-waring">Pending</span></td>
                                                    <td><input id="modal_trigger_Vote" data-rv-vanilla-modal="#Newvote" type="submit" name="Vote" value="Vote" class="btn btn-sm btn-info btn-flat"/></td>
                                                </tr>
                                                <tr>
                                                    <td>01/10/2014</td>
                                                    <td>10/10/2015</td>
                                                    <td>Choose Team Leader</td>
                                                    <td><span class="label label-waring">Pending</span></td>
                                                    <td><input id="modal_trigger_Vote" data-rv-vanilla-modal="#Newvote" type="submit" name="Vote" value="Vote" class="btn btn-sm btn-info btn-flat"/></td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div><!-- /.table-responsive -->
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane" id="tab_4">
                            <div class="box-primary">
                                <div class="box-header">
                                    <i class="ion ion-clipboard"></i>
                                    <h3 class="box-title"><a href="#">Meeting Details</a></h3>
                                    <span class="navbar-right" style="padding-right:15px;color:gray;font: 18px arial, sans-serif;">
                                        <a data-rv-vanilla-modal="#NewMeet" class="button btn btn-sm btn-info btn-flat">Add Meeting</a></span>
                                </div><!-- /.box-header -->
                                <div class="box-body">
                                    <div class="table-responsive">
                                        <table class="table no-margin">
                                            <thead>
                                                <tr>
                                                    <th>Title</th>
                                                    <th>Venue</th>
                                                    <th>Agenda</th>
                                                    <th>Date & Time</th>
                                                    <th>Options</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>Title 1</td>
                                                    <td>Venue 1</td>
                                                    <td>List Of Agenda</td>
                                                    <td>Data & Time</td>
                                                    <td><input id="modal_trigger_Vote" data-rv-vanilla-modal="#NewMOM" type="submit" name="Vote" value="Miniutes Of Meeting" class="btn btn-sm btn-info btn-flat"/></td>
                                                </tr>
                                                <tr>
                                                    <td>Title 2</td>
                                                    <td>Venue 2</td>
                                                    <td>List Of Agenda</td>
                                                    <td>Data & Time</td>
                                                    <td><input id="modal_trigger_Vote" data-rv-vanilla-modal="#NewMOM" type="submit" name="Vote" value="Miniutes Of Meeting" class="btn btn-sm btn-info btn-flat"/></td>
                                                </tr>
                                                <tr>
                                                    <td>Title 3</td>
                                                    <td>Venue 3</td>
                                                    <td>List Of Agenda</td>
                                                    <td>Data & Time</td>
                                                    <td><input id="modal_trigger_Vote" data-rv-vanilla-modal="#NewMOM" type="submit" name="Vote" value="Miniutes Of Meeting" class="btn btn-sm btn-info btn-flat"/></td>
                                                </tr>
                                                <tr>
                                                    <td>Title 4</td>
                                                    <td>Venue 4</td>
                                                    <td>List Of Agenda</td>
                                                    <td>Data & Time</td>
                                                    <td><input id="modal_trigger_Vote" data-rv-vanilla-modal="#NewMOM" type="submit" name="Vote" value="Miniutes Of Meeting" class="btn btn-sm btn-info btn-flat"/></td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div><!-- /.table-responsive -->
                                </div>
                            </div>
                        </div>
                    </div>
                </div><!-- nav-tabs-custom -->
            </div><!-- /.col -->
            <!-- /.col -->
        </div> <!-- /.row -->
    </section>
</div>
</body>
<div id="Newpoll" class="rv-vanilla-modal">
        <div class="rv-vanilla-modal-header group">
            <button class="rv-vanilla-modal-close"><span class="text">×</span></button>
            <h2 class="rv-vanilla-modal-title">Create Poll</h2>
        </div>
        <div class="rv-vanilla-modal-body" style="max-height: 470px;">
            <form action="#" method="post" id="register" class="styled">
                <!-- Input addon -->
                <div class="box-body">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="fa fa-fw fa-archive"></i></span>
                        <input type="text" class="form-control" placeholder="Title">
                    </div>
                    <br/>
                    <div class="input-group">
                        <span class="input-group-addon"><i class="fa fa-fw fa-info-circle"></i></span>
                        <textarea class="form-control" rows="3" placeholder="Enter ..."></textarea>
                    </div>
                    <br>
                    <div class="form-group">
                        <div class="input-group col-lg-12">
                            <div class="demo-section k-content">
                               <input class="datetimepicker form-control" id="datetimepicker_poll" maxlength=19 />
                            </div><!-- <input type="time" class="form-control pull-right" id="reservationtime"/> -->
                        </div><!-- /.input group -->
                    </div>
                    <br>
                    <div id='TextBoxesGroup'>
                        <div id="TextBoxDiv1"  class="input-group">
                            <span class="input-group-addon"><i class="fa fa-fw fa-list-ol"></i></span>
                            <input type='textbox' id='textbox1' class="form-control" placeholder="Option 1"/>
                        </div>
                    </div>
                    <input type='button' id='addButton' value="+" class="btn pull-left" style="padding: 4.9px 14px;background-color: #3c8dbc;margin-top: 1%; margin-right: 1%;border-color: #3c8dbc; color: #ffffff">
                    <input type='button' value='-' id='removeButton' class="btn pull-left" style="padding: 4.9px 14px;background-color: #dd4b39;margin-top: 1%; margin-right: 1%;border-color: #dd4b39; color: #ffffff">
                    <br/>
                    <br/>
                    <br/>
                    <div class="input-group">
                        <span class="input-group-addon"><i class="fa fa-fw fa-check-square-o"></i></span>
                        <input type="number" name="select_allow" class="form-control" min="1" max="3" placeholder="Number of Preferences">
                    </div>
                    <div class="box-solid">
                        <input type='button' value="Create Poll" class="btn pull-right" style="padding: 4.9px 14px;background-color: #3c8dbc;margin-top: 1%; margin: 1%;border-color: #3c8dbc; color: #ffffff">
                    </div>
                </div><!-- /.box-body -->
            </form>
        </div>
    </div>
    <div id="NewMeet" class="rv-vanilla-modal">
        <div class="rv-vanilla-modal-header group">
            <button class="rv-vanilla-modal-close"><span class="text">×</span></button>
            <h2 class="rv-vanilla-modal-title">Add Meeting</h2>
        </div>
        <div class="rv-vanilla-modal-body">
            <form action="#" method="post" id="register" class="styled">
                <!-- Input addon -->
                <div class="box-body">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="fa fa-fw fa-archive"></i></span>
                        <input type="text" class="form-control" placeholder="Title">
                    </div>
                    <br/>
                    <div class="input-group">
                        <span class="input-group-addon"><i class="fa fa-fw fa-archive"></i></span>
                        <input type="text" class="form-control" placeholder="Venue">
                    </div>
                    <br>
                    <div class="input-group">
                        <span class="input-group-addon"><i class="fa fa-fw fa-info-circle"></i></span>
                        <textarea class="form-control" rows="3" placeholder="Enter Agenda ..."></textarea>
                    </div>
                    <br>
                       <div class="form-group">
                        <div class="input-group col-lg-12">
                            <div class="demo-section k-content">
                                <input class="datetimepicker form-control" id="datetimepicker_poll" maxlength=19 />
                            </div><!-- <input type="time" class="form-control pull-right" id="reservationtime"/> -->
                        </div><!-- /.input group -->
                    </div>
                    <br>
                    <!-- /.input group -->
                    <br>
                    <div class="box-solid">
                        <input type='button' value="Add" class="btn pull-right" style="padding: 4.9px 14px;background-color: #3c8dbc;margin-top: 1%; margin: 1%;border-color: #3c8dbc; color: #ffffff">
                    </div>
                </div><!-- /.box-body -->
            </form>
        </div>
    </div>
    <div id="NewMOM" class="rv-vanilla-modal">
        <div class="rv-vanilla-modal-header group">
            <button class="rv-vanilla-modal-close"><span class="text">×</span></button>
            <h2 class="rv-vanilla-modal-title">Add Minutes of Meeting</h2>
        </div>
        <div class="rv-vanilla-modal-body">
            <div class='box-primary'>
                <div class='box-header'>
                    <h3 class='box-title'>Minutes of Meeting</h3>
                    <!-- tools box -->
                </div><!-- /.box-header -->
                <div class='box-body pad'>
                    <form>
                        <textarea class="textarea" placeholder="Place some text here" style="width: 100%; height: 200px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;"></textarea>
                    </form>
                </div>
            </div>       
            <div class="box-solid">
                <input type='button' value="ADD M.O.M" class="btn pull-right" style="padding: 4.9px 14px;background-color: #3c8dbc;margin-top: 1%; margin: 1%;border-color: #3c8dbc; color: #ffffff">
            </div>
        </div>
    </div>
    <div id="Newvote" class="rv-vanilla-modal">
        <div class="rv-vanilla-modal-header group">
            <button class="rv-vanilla-modal-close"><span class="text">×</span></button>
            <h2 class="rv-vanilla-modal-title">Vote: <median id="voteSubject">Title</median></h2>
        </div>
        <div class="rv-vanilla-modal-body" style="max-height: 450px;">
            <form action="#" method="post" id="register" class="styled">
                <!-- Input addon -->
                <div class="box-body">
                    <div style="font-size: 14px;"><b>Description:</b>
                        <p id="description">new vote for .....</p>
                    </div>

                    <div style="font-size: 14px;"><b>Give Preferences:</b></div>
                    <div class="box-group" id="accordion">
                        <!-- we are adding the .panel class so bootstrap.js collapse plugin detects it -->
                        <div class="panel box">
                            <div class="box-header with-border">
                                <h4 class="box-title">
                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne">
                                        Preference #1
                                    </a>
                                </h4>
                            </div>
                            <div id="collapseOne" class="panel-collapse collapse in">
                                <div class="panel-body box-body box-group" style="line-height: 30%;">
                                    <input type="radio" name="vote_first" value="A">A<br>
                                    <input type="radio" name="vote_first" value="B">B<br>
                                    <input type="radio" name="vote_first" value="A">C<br>
                                    <input type="radio" name="vote_first" value="B">D<br>
                                    <input type="radio" name="vote_first" value="A">E<br>
                                    <input type="radio" name="vote_first" value="B">F<br>
                                    <input type="radio" name="vote_first" value="A">G<br>
                                    <input type="radio" name="vote_first" value="B">H<br>
                                    <input type="radio" name="vote_first" value="A">I<br>
                                    <input type="radio" name="vote_first" value="B">J<br>
                                    <input type="radio" name="vote_first" value="A">K<br>
                                    <input type="radio" name="vote_first" value="B">L
                                </div>
                            </div>
                        </div>
                        <div class="panel box">
                            <div class="box-header with-border">
                                <h4 class="box-title">
                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo">
                                        Preference #2
                                    </a>
                                </h4>
                            </div>
                            <div id="collapseTwo" class="panel-collapse collapse">
                                <div id="collapseOne" class="panel-collapse collapse in">
                                    <div class="panel-body box-body box-group" style="line-height: 30%;">
                                        <input type="radio" name="vote_second" value="A">A<br>
                                        <input type="radio" name="vote_second" value="B">B<br>
                                        <input type="radio" name="vote_second" value="B">c
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="panel box">
                            <div class="box-header with-border">
                                <h4 class="box-title">
                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapseThree">
                                        Preference #3
                                    </a>
                                </h4>
                            </div>
                            <div id="collapseThree" class="panel-collapse collapse">
                                <div id="collapseOne" class="panel-collapse collapse in">
                                    <div class="panel-body box-body box-group" style="line-height: 30%;">
                                        <input type="radio" name="vote_third" value="A">A<br>
                                        <input type="radio" name="vote_third" value="B">B<br>
                                        <input type="radio" name="vote_third" value="A">C
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="box-solid">
                        <input type='button' value="Vote" class="btn pull-right" style="padding: 4.9px 14px;background-color: #3c8dbc;margin-top: 1%; margin: 1%;border-color: #3c8dbc; color: #ffffff">
                    </div>
                </div><!-- /.box-body -->
            </form>
        </div>
    </div>
    <div id="mail" class="rv-vanilla-modal">
        <div class="rv-vanilla-modal-header group">
            <button class="rv-vanilla-modal-close"><span class="text">×</span></button>
            <h2 class="rv-vanilla-modal-title">Send Message</h2>
        </div>
        <div class="rv-vanilla-modal-body">
            <div class="input-group">
                <span class="input-group-addon" style="width:80px;">To</span>
                <input type="text" class="form-control" placeholder="Receiver" style="width:500px;" id="to">
            </div>
            <br/>
            <div class="input-group">
                <span class="input-group-addon" style="width:80px;">Subject</span>
                <input type="text" class="form-control" placeholder="Subject" style="width:500px;" id="sub">
            </div>
            <br/>
            <div class="input-group">
                <span class="input-group-addon" style="width:80px;">Message</span>
                <textarea class="form-control" rows="2" placeholder="Body" style="width:500px;" id="body"></textarea>
            </div>
            <br/>
            <div class="box-solid">
                <input type='button' value="Send Mail" class="btn pull-right" style="padding: 4.9px 14px;background-color: #3c8dbc;margin-top: 1%; margin: 1%;border-color: #3c8dbc; color: #ffffff">
            </div>
        </div>
    </div>
<%@include file="footer.jsp" %>
<script type="text/javascript">
    var counter = 2;
    $("#addButton").click(function () {

        if (counter > 50) {
            alert("Only 50 Options allow");
            return false;
        }
        var newTextBoxDiv = $(document.createElement('div'))
                .attr("id", 'TextBoxDiv' + counter).attr("class", "input-group").attr("style", "margin-bottom: 0.3%;");
        newTextBoxDiv.after().html('<span class="input-group-addon"><i class="fa fa-fw fa-list-ol"></i></span><input type="text" name="textbox' + counter +
                '" id="textbox' + counter + '" class="form-control" placeholder="Option ' + counter + '" ><br>');
        newTextBoxDiv.appendTo("#TextBoxesGroup");
        counter++;
    });

    $("#removeButton").click(function () {
        if (counter == 1) {
            alert("No more textbox to remove");
            return false;
        }

        counter--;

        $("#TextBoxDiv" + counter).remove();

    });

    $("#getButtonValue").click(function () {

        var msg = '';
        for (i = 1; i < counter; i++) {
            msg += "\n Textbox #" + i + " : " + $('#textbox' + i).val();
        }
        alert(msg);
    });
</script>
<script>
    document.addEventListener('DOMContentLoaded', function () {
        /* global RvVanillaModal */
        'use strict';
        var modal = new RvVanillaModal({
            showOverlay: true
        });

        // each method
        modal.each(function (element) {
            var target = element.getAttribute('data-rv-vanilla-modal');
            var targetElement = document.querySelector(target);
            var closeBtn = targetElement.querySelector(modal.settings.closeSelector);

            // close click listerner
            closeBtn.addEventListener('click', function (event) {
                event.preventDefault();
                modal.close(targetElement);
            });

            // open click listerner
            element.addEventListener('click', function (event) {
                event.preventDefault();
                modal.open(targetElement);
            });
        });
    }, false);
</script>
<script type="text/javascript">
    $(function () {
        //Datemask dd/mm/yyyy
        $("#datemask").inputmask("dd/mm/yyyy", {"placeholder": "dd/mm/yyyy"});
        //Datemask2 mm/dd/yyyy
        $("#datemask2").inputmask("mm/dd/yyyy", {"placeholder": "mm/dd/yyyy"});
        //Money Euro
        $("[data-mask]").inputmask();

        //Date range picker
        $('#reservation').daterangepicker();
        //Date range picker with time picker
        $('#reservationtime').daterangepicker({timePicker: true, timePickerIncrement: 30, format: 'MM/DD/YYYY h:mm A'});
        //Date range as a button
        $('#daterange-btn').daterangepicker(
                {
                    ranges: {
                        'Today': [moment(), moment()],
                        'Yesterday': [moment().subtract('days', 1), moment().subtract('days', 1)],
                        'Last 7 Days': [moment().subtract('days', 6), moment()],
                        'Last 30 Days': [moment().subtract('days', 29), moment()],
                        'This Month': [moment().startOf('month'), moment().endOf('month')],
                        'Last Month': [moment().subtract('month', 1).startOf('month'), moment().subtract('month', 1).endOf('month')]
                    },
                    startDate: moment().subtract('days', 29),
                    endDate: moment()
                },
        function (start, end) {
            $('#reportrange span').html(start.format('MMMM D, YYYY') + ' - ' + end.format('MMMM D, YYYY'));
        }
        );

        //iCheck for checkbox and radio inputs
        $('input[type="checkbox"].minimal, input[type="radio"].minimal').iCheck({
            checkboxClass: 'icheckbox_minimal-blue',
            radioClass: 'iradio_minimal-blue'
        });
        //Red color scheme for iCheck
        $('input[type="checkbox"].minimal-red, input[type="radio"].minimal-red').iCheck({
            checkboxClass: 'icheckbox_minimal-red',
            radioClass: 'iradio_minimal-red'
        });
        //Flat red color scheme for iCheck
        $('input[type="checkbox"].flat-red, input[type="radio"].flat-red').iCheck({
            checkboxClass: 'icheckbox_flat-green',
            radioClass: 'iradio_flat-green'
        });

        //Colorpicker
        $(".my-colorpicker1").colorpicker();
        //color picker with addon
        $(".my-colorpicker2").colorpicker();

        //Timepicker
        $(".timepicker").timepicker({
            showInputs: false
        });
    });
</script>
<script>
    function editname() {
        document.getElementById("team_name").style.visibility = "hidden";
        document.getElementById("edit_tname").style.display = 'block';
        document.getElementById("update_tname").style.display = 'block';

    }
</script>
<script>
    function readURL(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();

            reader.onload = function (e) {
                $('#icon')
                        .attr('src', e.target.result)
                        .width(50)
                        .height(50);
                $('#smallicon')
                        .attr('src', e.target.result)

            };

            reader.readAsDataURL(input.files[0]);
            // $('#fileid').css("color", "green");


        }
    }
    function getname(nameid) {
        var id = nameid.id;
        if (id === "L1") {
            document.getElementById('to').value = document.getElementById('leader_name').innerHTML;
        }
        else {
            document.getElementById('to').value = document.getElementById('member' + id).innerHTML;
        }
    }
</script>
<link href="../dist/css/Popup/styles.css" rel="stylesheet" type="text/css"/>
<script src="../dist/js/Popup/rv-vanilla-modal.js" type="text/javascript"></script>
