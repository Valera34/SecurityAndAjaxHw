<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="sql_rt" uri="http://java.sun.com/jstl/sql_rt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
 <script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.2.1.min.js"></script> 
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.0/jquery.min.js"></script>
 <script src="<c:url value="/resources/main.js" />"></script>
</head>
<body>
${mainText}<br/>
<c:if test="${studentsList ne null}">
<c:forEach items="${studentsList}" var="student" varStatus="index">
${index.index+1}.) <a href="/students/${student.pib}">${student.pib}</a><br/>
</c:forEach>
</c:if>
Call with ajax<br/>
<div id="st">

</div>
<h2>Add new student</h2>
<form >
  <p><b>Створити студента</b></p>
  <input type="text" id="pib" placeholeder="PIB"/>
  <input type="text" id="course"  placeholeder="Course"/>
  <p><input type="button" onclick="doAjax()" value="Submit"></p>
 </form>
</body>
</html>
