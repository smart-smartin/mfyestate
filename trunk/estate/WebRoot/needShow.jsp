<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>

		<title><s:if test='dataMap.flag == "1"'>求租</s:if> <s:else>求购</s:else>
			<s:property value="dataMap.disname" />&nbsp;&nbsp;<s:property
				value="dataMap.address" />&nbsp;&nbsp;<s:property
				value="dataMap.title" />
		</title>
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<link rel="stylesheet" href="resource/css/global.css" type="text/css"></link>
		<link rel="stylesheet" href="resource/css/whole.css" type="text/css"></link>
		<link rel="stylesheet" href="resource/css/search.css" type="text/css"></link>
		<script type="text/javascript" src="resource/js/jquery-1.4.2.js" charset="utf-8"></script>
		<script type="text/javascript" src="resource/js/whole.js"></script>
		<script type="text/javascript" src="resource/js/global.js"></script>
		<STYLE type="text/css">
<!--
#searchPanel ul,#searchPanel li {
	list-style-type: none;
	margin: 0;
	padding: 0;
}
-->
</STYLE>
	</head>
	<script type="text/javascript">
  	</script>
	<body>
		<jsp:include page="head.jsp"></jsp:include>
		<div style="width: 100%; height: 100%;" align="center">
			<!-- 3.添加class="layoutTab"  -->
			<table class="layoutTab">
				<tr>
					<td align="center">
						<div class="search_result">
						<div class="l_loca">
				    		<span class="left lo_le">您当前的位置：<a href="#">梦房园</a> <a href="#"><estateTag:convertCode codeType="导航" code="${menuIndex}"></estateTag:convertCode></a> <s:property value="dataMap.title"/></span>
				        </div>
							<div class="search_result_list1"style="margin-top: 20px">
								<div class="pro_show_title" align="left" >
									<s:if test='dataMap.flag == "1"'>求租</s:if>
									<s:else>求购</s:else>
									<s:property value="dataMap.disname" />
									&nbsp;&nbsp;
									<s:property value="dataMap.address" />
									&nbsp;&nbsp;
									<s:if test='searchPro == "0"'>写字楼</s:if>
									<s:elseif test='searchPro == "1"'>商铺</s:elseif>
									<s:elseif test='searchPro == "2"'>生意转让</s:elseif>
									<s:elseif test='searchPro == "3"'>工业地产</s:elseif>
									<s:elseif test='searchPro == "4"'>大型项目</s:elseif>
									<s:elseif test='searchPro == "5"'>经纪人</s:elseif>
									&nbsp;&nbsp;
								</div>
								<div class="search_result_pro1" align="left" id="proResult">
									<div id="member_info">
										<table cellspacing="5px" border="0">
											<tr>
												<td>
													&nbsp;
												</td>
												<td align="left">
													<img
														src="<%=basePath%>imageFloder/<s:property value="dataMap.headurl"/>"
														title="进入<s:property value="realName"/>的商铺" height="130px"
														alt="经纪人头像" width="100px">
													<br />
													<br />
													<div style="margin-left: 35px;">
														<s:property value="dataMap.realname" />
													</div>
												</td>
											</tr>
											<tr>
												<td>
													所属区域：
												</td>
												<td>
													<s:property value="dataMap.mdisname" />
												</td>
											</tr>
											<tr>
												<td>
													所属公司：
												</td>
												<td>
													<s:property value="dataMap.company" />
												</td>
											</tr>
											<tr>
												<td>
													&nbsp;
												</td>
												<td>
													<a href="<%=basePath%>mem/baseinfo_toMyStore.shtml?authorId=<s:property value="dataMap.id"/>&type=office"><img src="resource/images/to.gif" border="0px;">进入我的店铺</a>
												</td>
											</tr>
										</table>
									</div>
									<div id="pro_info">
										<table width="100%" cellspacing="1px" cellpadding="0">
											<tr>
												<td colspan="2"
													style="border-bottom: 2px solid #68A1D9; color: #0066CC; font-size: 15px; font-weight: bold;">
													<s:property value="dataMap.title" />
												</td>
											</tr>
											<tr>
												<td width="25%" align="right" class="pro_info_label">
													发布时间：
												</td>
												<td>
													<s:date name="dataMap.createtime" format="yyyy-MM-dd" />
												</td>
											</tr>
											<tr>
												<td align="right" class="pro_info_label">
													房源编号：
												</td>
												<td>
													<s:property value="dataMap.num" />
												</td>
											</tr>
											<tr>
												<td align="right" class="pro_info_label">
													交易类型：
												</td>
												<td>
													<s:if test='dataMap.flag == "1"'>出租</s:if>
													<s:else>求购</s:else>
												</td>
											</tr>
											<tr>
												<td align="right" class="pro_info_label">
													区域：
												</td>
												<td>
													<s:property value="dataMap.disname" />
												</td>
											</tr>
											<tr>
												<td align="right" class="pro_info_label">
													地址：
												</td>
												<td>
													<s:property value="dataMap.address" />
												</td>
											</tr>
											<tr>
												<td align="right" class="pro_info_label">
													面积：
												</td>
												<td>
													<s:property value="dataMap.minarea" />
													-
													<s:property value="dataMap.maxArea" />
												</td>
											</tr>
											<tr>
												<td align="right" class="pro_info_label">
													价格：
												</td>
												<td>
													<s:property value="dataMap.minprice" />
													-
													<s:property value="dataMap.minprice" />
												</td>
											</tr>
											<tr>
												<td align="right" class="pro_info_label">
													联系电话：
												</td>
												<td>
													<s:property value="dataMap.tel" />
												</td>
											</tr>
										</table>
									</div>
								</div>
								<div class="pro_info_content">
									<span class="content_span">需求信息：</span>
									<br />
									&nbsp;&nbsp;&nbsp;&nbsp;<s:property value="dataMap.content" />
									<br />
								</div>
							</div>
							<div class="search_result_ad">
								<img width="100%" height="100px" />
								<div class="office_need">
									<div class="need_title">
										会员
										<s:if test='searchPro=="0"'>
			   						写字楼
			   					</s:if>
										<s:elseif test='searchPro=="1"'>
			   						商铺
			   					</s:elseif>
										<s:elseif test='searchPro=="2"'>
			   						生意转让
			   					</s:elseif>
										<s:elseif test='searchPro=="3"'>
			   						工业地产
			   					</s:elseif>
										<s:elseif test='searchPro=="4"'>
			   						大型项目
			   					</s:elseif>
										<s:elseif test='searchPro=="5"'>
			   						经纪人
			   					</s:elseif>
										需求信息
									</div>
									<div class="need_content">
										<table width="95%" id="needTab">

										</table>
									</div>
								</div>
							</div>
						</div>
					</td>
				</tr>
				<tr>
					<td align="center">
						<jsp:include page="copyright.jsp"></jsp:include>
					</td>
				</tr>
			</table>
		</div>
	</body>
	<SCRIPT type="text/javascript">
  	$(function(){
  		//初始化项目及其搜索样式
  		var proId = $("#searchPro").val();
  		if('<s:property value="searchPro"/>'!="0"){
  			//load();
  		}
  		var url = "getMemNeedList.shtml?searchPro=<s:property value="searchPro"/>&t="+(new Date().getTime().toString(36));
  		$.getJSON(url,function(data){
  			var resultData = data.jsonString;
  			var resultJson = '';
  			try{
  				resultJson = eval('('+resultData+')');
  			}catch(e){
  				resultJson = resultData;
  			}
  			var containerHead = '<tr><td height="28" align="left" class="btmborder" style="line-height:28px;overflow:hidden; text-overflow:ellipsis;white-space:nowrap;">'
  			var containerTail = '</td></tr>';
			if(null!=resultJson)
  			for(var i = 0; i < resultJson.length; i++){
  				var title = resultJson[i]["title"];
  				var id = resultJson[i]["id"];
  				var contentStr = '<a href="javascript:showNeed(\''+id+'\',\''+$("#searchPro").val()+'\')">&#8226;&nbsp;'+title+'</a>';
  				$("#needTab").append(containerHead+contentStr+containerTail);	
  			}
  		})
  	})
  
  	
  	
  	/**
  	*type:搜索类型 7:between 特殊处理
  	*minValue:最小值
  	*maxValue:最大值
  	*code:列名
  	*obj:点击的源
  	*position:位置
  	*pro:项目序号
  	*/
  	function search(type,minValue,maxValue,code,obj,position,pro){
  		if($(obj).attr("class").indexOf("search_column_selected")!=-1)
  			return;
  		$(obj).addClass("search_column_selected");
  		var ary = position.split("_");
  		//if(type != "7")
  		//	alert('搜索第'+pro+'个项目,第'+ary[0]+'行,第'+ary[1]+'列'+formatSearchType(type)+minValue+'的值,对应的列名为'+code);
  		//else
  		//	alert('搜索第'+pro+'个项目,第'+ary[0]+'行,第'+ary[1]+'列'+formatSearchType(type)+minValue+'和'+maxValue+'的值,对应的列名为'+code);
  		//window.location.href = 'search.shtml?searchPro='+ary[0]+'&searchStatus='+position+'&searchQuery='+(code+'_'+type+'_'+minValue+'_'+maxValue);
  		$("#searchPro").val(pro);
  		if($("#searchStatus").val()!=""){
  			filteQuery(position,(code+'_'+type+'_'+minValue+'_'+maxValue));
  		}else{
  			$("#searchStatus").val(position);
  			$("#searchQuery").val((code+'_'+type+'_'+minValue+'_'+maxValue));
  		}
  		window.searchForm.action = 'search.shtml';
  		window.searchForm.method="post";
  		window.searchForm.submit();
  		return;
  	}
  	
  	function search1(pageno){
  		window.searchForm.action = 'search.shtml?pageNo='+pageno;
  		window.searchForm.method="post";
  		window.searchForm.submit();
  		return;
  	}
  	
  	function filteQuery(sv,qv){
  		var tv = "";
  		var tqv = "";
  		var row = sv.split("_")[0];
  		var searchStatus = $("#searchStatus").val();
  		var searchQuery = $("#searchQuery").val();
  		var staAry = searchStatus.split("@");
  		var queryAry = searchQuery.split("@");
  		var filterFlag = false;
  		for(var i = 0; i < staAry.length; i++){
  			if(tv!=""){
  				tv+="@";
  				tqv+="@";
  			}
  			var vv = staAry[i];
  			if(vv.split("_")[0]==row){
  				filterFlag = true;
  				tv+=sv;
  				tqv+=qv;
  			}else{
  				tv+=vv;
  				tqv+=queryAry[i];
  			}
  		}
  		if(!filterFlag){
  			if(tv!=""){
  				tv+="@";
  				tqv+="@";
  			}
  			tv+=sv;
  			tqv+=qv;
  		}
  		$("#searchStatus").val(tv);
  		$("#searchQuery").val(tqv);
  	}
  	
  	
  	function formatSearchType(type){
		var data = {'1':'<','2':'>','3':'<=','4':'>=','5':'=','6':'!=','7':'between','8':'like'};
		return data[type];
  	}
  	
	function load() {
	if (GBrowserIsCompatible()) {
		var map = new GMap2(document.getElementById("map"));
		var center = new GLatLng('<s:property value="dataMap.positionx"/>', '<s:property value="dataMap.positiony"/>');
		map.setCenter(center, 13);
		
		var marker = new GMarker(center, {
					draggable : false
				});
		GEvent.addListener(map, 'click', function(overlay, point) {
					if (overlay) {
						// nothing
					} else {
						// 清除以前所点击图标
						map.clearOverlays();
						//document.getElementById('jing').value = +point.x;
						//document.getElementById('wei').value = point.y;
						var marker = map.addOverlay(new GMarker(point));
					}
				});
		map.addControl(new GSmallMapControl());// 缩放
		map.addControl(new GMapTypeControl());// 普通地图和卫星地图
		map.addOverlay(marker);

	}

}
  </SCRIPT>
	<script src="http://maps.google.com/maps?file=api&v=2&key=ABQIAAAAC1djgrWT1Mqz3gM4Ge3XlhSchlZ7_IhAROXTdJ5EzY4J4yl1FBSStZmm__B2dywWaRXMSi8G6C5QLw"
		type="text/javascript"></script>
</html>
