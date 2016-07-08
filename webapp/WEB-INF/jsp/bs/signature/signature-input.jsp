<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/common/setting-taglibs.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">

<%@page import="java.util.Date"%><html>
<head>
	<%@ include file="/common/setting-iframe-meta.jsp"%>
	<title><s:text name="basicSetting.signatureManager"></s:text></title>
</head>

<body>
<div class="ui-layout-center">
	<aa:zone name="signature_zone">
		<div class="opt-btn">
			<button class="btn" onclick="_signatureSave();" hidefocus="true"><span><span><s:text name="menuManager.save"></s:text> </span></span></button>
			<button class="btn" onclick="setPageState();ajaxSubmit('signatureFormInput','${settingCtx}/signature/signature.htm','signature_zone');" ><span><span ><s:text name="menuManager.back"></s:text></span></span></button>
		</div>
		<div id="backMsg"  style="display: none;"><s:actionmessage theme="mytheme"/></div>
		<div id="opt-content">
		<aa:zone name="meeting_content">
			<form action="" name="signatureFormInput" id="signatureFormInput" method="post">
				<!--<input type="hidden" name="id" value="${id}"/>-->
				<input type="hidden" name="signatureId" id="signatureId"  value="${signatureId}"/>
				<table>
					<tbody>
					<tr>
						<td><s:text name="basicSetting.userName"></s:text>:</td>
						<td>
							<input readonly="readonly" type="text" id="userNameInfo" value="${userNameInfo}">
							<input type="hidden" name="userName" id="userName" value="${userName}">
							<input type="hidden" name="userId" id="userId" value="${userId}"/>
							<input type="hidden" name="subCompanyName" id="subCompanyName" value="${subCompanyName}"/>
							<a id="selectUser" href="#" onclick="chooseUser('selectUser','${id}');" title="<s:text name="basicSetting.chooseBtn"></s:text>"  class="small-btn"><span><span><s:text name="basicSetting.chooseBtn"></s:text></span></span></a>
							<span class="required">*</span>
						</td>
					</tr>
					<tr>
						<td><s:text name="basicSetting.signUpload"></s:text>:</td>
						<td>
							<span id="spanButtonPlaceholder"></span>
						</td>
					</tr>
					<tr>
						<td></td>
						<td>
						 <aa:zone name="signature_show_zoon">
							<s:if test="pictureExist!=null">
								<img src="${settingCtx}/signature/signature-picture-show.htm?signatureId=${signatureId}&time=<%=new Date()%>>" style="width: 140px;height:100px;"></img>
							</s:if>
							<div id="divFileProgressContainer" style=" margin-left:80px;">
							</div>
						</aa:zone>
						</td>
					</tr>
					</tbody>
				</table>
			</form>
			</aa:zone>
		</div>
	</aa:zone>
	</div>
</body>
</html>