package com.hy.dao;

import com.github.pagehelper.Page;
import com.hy.pojo.Student;
import java.util.List;

public interface StudentMapper {
    int deleteByPrimaryKey(Integer id);

    int addStudent(Student student);

    int insert(Student record);

    int insertSelective(Student record);

    Student selectByPrimaryKey(Integer id);

    List<Student> selectAll();

    int updateByPrimaryKey(Student record);

    int updateStudent(Student students);


}