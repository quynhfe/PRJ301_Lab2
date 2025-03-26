<%-- 
    Document   : login
    Created on : Mar 13, 2025, 10:38:47 PM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <title>System</title>
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
        <div class="w-full max-w-md bg-white p-8 rounded-lg shadow-md">
            <h2 class="text-2xl font-bold text-center mb-6 text-green-600">LOGIN</h2>
            <c:if test="${not empty error}">
                <div class="fixed inset-0 bg-black bg-opacity-50 flex items-center justify-center">
                    <div class="bg-white p-6 rounded-lg shadow-lg">
                        <h3 class="text-xl font-bold text-red-600 mb-4">Login fail!</h3>
                        <p class="text-gray-700 mb-4">${error}</p>
                        <a href="login.jsp" class="text-blue-500 hover:underline">Try again</a>
                    </div>
                </div>
            </c:if>

            <form action="loginServlet" method="post" class="space-y-4">
                <div>
                    <label for="username" class="block text-gray-700">Username: </label>
                    <input type="text" id="username" name="username" value="${username}" required class="w-full px-3 py-2 border rounded-lg focus:outline-none focus:ring-2 focus:ring-green-500">
                </div>
                <div>
                    <label for="password" class="block text-gray-700">Password:</label>
                    <input type="password" id="password" name="password" value="${password}" required class="w-full px-3 py-2 border rounded-lg focus:outline-none focus:ring-2 focus:ring-green-500">
                </div>
                <div class="flex items-center">
                    <input type="checkbox" id="remember" name="remember" class="mr-2">
                    <label for="remember" class="text-gray-700">Remember me</label>
                </div>
                <button type="submit" class="w-full bg-green-500 text-white py-2 rounded-lg hover:bg-green-600 focus:outline-none focus:ring-2 focus:ring-green-500">Login</button>
            </form>

            <p class="text-center mt-4 text-gray-700">Don't have an account? <a href="register.jsp" class="text-green-500 hover:underline">Register here</a></p>
        </div>
    </body>
</html>