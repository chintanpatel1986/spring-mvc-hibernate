<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--
  Created by IntelliJ IDEA.
  User: chintanpatel
  Date: 17/05/24
  Time: 11:30 am
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Employee Management</title>
    <link rel="stylesheet" href='<c:url value="/resources/css/bootstrap.min.css"/>'>
    <link rel="stylesheet" href="<c:url value="/resources/css/bootstrap.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/css/bootstrap-grid.min.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/css/bootstrap-utilities.rtl.css"/>">
    <script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
</head>
<body>
<div class="container mt-5 border border-1">
    <div class="container">
        <div class="fs-1 fw-bold">
            <h1>Manage Employee</h1>
        </div>
        <form:form action="/SpringMvcHibernate/employees/insertOrUpdateEmployee" method="post" cssClass="row g-3" modelAttribute="employee">
            <form:hidden path="employeeId"/>
            <div class="col-4 mt-5">
                <form:label path="firstName" cssClass="form-label fw-semibold">FirstName</form:label>
                <form:input path="firstName" cssClass="form-control"/>
                <form:errors path="firstName" cssStyle="color: red"/>
            </div>
            <div class="col-4 mt-5">
                <form:label path="middleName" cssClass="form-label fw-semibold">MiddleName</form:label>
                <form:input path="middleName" cssClass="form-control"/>
                <form:errors path="middleName" cssStyle="color: red"/>
            </div>
            <div class="col-4 mt-5">
                <form:label path="lastName" cssClass="form-label fw-semibold">LastName</form:label>
                <form:input path="lastName" cssClass="form-control"/>
                <form:errors path="lastName" cssStyle="color: red"/>
            </div>
            <div class="col-6">
                <div class="col-6">
                    <form:label path="gender" cssClass="form-label fw-semibold">Gender</form:label>
                </div>
                <div class="form-check form-check-inline">
                    <form:radiobutton path="gender" cssClass="form-check-input" value="Male"/>
                    <form:label path="" cssClass="form-check-label">Male</form:label>
                </div>
                <div class="form-check form-check-inline">
                    <form:radiobutton path="gender" cssClass="form-check-input" value="Female"/>
                    <form:label path="" cssClass="form-check-label">Female</form:label>
                </div>
                <form:errors path="gender" cssStyle="color: red"/>
            </div>
            <div class="col-6">
                <div class="col-6">
                    <form:label path="programmingSkill" cssClass="form-label fw-semibold">Programming Skill</form:label>
                </div>
                <div class="form-check form-check-inline">
                    <form:checkbox path="programmingSkill" cssClass="form-check-input" value="Java"/>
                    <form:label path="" cssClass="form-check-label">Java</form:label>
                </div>
                <div class="form-check form-check-inline">
                    <form:checkbox path="programmingSkill" cssClass="form-check-input" value="Python"/>
                    <form:label path="" cssClass="form-check-label">Python</form:label>
                </div>
                <div class="form-check form-check-inline">
                    <form:checkbox path="programmingSkill" cssClass="form-check-input" value="C++"/>
                    <form:label path="" cssClass="form-check-label">C++</form:label>
                </div>
                <div class="form-check form-check-inline">
                    <form:checkbox path="programmingSkill" cssClass="form-check-input" value="Ruby"/>
                    <form:label path="" cssClass="form-check-label">Ruby</form:label>
                </div>
                <div class="form-check form-check-inline">
                    <form:checkbox path="programmingSkill" cssClass="form-check-input" value="JavaScript"/>
                    <form:label path="" cssClass="form-check-label">JavaScript</form:label>
                </div>
                <div class="form-check form-check-inline">
                    <form:checkbox path="programmingSkill" cssClass="form-check-input" value="HTML"/>
                    <form:label path="" cssClass="form-check-label">HTML</form:label>
                </div>
                <div class="form-check form-check-inline">
                    <form:checkbox path="programmingSkill" cssClass="form-check-input" value="CSS"/>
                    <form:label path="" cssClass="form-check-label">CSS</form:label>
                </div>
                <form:errors path="programmingSkill" cssStyle="color: red"/>
            </div>
            <div class="col-4">
                <form:label path="email" cssClass="form-label fw-semibold">E-Mail</form:label>
                <form:input path="email" cssClass="form-control"/>
                <form:errors path="email" cssStyle="color: red"/>
            </div>
            <div class="col-4">
                <form:label path="mobile" cssClass="form-label fw-semibold">Mobile</form:label>
                <form:input path="mobile" cssClass="form-control"/>
                <form:errors path="mobile" cssStyle="color: red"/>
            </div>
            <div class="col-4">
                <form:label path="dateOfBirth" cssClass="form-label fw-semibold">Birth Date</form:label>
                <form:input path="dateOfBirth" cssClass="form-control"/>
                <form:errors path="dateOfBirth" cssStyle="color: red"/>
            </div>
            <div class="col-6">
                <form:label path="userName" cssClass="form-label fw-semibold">UserName</form:label>
                <form:input path="userName" cssClass="form-control"/>
                <form:errors path="userName" cssStyle="color: red"/>
            </div>
            <div class="col-6">
                <form:label path="password" cssClass="form-label fw-semibold">Password</form:label>
                <form:password showPassword="true" path="password" cssClass="form-control"/>
                <form:errors path="password" cssStyle="color: red"/>
            </div>
            <div class="col-12 d-grid gap-2">
                <button type="submit" class="btn btn-success">Submit</button>
            </div>
        </form:form>
    </div>
    <div class="container mt-5">
        <c:if test="${!empty employeeList}">
            <table class="table table-striped table-bordered">
                <thead>
                    <tr>
                        <th>FirstName</th>
                        <th>LastName</th>
                        <th>Gender</th>
                        <th>Skill</th>
                        <th>E-Mail</th>
                        <th>BirthDate</th>
                        <th>UserName</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${employeeList}" var="employee">
                        <c:url var="editLink" value="/employees/manageEmployee">
                            <c:param name="employeeId" value="${employee.employeeId}"/>
                        </c:url>
                        <c:url var="deleteLink" value="/employees/deleteEmployee">
                            <c:param name="employeeId" value="${employee.employeeId}"/>
                        </c:url>
                    <tr>
                        <td>${employee.firstName}</td>
                        <td>${employee.lastName}</td>
                        <td>${employee.gender}</td>
                        <td>
                            <c:forEach items="${employee.programmingSkill}" var="current">
                                [<c:out value="${current}"/>]
                            </c:forEach>
                        </td>
                        <td>${employee.email}</td>
                        <td><fmt:formatDate value="${employee.dateOfBirth}" pattern="yyyy/MM/dd"/></td>
                        <td>${employee.userName}</td>
                        <td>
                            <a href="${editLink}" class="link-success">Edit</a>
                            &nbsp;|&nbsp;
                            <a href="${deleteLink}" class="link-danger">Delete</a>
                        </td>
                    </c:forEach>
                </tbody>
            </table>
        </c:if>
    </div>
</div>
</body>
</html>
