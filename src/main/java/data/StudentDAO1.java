/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package data;

import common.Constant;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.time.LocalDate;
import java.util.ArrayList;
import model.Student;

/**
 *
 * @author ADMIN
 */
public class StudentDAO1 {

    public ArrayList<Student> getAllStudent() {
        ArrayList<Student> Students = new ArrayList<>();
        try (PreparedStatement ps = DBContext.getConnection()
                .prepareStatement(Constant.STUDENT_SELECT_ALL)) {
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                int studentId = rs.getInt("ID");
                String studentName = rs.getNString("Name");
                String studentGender = rs.getNString("Gender");
                Date studentDOB = rs.getDate("DOB");
                Students.add(new Student(studentId, studentName, studentGender, studentDOB));
            }
            return Students;
        } catch (Exception e) {
            System.out.println("Error Student DAO listAll in ");
            e.printStackTrace();
        }
        return null;
    }

    public boolean addStudent(Student c) {
        boolean check = false;
        try (PreparedStatement ps = DBContext
                .getConnection()
                .prepareStatement(Constant.STUDENT_ADD)) {
            ps.setString(1, c.getName());
            ps.setString(2, c.getGender());
            ps.setDate(3, c.getDob());
            int result = ps.executeUpdate();
            if (result > 0) {
                check = true;
            }
        } catch (Exception e) {
            System.out.println("Error Student DAO addStudent");
            e.printStackTrace();
        }
        return check;
    }

    public Student getStudentById(int id) {
        ArrayList<Student> students = getAllStudent();
        for (Student s : students) {
            if (s.getId() == id) {
                return s;
            }
        }
        return null;
    }

    public boolean updateStudent(Student c) {
        boolean check = false;
        try (PreparedStatement ps = DBContext
                .getConnection()
                .prepareStatement(Constant.STUDENT_UPDATE)) {
            ps.setString(1, c.getName());
            ps.setString(2, c.getGender());
            ps.setDate(3, c.getDob());
            ps.setInt(4, c.getId());
            int result = ps.executeUpdate();
            if (result > 0) {
                check = true;
            }
        } catch (Exception e) {
            System.out.println("Error Student DAO addStudent");
            e.printStackTrace();
        }
        return check;
    }

    public boolean deleteStudent(int studentid) {
        boolean check = false;
        try (PreparedStatement ps = DBContext
                .getConnection()
                .prepareStatement(Constant.STUDENT_DELETE)) {
            ps.setInt(1, studentid);
            int result = ps.executeUpdate();
            if (result > 0) {
                check = true;
            }
        } catch (Exception e) {
            System.out.println("Error Student DAO addStudent");
            e.printStackTrace();
        }
        return check;
    }

//	public boolean procAddStudent(Student c) {
//		boolean check = false;
//		try (CallableStatement ps = DBContext
//				.getConnection()
//				.prepareCall(Constant.PROC_ADDStudent)) {
//			ps.setNString(1,c.getName());
//			int result = ps.executeUpdate();
//			if(result > 0) {
//				check = true;
//			}
//		} catch (Exception e) {
//			System.out.println("Error Student DAO procAddStudent");
//			e.printStackTrace();
//		}
//		return check;
//	}
//	public boolean procDeleteStudent(int StudentId) {
//		boolean check = false;
//		try (CallableStatement ps = DBContext
//				.getConnection()
//				.prepareCall(Constant.PROC_DELETEStudent)) {
//			ps.setInt(1,StudentId);
//			int result = ps.executeUpdate();
//			if(result > 0) {
//				check = true;
//			}
//		} catch (Exception e) {
//			System.out.println("Error Student DAO proc delete Student");
//			e.printStackTrace();
//		}
//		return check;
//	}
//	public boolean procUpdateStudent(Student c) {
//		boolean check = false;
//		try (CallableStatement ps = DBContext
//				.getConnection()
//				.prepareCall(Constant.PROC_UPDATEStudent)) {
//			ps.setInt(1,c.getId());
//			ps.setNString(2,c.getName());
//			int result = ps.executeUpdate();
//			if(result > 0) {
//				check = true;
//			}
//		} catch (Exception e) {
//			System.out.println("Error Student DAO proc update Student");
//			e.printStackTrace();
//		}
//		return check;
//	}
    public static void main(String[] args) {
        StudentDAO1 cd = new StudentDAO1();
        ArrayList<Student> students = new ArrayList<Student>();
//		students = cd.getAllStudent();
//		for(Student c : students) {
//			System.out.println(c.toString());
//		}
        String dateString = "2003-08-26";
        LocalDate localDate = LocalDate.parse(dateString);
        // Chuyển đổi LocalDate thành java.sql.Date
        Date sqlDate = Date.valueOf(localDate);
        Student e = new Student(2, "Tu", "Female", sqlDate);
        cd.updateStudent(e);
        if (cd.updateStudent(e)) {
            System.out.println("yes");
        } else {
            System.out.println("no");
        }
        cd.deleteStudent(2);
        if (cd.updateStudent(e)) {
            System.out.println("yes");
        } else {
            System.out.println("no");
        }
    }
}
