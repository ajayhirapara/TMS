<script>
    $(document).ready(function() {
        var str = '<%= request.getParameter("myVar") %>';
        //alert(str);
        $("#" + str).addClass("active");
    });
</script>
<script src="../plugins/Login/login.js" type="text/javascript"></script>
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
                <a href="My_Courses.jsp">
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


<div id="msg" class="rv-vanilla-modal">
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
            <input type='button' value="Send" class="btn pull-right" style="padding: 4.9px 14px;background-color: #3c8dbc;margin-top: 1%; margin: 1%;border-color: #3c8dbc; color: #ffffff">
        </div>
    </div>
</div>

<script>
    document.addEventListener('DOMContentLoaded', function() {
        /* global RvVanillaModal */
        'use strict';
        var modal = new RvVanillaModal({
            showOverlay: true
        });

        // each method
        modal.each(function(element) {
            var target = element.getAttribute('data-rv-vanilla-modal');
            var targetElement = document.querySelector(target);
            var closeBtn = targetElement.querySelector(modal.settings.closeSelector);

            // close click listerner
            closeBtn.addEventListener('click', function(event) {
                event.preventDefault();
                modal.close(targetElement);
            });

            // open click listerner
            element.addEventListener('click', function(event) {
                event.preventDefault();
                modal.open(targetElement);
            });
        });
    }, false);
</script>
<link href="../dist/css/Popup/styles.css" rel="stylesheet" type="text/css"/>
<script src="../dist/js/Popup/rv-vanilla-modal.js" type="text/javascript"></script>
