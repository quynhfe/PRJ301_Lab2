<%-- 
    Document   : addStudent
    Created on : Feb 13, 2025, 2:10:58 PM
    Author     : ADMIN
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Student</title>
        <style>
            body {
                font-family: Arial, sans-serif;
                background-color: #f9f9f9;
                text-align: center;
            }
            form {
                width: 40%;
                margin: auto;
                background: white;
                padding: 20px;
                border-radius: 8px;
                box-shadow: 0px 0px 10px #aaa;
            }
            label {
                display: block;
                margin: 10px 0 5px;
                font-weight: bold;
            }
            input, select {
                width: 100%;
                padding: 8px;
                margin-bottom: 15px;
                border: 1px solid #ddd;
                border-radius: 5px;
            }
            input[type="submit"] {
                background-color: #28a745;
                color: white;
                cursor: pointer;
                border: none;
                padding: 10px;
            }
            input[type="submit"]:hover {
                background-color: #218838;
            }
        </style>
    </head>
    <body>
        <h2>Add New Student</h2>
        <form action="AddStudentServlet" method="POST">
            <label>Name:</label>
            <input type="text" name="name" required>

            <label>Gender:</label>
            <select name="gender">
                <option value="Male">Male</option>
                <option value="Female">Female</option>
            </select>

            <label>DOB :</label>
            <input type="date" name="dob" required>

            <input type="submit" value="Add Student">
        </form>
        <br>
        <p style="color:red; font-weight: bold">${errorString}</p>
        <a href="studentList.jsp"><button>Back to Student List</button></a>
    </body>
</html>
