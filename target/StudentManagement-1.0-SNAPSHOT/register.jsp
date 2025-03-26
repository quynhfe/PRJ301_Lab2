<%-- 
    Document   : register
    Created on : Mar 13, 2025, 10:38:58 PM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
    <head>
        <title>Register</title>
        <script src="https://cdn.tailwindcss.com"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"></link>
        <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet">
        <style>
            body {
                font-family: 'Roboto', sans-serif;
            }
        </style>
    </head>
    <body class="bg-gray-100 flex items-center justify-center min-h-screen">
        <div class="w-full max-w-md bg-white p-8 rounded-lg shadow-md relative">
            <h2 class="text-2xl font-bold text-center mb-6 text-green-600">Register New Account</h2>
            <c:if test="${not empty registrationSuccess}">
                <div class="fixed top-0 left-0 right-0 bg-green-700 text-white text-center py-2 shadow-lg">
                    Registration successful!
                </div>
            </c:if>
            <form action="registerServlet" method="post" class="space-y-4">
                <div>
                    <label for="username" class="block text-gray-700">Username:</label>
                    <input type="text" id="username" name="username" required class="w-full px-3 py-2 border rounded-lg focus:outline-none focus:ring-2 focus:ring-green-500">
                    <c:if test="${not empty userExisted}">
                        <p class="text-red-500">Username already exists. Please choose another username.</p>
                    </c:if>
                </div>
                <div>
                    <label for="password" class="block text-gray-700">Password:</label>
                    <input type="password" id="password" name="password" required class="w-full px-3 py-2 border rounded-lg focus:outline-none focus:ring-2 focus:ring-green-500">
                </div>
                <button type="submit" class="w-full bg-green-500 text-white py-2 rounded-lg hover:bg-green-600 focus:outline-none focus:ring-2 focus:ring-green-500">Register</button>
            </form>
            <p class="text-center mt-4 text-gray-700">Already have an account? <a href="login.jsp" class="text-green-500 hover:underline">Login here</a></p>
        </div>
    </body>
</html>