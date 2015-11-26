

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
                                <i class="fa fa-dashboard"></i> <span>Dashboard</span>
                            </a>

                        </li>
                        <li class="treeview">
                            <a href="Courses.jsp">
                                <i class="fa fa-book"></i>
                                <span>My Courses</span>
                            </a>
                        </li>
                        <li class="active treeview">
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
                        Task 
                    </h1>
                    <ol class="breadcrumb">
                        <li><a href="<%= link.link.main%>"><i class="fa fa-dashboard"></i> Home</a></li>
                        <li class="active">Task</li>
                    </ol>
                </section>

                <!-- Main content -->
                <section class="content">
                    <div class="row" style="margin-top: 18px">
                        
                        <!-- Modal for ADD Task Starts -->
                        <div class="rv-vanilla-modal" id="myModal" style="margin-top: 0px">
                            <div class="rv-vanilla-modal-header group">
                                <button class="rv-vanilla-modal-close"><span class="text">×</span></button>
                                <h2 class="rv-vanilla-modal-title">ADD Task</h2>
                            </div>
                            <div class="rv-vanilla-modal-body">
                                <form action="#" method="post" id="add_task" class="styled">
                                    <!-- Input addon -->
                                    <div class="box-body">
                                        <div class="input-group">
                                            <span class="input-group-addon"><i class="fa fa-fw fa-archive"></i></span>
                                            <input type="text" class="form-control" placeholder="Task Title">
                                        </div>
                                        <br/>
                                        <div class="input-group">
                                            <span class="input-group-addon"><i class="fa fa-fw fa-archive"></i></span>
                                            <input type="text" class="form-control" placeholder="Task Description">
                                        </div>
                                        <br/>
                                        <div class="input-group">
                                            <label>Submission Date</label>
                                            <input type="date" class="form-control" id="startDate"> 
                                        </div>
                                        <br/>
                                        <div class="input-group">
                                            <label>Task Type</label>
                                            <br/>
                                            <input type="radio" name="Task" value="Individual" id="performer_1"> Individual
                                            <input type="radio" name="Task" value="Team" id="performer_2"> Team
                                        </div>
                                        
                                        <div id="show-me1" style="display: none; padding-bottom: 10px">
                                            <button  id="first" data-rv-vanilla-modal="#first-popup"  >View Individual Performer</button>
                                        </div>
                                        <div id="show-me2" style="display: none; padding-bottom: 10px">
                                            <button  id="second" data-rv-vanilla-modal="#second-popup" >View Team Performer</button>
                                        </div>
                                        
                                        
                                        
                                        <div class="box-solid">
                                            <input type='button' value="ADD" class="btn btn-primary" onclick="fun()" >
                                        </div>
                                    </div><!-- /.box-body -->
                                </form>
                            </div>
                        </div>
                        <!-- Modal for Add task ends here -->
                        
                        
                        
                        
                        
                        <!-- Modal for Add Individual Performers starts -->
                        <div class="rv-vanilla-modal" id="first-popup" style="margin-top: 0px">
                            <div class="rv-vanilla-modal-header group">
                                <button class="rv-vanilla-modal-close" ><span class="text">×</span></button>
                                <h2 class="rv-vanilla-modal-title">ADD Individual Performer</h2>
                            </div>
                            <div class="rv-vanilla-modal-body">
                                       
                                <div class="dual-list list-left col-md-5">
                                    <div class="well text-right">
                                        <div class="row">
                                            <div class="col-md-10">
                                                <div class="input-group">
                                                    <span class="input-group-addon glyphicon glyphicon-search"></span>
                                                    <input type="text" name="SearchDualList" class="form-control" placeholder="search" />
                                                </div>
                                            </div>
                                            <div class="col-md-2" style="margin-left: -25px;">
                                                <div class="btn-group">
                                                    <a class="btn btn-default selector" title="select all"><i class="glyphicon glyphicon-unchecked"></i></a>
                                                </div>
                                            </div>
                                        </div>
                                        <ul class="list-group">
                                            <li class="list-group-item">Name 1</li>
                                            <li class="list-group-item">Name 2</li>
                                            <li class="list-group-item">Name 3</li>
                                            <li class="list-group-item">Name 4</li>
                                            <li class="list-group-item">Name 5</li>
                                        </ul>
                                    </div>
                                </div>

                                <div class="list-arrows col-md-1 text-center">

                                    <button class="btn btn-default btn-sm move-right">
                                        <span class="glyphicon glyphicon-chevron-right"></span>
                                    </button>
                                    <button class="btn btn-default btn-sm move-left">
                                        <span class="glyphicon glyphicon-chevron-left"></span>
                                    </button>

                                </div>

                                <div class="dual-list list-right col-md-5">
                                    <div class="well">
                                        <div class="row">
                                            <div class="col-md-2">
                                                <div class="btn-group" style="margin-left: -13px;">
                                                    <a class="btn btn-default selector" title="select all"><i class="glyphicon glyphicon-unchecked"></i></a>
                                                </div>
                                            </div>
                                            <div class="col-md-10">
                                                <div class="input-group">
                                                    <input type="text" name="SearchDualList" class="form-control" placeholder="search" />
                                                    <span class="input-group-addon glyphicon glyphicon-search"></span>
                                                </div>
                                            </div>
                                        </div>
                                        <ul class="list-group">
                                        </ul>
                                    </div>
                                </div>
                                <div id="form-control" style="display: block;width: 13%;margin-left: 41%;">
                                    <button class="btn-block btn-primary" id="back" >OK</button>
                                </div>
                            </div>
                                     
                        </div>
                                                   
                        <!-- Modal for Add individual Performers ends -->

                        
                        <!-- Modal for Add Team Performers starts -->
                        <div class="rv-vanilla-modal" id="second-popup" style="margin-top: 0px">
                            <div class="rv-vanilla-modal-header group">
                                <button class="rv-vanilla-modal-close"><span class="text">×</span></button>
                                <h2 class="rv-vanilla-modal-title">ADD Team Performer</h2>
                            </div>
                            <div class="rv-vanilla-modal-body">
                                       
                                <div class="dual-list list-left col-md-5">
                                    <div class="well text-right">
                                        <div class="row">
                                            <div class="col-md-10">
                                                <div class="input-group">
                                                    <span class="input-group-addon glyphicon glyphicon-search"></span>
                                                    <input type="text" name="SearchDualList" class="form-control" placeholder="search" />
                                                </div>
                                            </div>
                                            <div class="col-md-2" style="margin-left: -25px;">
                                                <div class="btn-group">
                                                    <a class="btn btn-default selector" title="select all"><i class="glyphicon glyphicon-unchecked"></i></a>
                                                </div>
                                            </div>
                                        </div>
                                        <ul class="list-group">
                                            <li class="list-group-item">Team 1</li>
                                            <li class="list-group-item">Team 2</li>
                                            <li class="list-group-item">Team 3</li>
                                            <li class="list-group-item">Team 4</li>
                                            <li class="list-group-item">Team 5</li>
                                        </ul>
                                    </div>
                                </div>

                                <div class="list-arrows col-md-1 text-center">

                                    <button class="btn btn-default btn-sm move-right">
                                        <span class="glyphicon glyphicon-chevron-right"></span>
                                    </button>
                                    <button class="btn btn-default btn-sm move-left">
                                        <span class="glyphicon glyphicon-chevron-left"></span>
                                    </button>

                                </div>

                                <div class="dual-list list-right col-md-5">
                                    <div class="well">
                                        <div class="row">
                                            <div class="col-md-2">
                                                <div class="btn-group" style="margin-left: -13px;">
                                                    <a class="btn btn-default selector" title="select all"><i class="glyphicon glyphicon-unchecked"></i></a>
                                                </div>
                                            </div>
                                            <div class="col-md-10">
                                                <div class="input-group">
                                                    <input type="text" name="SearchDualList" class="form-control" placeholder="search" />
                                                    <span class="input-group-addon glyphicon glyphicon-search"></span>
                                                </div>
                                            </div>
                                        </div>
                                        <ul class="list-group">
                                        </ul>
                                    </div>
                                </div>
                                <div id="form-control" style="display: block;width: 13%;margin-left: 41%;">
                                    <button class="btn-block btn-primary" id="back1" >OK</button>
                                </div>
                            </div>
                                     
                        </div>
                          
                        <!-- Modal for Add Team Performers ends -->
                        
                        
                        <div class="col-xs-12">
                            <div class="box box-primary">
                                <div class="box-header">
                                  <h3 class="box-title">Course Name (ID)</h3>
                                  <div class="pull-right">
                                    <input data-rv-vanilla-modal="#myModal" type="submit" value="ADD Task" class="btn btn-primary" />
                                  </div>
                                </div><!-- /.box-header -->
                                <div class="box-body">
                                  <table id="example2" class="table table-bordered table-hover">
                                    <thead>
                                      <tr>
                                        <th>Sr. Number</th>  
                                        <th>Assigned Date</th>
                                        <th>Subject</th>
                                        <th>Submission Date</th>
                                        <th>Task Type</th>
                                        <th>Performer Type</th>
                                        <th>Details</th>
                                      </tr>
                                    </thead>
                                    <tbody>
                                      <tr>
                                        <td>1</td>  
                                        <td>12/7/15</td>
                                        <td>SRS</td>
                                        <td>14/7/15</td>
                                        <td>Assignment</td>
                                        <td>Team</td>
                                        <td><a href="Task_details.jsp">Click Here</a> </td>
                                      </tr>
                                      <tr>
                                        <td>2</td>  
                                        <td>16/7/15</td>
                                        <td>COCOMO</td>
                                        <td>20/7/15</td>
                                        <td>Presentation</td>
                                        <td>Team</td>
                                        <td><a href="Task_details.jsp">Click Here</a> </td>
                                      </tr>
                                      <tr>
                                        <td>3</td>  
                                        <td>24/7/15</td>
                                        <td>CMM</td>
                                        <td>14/8/15</td>
                                        <td>Assignment</td>
                                        <td>Individual</td>
                                        <td><a href="Task_details.jsp">Click Here</a> </td>
                                      </tr>
                                      
                                    </tbody>
                                    
                                  </table>
                                </div><!-- /.box-body -->
                            </div><!-- /.box -->
                        </div><!-- /.col -->
                    </div>    
                </section><!-- /.content -->
            </div><!-- /.content-wrapper -->
            <%@include file="footer.jsp" %>
            <div class='control-sidebar-bg'></div>
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
        <script type="text/javascript">
      $(function () {
        $("#example1").dataTable();
        $('#example2').dataTable({
          "bPaginate": true,
          "bLengthChange": false,
          "bFilter": false,
          "bSort": true,
          "bInfo": true,
          "bAutoWidth": false
        });
      });
    </script>
    <script type="text/javascript">
    function fun()
    {
        var from = $("#startDate").val();
        var to = new Date();

        if(Date.parse(from) < Date.parse(to)){
           alert("Invalid Date Range");
        }
        else{
           document.getElementById("add_task").submit();
        }   
    }
    </script>
    <script>
        $("#performer_1").click(function() {
         $("#show-me1").show();
         $("#show-me2").hide();
         });
        $("#performer_2").click(function() {
         $("#show-me2").show();
         $("#show-me1").hide();
         });
         $("#first").click(function() {
         $("#first-popup").show();
         $("#first-popup").addClass("rv-vanilla-modal rv-vanilla-modal-is-open");
         $("#myModal").hide();
         });
         $("#second").click(function() {
         $("#second-popup").show();
         $("#second-popup").addClass("rv-vanilla-modal rv-vanilla-modal-is-open");
         $("#myModal").hide();
         });
        
         
         $("#back").click(function() {
          $("#myModal").show();   
          $("#myModal").addClass("rv-vanilla-modal rv-vanilla-modal-is-open");
          $("#first-popup").hide();
          $("#first-popup").removeClass("rv-vanilla-modal rv-vanilla-modal-is-open");
         });
         $("#back1").click(function() {
          $("#myModal").show();
          $("#myModal").addClass("rv-vanilla-modal rv-vanilla-modal-is-open");
          $("#second-popup").hide();
          $("#second-popup").removeClass("rv-vanilla-modal rv-vanilla-modal-is-open");
         });
         
        
       
         

    </script>
    <script>
        $(function () {
            $('body').on('click', '.list-group .list-group-item', function () {
                $(this).toggleClass('active');
            });
            $('.list-arrows button').click(function () {
                var $button = $(this), actives = '';
                if ($button.hasClass('move-left')) {
                    actives = $('.list-right ul li.active');
                    actives.clone().appendTo('.list-left ul');
                    actives.remove();
                } else if ($button.hasClass('move-right')) {
                    actives = $('.list-left ul li.active');
                    actives.clone().appendTo('.list-right ul');
                    actives.remove();
                }
            });
            $('.dual-list .selector').click(function () {
                var $checkBox = $(this);
                if (!$checkBox.hasClass('selected')) {
                    $checkBox.addClass('selected').closest('.well').find('ul li:not(.active)').addClass('active');
                    $checkBox.children('i').removeClass('glyphicon-unchecked').addClass('glyphicon-check');
                } else {
                    $checkBox.removeClass('selected').closest('.well').find('ul li.active').removeClass('active');
                    $checkBox.children('i').removeClass('glyphicon-check').addClass('glyphicon-unchecked');
                }
            });
            $('[name="SearchDualList"]').keyup(function (e) {
                var code = e.keyCode || e.which;
                if (code == '9') return;
                if (code == '27') $(this).val(null);
                var $rows = $(this).closest('.dual-list').find('.list-group li');
                var val = $.trim($(this).val()).replace(/ +/g, ' ').toLowerCase();
                $rows.show().filter(function () {
                    var text = $(this).text().replace(/\s+/g, ' ').toLowerCase();
                    return !~text.indexOf(val);
                }).hide();
            });
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

    
    <style>
        .dual-list .list-group {
            margin-top: 8px;
        }
        .list-left li, .list-right li {
            cursor: pointer;
        }
        .list-arrows {
            padding-top: 100px;
        }
            .list-arrows button {
                margin-bottom: 20px;
            }
    </style>


    </body>
</html>