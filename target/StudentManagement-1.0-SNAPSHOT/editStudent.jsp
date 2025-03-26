<%-- 
    Document   : editStudent
    Created on : Feb 13, 2025, 2:11:19 PM
    Author     : ADMIN
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Edit Student</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"></link>
</head>
<body class="bg-gray-100 text-center font-sans">
    <h2 class="text-3xl font-bold text-green-600 my-8">Edit Student</h2>
    <form action="editStudentServlet" method="post" class="w-full max-w-lg mx-auto bg-white p-8 rounded-lg shadow-lg">
        <input type="hidden" name="id" value="${student.getId()}">

        <label class="block text-left text-gray-700 font-bold mb-2">Name:</label>
        <input type="text" name="name" value="${student.getName()}" required class="w-full p-2 mb-4 border border-gray-300 rounded">

        <label class="block text-left text-gray-700 font-bold mb-2">Gender:</label>
        <select name="gender" class="w-full p-2 mb-4 border border-gray-300 rounded">
            <option value="Male" ${student.getGender().equals("Male") ? "selected" : "" }>Male</option>
            <option value="Female" ${student.getGender().equals("Female") ? "selected" : ""}>Female</option>
        </select>

        <label class="block text-left text-gray-700 font-bold mb-2">DOB:</label>
        <input type="date" name="dob" value="${student.getDob()}" required class="w-full p-2 mb-4 border border-gray-300 rounded">

        <input type="submit" value="Update Student" class="w-full bg-green-600 text-white py-2 rounded hover:bg-green-700 cursor-pointer">
    </form>
    <div class="mt-8">
        <a href="studentList.jsp">
            <button class="bg-green-600 text-white py-2 px-4 rounded hover:bg-green-700">Back to Student List</button>
        </a>
    </div>
</body>
</html>