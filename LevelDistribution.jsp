<%@ page language="java" import="java.util.*" import="java.io.*"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String graphURL = request.getContextPath() + "/DisplayChart?filename=";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>信号强度分布</title>
<link href="bootstrap-3.3.5-dist/css/bootstrap.min.css" rel="stylesheet">
<link href="metisMenu/dist/metisMenu.min.css" rel="stylesheet">
<link href="css/main.css" rel="stylesheet">
<link href="Font-Awesome/css/font-awesome.min.css" rel="stylesheet" />


<script src="js/jquery-2.2.3.min.js"></script>
<script src="bootstrap-3.3.5-dist/js/bootstrap.min.js"></script>
<script src="metisMenu/dist/metisMenu.min.js"></script>
<script src="js/main.js"></script>
<script src="js/default.js" type="text/javascript"></script>

<!--平滑滚动到顶部库-->
<script src="js/scrolltopcontrol.js" type="text/javascript"></script>

<script type="text/javascript">

	var xmlhttp = false;
	try {
		xmlhttp = new ActiveXObject("Msxml2.XMLHTTP");
	} catch (e) {
		try {
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		} catch (e) {
			try {
				xmlhttp = new XMLHttpRequest();
			} catch (e) {
				alert("浏览器不支持此功能！");
			}
		}
	}
	function getJFreeCharName() {
		if (xmlhttp) {
			var StartTime = document.getElementById("StartTime").value;
			var EndTime = document.getElementById("EndTime").value;
			var frequency = document.getElementById("frequency").value;
			var url = "QueryTimeSeriesServlet?StartTime="+StartTime+"&EndTime="+EndTime+"&frequency="+frequency;
			var param = "";
			xmlhttp.open("GET", url, true);
			xmlhttp.setRequestHeader("Content-Length", param.length)
			xmlhttp.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
			xmlhttp.onreadystatechange = callBackFun;
			xmlhttp.send(param);
		}
	}
	function getJFreeCharName1() {
		if (xmlhttp) {
			var startfre = document.getElementById("startfre").value;
			var endfre = document.getElementById("endfre").value;
			var time = document.getElementById("time").value;
			var url = "QueryFrequencySeriesServlet?startfre="+startfre+"&endfre="+endfre+"&time="+time;
			var param = "";
			xmlhttp.open("GET", url, true);
			xmlhttp.setRequestHeader("Content-Length", param.length)
			xmlhttp.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
			xmlhttp.onreadystatechange = callBackFun;
			xmlhttp.send(param);
		}
	}
	function callBackFun() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("imgs").style.display = "";
			document.getElementById("imgs").src = document.getElementById("hidText").value + xmlhttp.responseText;
		}
	}
</script>
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
                    <a href="javascript:void(0);">数据库管理<span class="fa arrow"></span></a>
                    	<ul class="nav nav-second-level">
                    		<li><a href="DataQuery.jsp"><i class="fa fa-search"></i>&nbsp;数据查询</a></li>
                    		<li><a href="left3.html"><i class="fa fa-pencil"></i>&nbsp;数据入库</a></li>
                    		<li><a href="left3.html"><i class="fa fa-share-square"></i>&nbsp;数据库导出</a></li>
                        	<li><a href="DataUpload1.jsp"><i class="fa fa-upload"></i>&nbsp;数据上传</a></li>
                        	<li><a href="ListLoadServlet"><i class="fa fa-download"></i>&nbsp;数据下载</a></li>
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
				<h1 class="page-header">信道强度分布概览</h1>
			</div><!--col-lg-12 end-->
		</div><!--row end-->
		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default">
					<div class="panel-heading">
						参数设置与图表展示
					</div>
					<div class="row">
						<div class="col-lg-4">
							<div class="panel-body">
						    	<!-- tabs -->
						    	<ul class="nav nav-tabs">
						    		<li class="active"><a href="#somefrequency" data-toggle="tab">固定信道</a></li>
						    		<li><a href="#sometime" data-toggle="tab">固定时刻</a></li>
						    	</ul>
						    	<!-- tab panes -->
						    	<div class="tab-content">
						    		<div class="tab-pane fade in active" id="somefrequency">
						    			<br/>
						    			<form class="form-horizontal">
						    				<fieldset>
						    					<div class="form-group">
						    						<label for="inputtime1" class="col-lg-4 control-label">起始时间</label>
						    						<div class="col-lg-8"><input type="text" class="form-control" id="StartTime" name="StartTime" placeholder="StartTime">
						    						</div>
						    					</div>
						    					<div class="form-group">
						    						<label for="inputtime2" class="col-lg-4 control-label">终止时间</label>
						    						<div class="col-lg-8"><input type="text" class="form-control" id="EndTime" name="EndTime" placeholder="EndTime">
						    						</div>
						    					</div>
						    					<div class="form-group">
						    						<label for="inputfrequency" class="col-lg-4 control-label">频点</label>
						    						<div class="col-lg-8"><input type="text" class="form-control" id="frequency" placeholder="frequency">
						    						</div>
						    					</div>
						    					<div class="form-group">
						    						<div class="col-lg-10 col-lg-offset-4">
						    							<button type="button" class="btn btn-primary" onclick="getJFreeCharName()">提交</button>
						    							<button type="reset" class="btn btn-default">取消</button>
						    							<input type="hidden" id="hidText" value="<%=graphURL%>">
						    						</div>
						    					</div>
						    				</fieldset>
						    			</form>
						    		</div>
						    		<div class="tab-pane fade" id="sometime">
						    			<br/>
						    			<form class="form-horizontal">
						    				<fieldset>
						    					<div class="form-group">
						    						<label for="inputtime" class="col-lg-4 control-label">时间</label>
						    						<div class="col-lg-8"><input type="text" class="form-control" id="time" placeholder="time">
						    						</div>
						    					</div>
						    					<div class="form-group">
						    						<label for="inputfre1" class="col-lg-4 control-label">起始频率</label>
						    						<div class="col-lg-8"><input type="text" class="form-control" id="startfre" placeholder="StartFrequency">
						    						</div>
						    					</div>
						    					<div class="form-group">
						    						<label for="inputfre2" class="col-lg-4 control-label">终止频率</label>
						    						<div class="col-lg-8"><input type="text" class="form-control" id="endfre" placeholder="EndFrequency">
						    						</div>
						    					</div>
						    					<div class="form-group">
						    						<div class="col-lg-8 col-lg-offset-4">
						    							<button type="button" class="btn btn-primary" onclick="getJFreeCharName1()">提交</button>
						    							<button type="reset" class="btn btn-default">取消</button>
						    						</div>
						    					</div>
						    				</fieldset>
						    			</form>
						    		</div>
						    	</div><!--tab-content end-->
					        </div><!--panel-body-->
						</div><!--col-lg-4-->
						<div class="col-lg-8">
							<div class="panel panel-default">
								<div class="panel-body">
									<center><!--img src="" id="imgs" style="display: none" />  -->
										<img src="../Image/line.gif" id="imgs"/>
									</center>	
								</div>
							</div>
						</div><!--col-lg-8-->
					</div>
				</div>
			</div>
		</div>
    </div>
    <a href="#top" id="goTop"><i class="fa fa-angle-up fa-3x"></i></a>
 </div><!-- wrapper end -->
</body>
</html>