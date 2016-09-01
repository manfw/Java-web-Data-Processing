<%@ page language="java" import="java.util.*" import="java.io.*"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>数据库查询</title>

<link href="bootstrap-3.3.5-dist/css/bootstrap.min.css" rel="stylesheet">
<link href="metisMenu/dist/metisMenu.min.css" rel="stylesheet">
<link href="css/main.css" rel="stylesheet">
<link href="Font-Awesome/css/font-awesome.min.css" rel="stylesheet" />

<script src="js/json2.js"></script>
<script src="js/jquery-2.2.3.min.js"></script>
<script src="bootstrap-3.3.5-dist/js/bootstrap.min.js"></script>
<!-- SpinJS-->
<script src="js/spin-2.1.0/jquery.spin.merge.js"></script>

<!-- metismenu -->
<script src="metisMenu/dist/metisMenu.min.js"></script>
<script src="js/main.js"></script>
<script src="js/default.js" type="text/javascript"></script>

<!--平滑滚动到顶部库-->
<script src="js/scrolltopcontrol.js" type="text/javascript"></script>
<!-- lhgdialog -->
<script src="js/lhgdialog-4.2.0/lhgdialog.min.js"></script>
<!-- dataTables -->
<link href="DataTables/media/css/dataTables.bootstrap.css" rel="stylesheet">
<link rel="stylesheet" href="DataTables/extensions/Responsive/css/responsive.dataTables.min.css">
<script type="text/javascript" src="DataTables/media/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="DataTables/media/js/dataTables.bootstrap.js"></script>

<script src="js/dataquery.js" type="text/javascript"></script>
<script src="js/constant.js" type="text/javascript"></script>

</head>

<body>
<div id="wrapper">
     <nav class="navbar navbar-inverse navbar-fixed-top">
        <div class="container-fluid">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle show pull-left" data-target="sidebar">
                    <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span>
                </button>
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar"
                        aria-expanded="false" aria-controls="navbar">
                    <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.html">Menu</a>
            </div>
            <div id="navbar" class="collapse navbar-collapse">
                <ul class="nav navbar-nav">
                    <li><a href="top1.html">系统简介</a></li>
                    <li><a href="top2.html">相关技术</a></li>
                    <li><a href="top3.html">关于我们</a></li>
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
                           aria-expanded="false"><i class="fa fa-user"></i>&nbsp;<%=session.getAttribute("username")%>&nbsp;<span class="caret"></span></a>
                        <ul class="dropdown-menu" role="menu">
                            <li><a href="PersonalInfo.jsp?username=<%=session.getAttribute("username")%>">个人信息</a></li>
                            <li class="divider"></li>
                            <li><a href="top-right2.html">我的数据</a></li>
                            <li class="divider"></li>
                            <li><a href="top-right3.html"><i class="fa fa-sign-out"></i>&nbsp;退出</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

<nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom:0">
        <div class="navbar-default sidebar" role="navigation">
        	<div class="sidebar-nav navbar-collapse">
        		<ul class="nav" id="side-menu">
        			<li>
                    <a href="javascript:void(0);">数据管理<span class="fa arrow"></span></a>
                    	<ul class="nav nav-second-level">
                    		<li><a href="DataQuery.jsp"><i class="fa fa-search"></i>&nbsp;数据库管理</a></li>
                    		<li><a href="left3.html"><i class="fa fa-pencil"></i>&nbsp;数据入库</a></li>
                        	<li><a href="DataUpload1.jsp"><i class="fa fa-upload"></i>&nbsp;数据上传</a></li>
                        	<li><a href="ListLoadServlet"><i class="fa fa-download"></i>&nbsp;文件下载</a></li>
                    	</ul>
                	</li>
                	<li>
                    <a href="javascript:void(0);">数据预处理<span class="fa arrow"></span></a>
                    	<ul class="nav nav-second-level">
                        	<li><a href="LevelDistribution.jsp"><i class="fa fa-line-chart"></i>&nbsp;信号强度分布</a></li>
                        	<li><a href="Occupancy.jsp"><i class="fa fa-bar-chart-o"></i>&nbsp;占用情况统计</a></li> 
                    		<li><a href="GenerateDataset.jsp"><i class="fa fa-edit"></i>&nbsp;生成实验数据集</a></li>
                    		<li><a href="NoiseMargin.jsp"><i class="fa fa-calculator"></i>&nbsp;确定噪声容限</a></li>
                    		<li><a href="GenerateStateSeries.jsp"><i class="fa fa-file-archive-o"></i>&nbsp;生成状态序列</a></li>  
                    	</ul>
                	</li>
                	<li>
                	<a href="javascript:void(0);">数据挖掘<span class="fa arrow"></span></a>
                		<ul class="nav nav-second-level">
                    		<li><a href="PPPM.jsp"><i class="fa fa-circle"></i>&nbsp;关联规则挖掘</a></li>
                    	</ul>
                	</li>
                	<li>
                    <a href="javascript:void(0);">结果验证<span class="fa arrow"></span></a>
                    	<ul class="nav nav-second-level">
                       	 <li><a href="GenerateTestDataset.jsp"><i class="fa fa-edit"></i>&nbsp;生成验证集</a></li>
                       	 <li><a href="TestdataPreProcessing.jsp"><i class="fa fa-calculator"></i>&nbsp;验证集预处理</a></li>
                        	<li><a href="PrecisionTest.jsp"><i class="fa fa-check-circle"></i>&nbsp;精度验证</a></li>
                    	</ul>
                	</li>
        		</ul>
        	</div>
        </div>       
    </nav>
     <div id="page-wrapper">
        	<div class="row">
				<div class="col-lg-12">
					<h1 class="page-header">数据库管理</h1>
				</div><!--col-lg-12 end-->
			</div><!--row end-->
			<div class="row">
				<div class="col-lg-6">
					<button type="button" class="btn btn-primary" id="btn-add"><i class="fa fa-plus"></i> 添加</button>
					<button type="button" class="btn btn-danger" id="btn-del"><i class="fa fa-remove"></i> 批量删除</button>
					<button type="button" class="btn btn-success" id="btn-export"><i class="fa fa-share-square-o"></i> 导出</button>
				</div><!-- /col-lg-6 -->
				<div class="col-lg-6">
					<div class="input-group">
						<input type="text" class= "form-control" placeholder="模糊查询" id="fuzzy-search">
						<div class="input-group-btn">
							<button type="button" class="btn" id="btn-simple-search"><i class="fa fa-search"></i></button>
							<button type="button" class="btn" title="高级查询" id="toggle-advanced-search">
								<span class="fa fa-angle-double-down"></span>
							</button>
						</div><!-- /input-group-btn -->
					</div><!-- /input group -->
				</div><!-- /col-lg-6 -->
			</div>
			<br>
			<div class="row" style="display:none;" id="div-advanced-search">
				<form class="form-inline well">
					<span>编号:</span>
					<input type="text" placeholder="编号" id="id-search">
					&nbsp;&nbsp;
					<span>时间:</span>
					<input type="text" placeholder="时间" id="time-search">
					&nbsp;&nbsp;
					<span>频率:</span>
					<input type="text" placeholder="频率" id="frequency-search">
					&nbsp;&nbsp;
					<span>电平:</span>
					<input type="text" placeholder="电平" id="level-search">
					&nbsp;&nbsp;
					<button type="button" class="btn" id="btn-advanced-search"><i class="fa fa-search"></i> 查询</button>
				</form>
			</div>
			<!-- 下面是弹出的添加对话框 -->
			<div class="row" style="display:none;" id="user-add">
				<form class="form-inline well" id="form-add">
					<label>时间：</label>
					<input type="text" placeholder="time" id="addtime" name="addtime">
					<label>频率：</label>
					<input type="text" placeholder="frequency" id="addfre" name="addfre">
					<label>电平：</label>
					<input type="text" placeholder="level" id="addlevel" name="addlevel">
					<label>场强：</label>
					<input type="text" placeholder="field strength" id="addfield" name="addfield">
					<button type="button" class="btn btn-primary" id="btn-add-save"> 确定添加</button>
					<button type="reset" class="btn btn-default">取消</button>
				</form>
			</div>
			<!-- 下面是弹出的导出对话框 -->
			<div class="row" style="display:none;" id="div-export">
				<form class="form-inline well">
					<label>起始时间:</label>
					<input type="text" placeholder="起始时间" id="StartTime">
					&nbsp;&nbsp;
					<label>结束时间:</label>
					<input type="text" placeholder="结束时间" id="EndTime">
					&nbsp;&nbsp;
					<button type="button" class="btn btn-info" id="btn-exportfile"><i class="fa fa-file-text-o"></i> 导出</button>
				</form>
			</div>
			<!-- 正文表格 -->
			<div class="row">
				<div class="panel panel-default">
					<div class="panel-body">
						<div class="dataTables_wrapper" id="div-table-container">
							<div class="col-lg-12">
								<table class="table table-striped table-bordered table-hover" id="mytable">
								<thead>
									<tr>
									    <th>
											<input type="checkbox" name="cb-check-all">
										</th>
										<th>编号（ID）</th>
										<th>时间（time）</th>
										<th>频率（frequency,MHz）</th>
										<th>电平（level,dBuv）</th>
										<th>场强(field_strenghth,dBuv)</th>
										<th>操作</th>
									</tr>
								</thead>
								<tbody>
								</tbody>
								<tfoot>
								<tr>
						            <th>
										<input type="checkbox" name="cb-check-all">
									</th>
									<th>编号（ID）</th>
									<th>时间（time）</th>
									<th>频率（frequency,MHz）</th>
									<th>电平（level,dBuv）</th>
									<th>场强(field_strenghth,dBuv)</th>
									<th>操作</th>
								</tr>
							</tfoot>
							</table>
							</div>
						</div>
					</div>
				</div>
			</div>
	</div>
	 <a href="#top" id="goTop"><i class="fa fa-angle-up fa-3x"></i></a>
  </div><!-- wrapper end -->
</body>
</html>