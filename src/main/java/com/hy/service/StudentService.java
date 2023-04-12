package com.hy.service;


import com.hy.pojo.Student;

import java.util.List;

public interface StudentService {

    List<Student> getAll();

    int addStudent(Student student);

    Student getStudent(Integer id);

    int deleteByPrimaryKey(Integer id);

    int updateStudent(Student students);


}

