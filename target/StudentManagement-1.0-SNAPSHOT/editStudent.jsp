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
        <style>
            body {
                font-family: Arial, sans-serif;
                background-color: #e9ecef;
                text-align: center;
            }
            form {
                width: 50%;
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
                background-color: #ffc107;
                color: black;
                cursor: pointer;
                border: none;
                padding: 10px;
            }
            input[type="submit"]:hover {
                background-color: #e0a800;
            }
        </style>
    </head>
    <body>
        <h2>Edit Student</h2>
        <form action="editStudentServlet" method="post">
            <input type="hidden" name="id" value="${student.getId()}">

            <label>Name:</label>
            <input type="text" name="name" value="${student.getName()}" required>

            <label>Gender:</label>
            <select name="gender">
                <option value="Male" ${student.getGender().equals("Male") ? "selected" : "" }>Male</option>
                <option value="Female" ${student.getGender().equals("Female") ? "selected" : ""}>Female</option>
            </select>

            <label>DOB:</label>
            <input type="date" name="dob" value="${student.getDob()}" required>

            <input type="submit" value="Update Student">
        </form>
        <br>
        <a href="studentList.jsp"><button>Back to Student List</button></a>
    </body>
</html>
