<%@ page language="java"  pageEncoding="utf-8" import="com.estate.domain.pro.LargePro" contentType="text/html; charset=utf-8"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
   
    <title>修改大型项目图片信息</title>
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
	    <link rel="stylesheet" href="../resource/css/global.css" type="text/css"></link>
		<!-- 1.css -->
		<link rel="stylesheet" type="text/css" href="../resource/css/jqueryui/default/easyui.css"></link>
		<script type="text/javascript" src="../resource/js/jquery-1.4.2.js"></script>
	    <script type="text/javascript" src="../resource/js/jquery.dataGridTip.js"></script>
	    <!-- 2.js -->
	    <script type="text/javascript" src="../resource/js/jquery.easyui.min.js"></script>
		<script type="text/javascript" src="../resource/js/global.js"></script>
	      <script type="text/javascript" src="../resource/js/whole.js"></script>
	    <link rel="stylesheet" href="../resource/css/whole.css" type="text/css"></link>
	    <link rel="stylesheet" href="../resource/css/memberCenter/info.css" type="text/css"></link>	
		<script type="text/javascript">
		     function  addpic(){
		          window.location.href="../pro/addpropic.jsp";
		     }
		     function  deletePic(id,name,url){
		       window.location.href="../largePro/delPic.shtml?id="+id+"&name="+name+"&url="+url;
		     }
		</script>   
	</head>

	<body>
	  <jsp:include page="../head.jsp"></jsp:include>
		<div style="width: 100%; margin-top: 10px;" align="center">
		<table width="100%" class="layoutTab">
			<tr>
				<td width="20%" align="left" valign="top"><jsp:include page="../left.jsp"></jsp:include></td>
				<td valign="top">
				 <div class="position" align="left" style="width:80%"><label>您所在的位置：</label><a href="../home.shtml">梦房园</a>&nbsp;&nbsp;&gt;&nbsp;&nbsp;<a href="../mem/baseinfo_mainPage.shtml">会员中心</a>&nbsp;&nbsp;&gt;&nbsp;&nbsp;大型项目管理&nbsp;&nbsp;&gt;&nbsp;&nbsp;图片修改</div>
                    <div class="info_top"></div><div class="info_mid" style= "text-align   :center ">	
                    <div style="margin-left: 40px;margin-bottom: 10px;margin-top: 10px;float:left"> 
								   大型项目案源名称:${pro.title}      &nbsp;  &nbsp; &nbsp; &nbsp;   <input type="button" value="新增图片" onclick="addpic()"/>
				    </div>
				    <div style="margin-left: 30px;clear:both;">
					   <table  cellpadding="2"  border="0" bgcolor="#CCCCCC" cellspacing="1" width="90%">
						<tr align="center"><td  bgcolor="#F4F8FB"> 缩略图片 </td>  <td  bgcolor="#F4F8FB">图片名称  </td> <td  bgcolor="#F4F8FB">操作 </td></tr>	
					   <%
					          LargePro largePro=(LargePro)session.getAttribute("pro");
					          if(null!=largePro.getImgUrl1()){
					    %>
					   	<tr align="center" ><td  bgcolor="#FFFFFF"><img height="50"  width="50" src="../imageFloder/${pro.imgUrl1}"></td><td  bgcolor="#FFFFFF">${pro.imgName1}</td><td  bgcolor="#FFFFFF"><input type="button" value="删  除"  onclick="deletePic(${pro.id},'imgUrl1','${pro.imgUrl1}')"></td></tr>
					   	<% } %>
					   	<%
					   	    if(null!=largePro.getImgUrl2()){
					   	 %>
					   	 	<tr align="center" ><td  bgcolor="#FFFFFF"><img height="50"  width="50" src="../imageFloder/${pro.imgUrl2}"></td><td  bgcolor="#FFFFFF">${pro.imgName2}</td><td  bgcolor="#FFFFFF"><input type="button" value="删  除"  onclick="deletePic(${pro.id},'imgUrl2','${pro.imgUrl2}')"></td></tr>
					   	 <%
					   	    }
					   	  %>
					   	 	<%
					   	    if(null!=largePro.getImgUrl3()){
					   	 %>
					   	 	<tr align="center" ><td  bgcolor="#FFFFFF"><img height="50"  width="50" src="../imageFloder/${pro.imgUrl3}"></td><td  bgcolor="#FFFFFF">${pro.imgName3}</td><td  bgcolor="#FFFFFF"><input type="button" value="删  除"  onclick="deletePic(${pro.id},'imgUrl3','${pro.imgUrl3}')"></td></tr>
					   	 <%
					   	    }
					   	  %> 
					   	 	<%
					   	    if(null!=largePro.getImgUrl4()){
					   	 %>
					   	 	<tr align="center" ><td  bgcolor="#FFFFFF"><img height="50"  width="50" src="../imageFloder/${pro.imgUrl4}"></td><td  bgcolor="#FFFFFF">${pro.imgName4}</td><td  bgcolor="#FFFFFF"><input type="button" value="删  除"  onclick="deletePic(${pro.id},'imgUrl4','${pro.imgUrl4}')"></td></tr>
					   	 <%
					   	    }
					   	  %> 
					   	 	<%
					   	    if(null!=largePro.getImgUrl5()){
					   	 %>
					   	 	<tr align="center" ><td  bgcolor="#FFFFFF"><img height="50"  width="50" src="../imageFloder/${pro.imgUrl5}"></td><td  bgcolor="#FFFFFF">${pro.imgName5}</td><td  bgcolor="#FFFFFF"><input type="button" value="删  除"  onclick="deletePic(${pro.id},'imgUrl5','${pro.imgUrl5}')"></td></tr>
					   	 <%
					   	    }
					   	  %>
						</table>
					   	</div>
					   	</div>
					   <div class="info_bottom">&nbsp;</div>
				    </td>
				    </tr>
					</table>
		</div>
							<div style="margin-top: 10px;">
			<center>
				<jsp:include page="../copyright.jsp" />
			</center>
		</div>
	</body>
</html>
