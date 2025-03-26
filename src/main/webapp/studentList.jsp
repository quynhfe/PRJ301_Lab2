<%-- 
    Document   : studentList
    Created on : Feb 16, 2025, 2:37:57 PM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Student List</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"></link>
</head>
<body class="bg-gray-100 text-center font-sans">
    <div class="flex justify-between items-center p-4 bg-white shadow-md">
        <a href="loginServlet" class="text-blue-600 hover:text-blue-800">
            <i class="fas fa-arrow-left"></i> Back
        </a>
        <h2 class="text-3xl font-bold text-green-600">Student List</h2>
        <a href="logoutServlet" class="text-red-600 hover:text-red-800">
            Logout <i class="fas fa-sign-out-alt"></i>
        </a>
    </div>
    <form action="getStudentListServlet" method="post" class="w-full flex justify-center mt-8">
        <table class="w-4/5 bg-white shadow-lg rounded-lg">
            <thead>
                <tr class="bg-green-600 text-white">
                    <th class="py-3 px-4">ID</th>
                    <th class="py-3 px-4">Name</th>
                    <th class="py-3 px-4">Gender</th>
                    <th class="py-3 px-4">DOB</th>
                    <th class="py-3 px-4">Actions</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${sessionScope.studentListAll}" var="student">
                    <tr class="border-b">
                        <td class="py-3 px-4">${student.getId()}</td>
                        <td class="py-3 px-4">${student.getName()}</td>
                        <td class="py-3 px-4">${student.getGender()}</td>
                        <td class="py-3 px-4">${student.getDob()}</td>
                        <td class="py-3 px-4 flex justify-center space-x-4">
                            <a href="editStudentServlet?id=${student.getId()}" class="text-blue-500 hover:text-blue-700">Edit</a>
                            <a href="deleteStudentServlet?id=${student.getId()}" class="text-red-500 hover:text-red-700">Delete</a>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </form>
    <div class="mt-8">
        <a href="addStudent.jsp">
            <button class="bg-green-600 text-white py-2 px-4 rounded hover:bg-green-700">Add New Student</button>
        </a>
    </div>
</body>
</html>