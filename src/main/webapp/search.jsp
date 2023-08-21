<%@ taglib uri="/WEB-INF/tlds/struts-bean.tld" prefix="bean" %>
<%@ taglib uri="/WEB-INF/tlds/struts-logic.tld" prefix="logic" %>
<%@ taglib uri="/WEB-INF/tlds/struts-html.tld" prefix="html"%>  
<%-- <%@taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%> --%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
	<!-- <script src="/csrfguard"></script> -->
	<script type="text/javascript" src="scripts/validate.js"></script>
	<meta charset="ISO-8859-1">
	<title>ABC, Inc. Human Resources Portal</title>
	<%-- <html:javascript formName="searchForm" /> --%>
</head>

<body>

	<font size="+1">ABC, Inc. Human Resources Portal</font><br>
	<hr width="100%" noshade="true"><br><br>
	<html:errors/>
	<html:form action="/search"> <!--   onsubmit="validateSearchForm(this);"  -->
	
		<table>
			<tr>
				<td align="right"><bean:message key="label.search.name" />:</td>
				<td><html:text property="name" /></td>
			</tr>
			<tr>
				<td></td>
				<td>-- or --</td>
			</tr>
			<tr>
				<td align="right"><bean:message key="label.search.ssNum"/>:</td>
				<td><html:text property="ssNum" /> (xxx-xx-xxxx)</td>
			</tr>
			<tr></tr>
			<tr>
				<td></td>
				<td><html:submit/></td>
			</tr>
		</table>	
	</html:form>

	<logic:present name="searchForm" property="results">
		<hr width="100%" size="1" noshade="true">
		<bean:size id="size" name="searchForm" property="results"/>
		<logic:equal name="size" value="0">
			<center><font color="red"><b>No Employees Found</b></font></center>
		</logic:equal>
		<logic:greaterThan name="size" value="0">
			<table border="1">
				<tr>
					<th>Name</th>
					<th>Social Security Number</th>
				</tr>
					<logic:iterate id="result" name="searchForm" property="results">
						<tr>
							<td><bean:write name="result" property="name"/></td>
							<td><bean:write name="result" property="ssNum"/></td>
						</tr>
					</logic:iterate>
			</table>
		</logic:greaterThan>
	</logic:present>
</body>
</html>