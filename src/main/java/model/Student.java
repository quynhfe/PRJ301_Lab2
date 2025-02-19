/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.sql.Date;



/**
 *
 * @author ADMIN
 */
public class Student {
    private int id; 
    private String name;
    private String gender;
    private Date dob;

    // Constructor
    public Student() {}

    public Student(String name, String gender, Date dob) {
        this.name = name;
        this.gender = gender;
        this.dob = dob;
    }

    public Student(int id, String name, String gender, Date dob) {
        this.id = id;
        this.name = name;
        this.gender = gender;
        this.dob = dob;
    }

    // Getter và Setter
    public int getId() {
        return id;
    }

    public void setId(int id) { 
        this.id = id; 
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public Date getDob() {
        return dob;
    }

    public void setDob(Date dob) {
        this.dob = dob;
    }

    @Override
    public String toString() {
        return "Student{" + "id=" + id + ", name=" + name + ", gender=" + gender + ", dob=" + dob + '}';
    }
    
    
}
