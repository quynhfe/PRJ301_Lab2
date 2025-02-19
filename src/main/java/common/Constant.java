/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package common;

/**
 *
 * @author ADMIN
 */
public class Constant {

    public static final String STUDENT_SELECT_ALL = "SELECT * FROM Students";

    public static final String STUDENT_ADD = "insert into Students(Name,Gender,DOB) values (?,?,?)";

    public static final String STUDENT_DELETE = "DELETE FROM Students WHERE id = ?";

    public static final String STUDENT_UPDATE
            = "UPDATE Students SET name = ?, Gender = ?, DOB =? WHERE ID = ?";

//    public static final String PROC_ADDStudent = "{ call addCustomer(?)}";
//
//    public static final String PROC_DELETEStudent = "{ call deleteCustomer(?)}";
//
//    public static final String PROC_UPDATEStudent = "{ call updateCustomer(?,?)}";
}
