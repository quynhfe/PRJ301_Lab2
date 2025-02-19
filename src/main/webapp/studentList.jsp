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
        <style>
            body {
                font-family: Arial, sans-serif;
                background-color: #f4f4f4;
                text-align: center;
            }

            table {
                width: 80%;
                margin: auto;
                border-collapse: collapse;
                background: white;
                box-shadow: 0px 0px 10px #ccc;
            }

            th, td {
                padding: 10px;
                border: 1px solid #ddd;
                text-align: center;
            }

            th {
                background-color: #007bff;
                color: white;
            }

            a {
                text-decoration: none;
                color: #007bff;
            }

            a:hover {
                text-decoration: underline;
            }

            button {
                margin-top: 10px;
                padding: 10px 15px;
                background-color: #007bff;
                color: white;
                border: none;
                cursor: pointer;
            }

            button:hover {
                background-color: #0056b3;
            }

            .actions {
                display: flex;        
                justify-content: center; 
                gap: 50px;

            }

            .actions a {

                padding: 5px 10px;
                border-radius: 5px;
                color: black;
                text-decoration: none;
                font-size: 14px;
            }

            .actions a:hover {
                color: red;
                text-decoration: none;
                font-size: 14px;
            }


        </style>
    </head>
    <body>

        <h2>Student List</h2>
        <form action="getStudentListServlet" method="post">
            <table>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Gender</th>
                    <th>DOB</th>
                    <th>Actions</th>
                </tr>

                <c:forEach items="${studentListAll}" var="student">
                    <tr>
                        <td>${student.getId()}</td>
                        <td>${student.getName()}</td>
                        <td>${student.getGender()}</td>
                        <td>${student.getDob()}</td>
                        <td class="actions">
                            <a href="editStudentServlet?id=${student.getId()}" class="edit-btn">Edit</a>
                            <a href="deleteStudentServlet?id=${student.getId()}" class="delete-btn">Delete</a>
                        </td>
                    </tr>
                </c:forEach>

            </table>
        </form>

        <br>
        <a href="addStudent.jsp"><button>Add New Student</button></a>
    </body>
</html>

