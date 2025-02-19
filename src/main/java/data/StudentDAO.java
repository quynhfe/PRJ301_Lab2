//package data;
//
//import java.sql.Connection;
//import java.sql.PreparedStatement;
//import java.sql.ResultSet;
//import java.sql.SQLException;
//import java.util.ArrayList;
//import java.util.List;
//import model.Student;
//
//public class StudentDAO {
//
//    public static void deleteStudent(int id) {
//        ConnectionPool pool = ConnectionPool.getInstance();
//        Connection connection = pool.getConnection();
//        String sqlString = "DELETE FROM Students WHERE id=?";
//        PreparedStatement ps = null;
//
//        try {
//            ps = connection.prepareStatement(sqlString);
//            ps.setInt(1, id);
//            ps.executeUpdate();
//        } catch (SQLException e) {
//            System.out.println(e);
//        } finally {
//            DBUtils.closePreparedStatement(ps);
//            pool.freeConnection(connection);
//        }
//    }
//
//    public static void addStudent(Student student) {
//        ConnectionPool pool = ConnectionPool.getInstance();
//        Connection connection = pool.getConnection();
//        String sqlString = "INSERT INTO Students (Name, Gender, DOB) VALUES (?, ?, ?)";
//        PreparedStatement ps = null;
//
//        try {
//            ps = connection.prepareStatement(sqlString);
//            ps.setString(1, student.getName());
//            ps.setString(2, student.getGender());
//            ps.setDate(3, new java.sql.Date(student.getDob().getTime()));
//            ps.executeUpdate();
//        } catch (SQLException e) {
//            System.out.println(e);
//        } finally {
//            DBUtils.closePreparedStatement(ps);
//            pool.freeConnection(connection);
//        }
//    }
//
//    public static List<Student> getStudents() {
//        List<Student> students = new ArrayList<>();
//        ConnectionPool pool = ConnectionPool.getInstance();
//        Connection connection = pool.getConnection();
//        String sqlString = "SELECT * FROM Students";
//        PreparedStatement ps = null;
//        ResultSet rs = null;
//
//        try {
//            ps = connection.prepareStatement(sqlString);
//            rs = ps.executeQuery();
//            while (rs.next()) {
//                int id = rs.getInt("ID");
//                String name = rs.getString("Name");
//                String gender = rs.getString("Gender");
//                java.sql.Date dob = rs.getDate("DOB");
//
//                Student student = new Student(id, name, gender, dob);
//                students.add(student);
//            }
//        } catch (SQLException e) {
//            System.out.println(e);
//        } finally {
//            DBUtils.closeResultSet(rs);
//            DBUtils.closePreparedStatement(ps);
//            pool.freeConnection(connection);
//        }
//        return students;
//    }
//
//    public static Student getStudent(int id) {
//        Student student = null;
//        ConnectionPool pool = ConnectionPool.getInstance();
//        Connection connection = pool.getConnection();
//        String sqlString = "SELECT * FROM Students WHERE ID=?";
//        PreparedStatement ps = null;
//        ResultSet rs = null;
//
//        try {
//            ps = connection.prepareStatement(sqlString);
//            ps.setInt(1, id);
//            rs = ps.executeQuery();
//            if (rs.next()) {
//                String name = rs.getString("Name");
//                String gender = rs.getString("Gender");
//                java.sql.Date dob = rs.getDate("DOB");
//
//                student = new Student(id, name, gender, dob);
//            }
//        } catch (SQLException e) {
//            System.out.println(e);
//        } finally {
//            DBUtils.closeResultSet(rs);
//            DBUtils.closePreparedStatement(ps);
//            pool.freeConnection(connection);
//        }
//        return student;
//    }
//
//    public static void updateStudent(Student student) {
//        ConnectionPool pool = ConnectionPool.getInstance();
//        Connection connection = pool.getConnection();
//        String sqlString = "UPDATE Students SET Name=?, Gender=?, DOB=? WHERE ID=?";
//        PreparedStatement ps = null;
//
//        try {
//            ps = connection.prepareStatement(sqlString);
//            ps.setString(1, student.getName());
//            ps.setString(2, student.getGender());
//            ps.setDate(3, new java.sql.Date(student.getDob().getTime()));
//            ps.setInt(4, student.getId());
//            ps.executeUpdate();
//        } catch (SQLException e) {
//            System.out.println(e);
//        } finally {
//            DBUtils.closePreparedStatement(ps);
//            pool.freeConnection(connection);
//        }
//    }
//    
//    public static void main(String[] args) {
//        
//        List<Student> lists = StudentDAO.getStudents();
//        for( Student s : lists){
//            System.out.println(s);
//        }
//    }
//}
